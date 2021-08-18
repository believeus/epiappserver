package com.epidial.controller.admin;

import com.alibaba.fastjson.JSONObject;
import com.aliyuncs.utils.StringUtils;
import com.epidial.bean.Dnakit;
import com.epidial.bean.Udata;
import com.epidial.common.Page;
import com.epidial.dao.epi.DnakitDao;
import com.epidial.dao.epi.UdataDao;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
import java.util.*;

@Controller
public class DnaController {
    @Resource
    private DnakitDao dnakitDao;
    @Resource
    private UdataDao udataDao;

    @RequestMapping("/admin/dnakit/view")
    public ModelAndView view(@RequestParam(defaultValue = "1", value = "idx") int idx, @RequestParam(defaultValue = "200", value = "size") int size) {
        ModelAndView modelView = new ModelAndView();
        int idx2 = (idx - 1) * 200;
        List<Dnakit> databox = dnakitDao.paging(idx2, size);
        int c = dnakitDao.count();
        Page page = new Page();
        page.setTotalCount(c);
        page.setCurrPageNo(idx);
        page.setPageSize(size);
        modelView.addObject("page", page);
        modelView.setViewName("/WEB-INF/back/dna-list.jsp");
        modelView.addObject("databox", databox);
        return modelView;
    }

    @RequestMapping("/admin/dnakit/addview")
    public ModelAndView addview() {
        return new ModelAndView("/WEB-INF/back/dnakit-add.jsp");
    }


    @ResponseBody
    @RequestMapping("/admin/dnakit/save")
    public String save(Dnakit dnakit) {
        /**Begin: wuqiwei:2021/7/2 去库存表里查**/
        Dnakit val = dnakitDao.find("barcode", dnakit.getBarcode());
        /**End: wuqiwei:2021/7/2 去库存表里查**/
        /**Begin: wuqiwei:2021/7/2 去报告表里查**/
        Udata udata = udataDao.findBy("barcode", dnakit.getBarcode());
        /**End: wuqiwei:2021/7/2 去报告表里查**/
        if (val == null && udata == null) {
            dnakit.setBiological("0");
            dnakit.setAccuracy("0");
            dnakit.setExpage("0");
            dnakit.setCreatetime(System.currentTimeMillis());
            dnakitDao.save(dnakit);
        }
        return "success";
    }

    @ResponseBody
    @RequestMapping("/admin/dnakit/update")
    public String update(Dnakit dnakit) {
        dnakitDao.update(dnakit);
        return "success";
    }

    @ResponseBody
    @RequestMapping("/admin/dnakit/del")
    public String del(int id) {
        dnakitDao.delete(id);//删除用户
        return "success";
    }

    /*
     * 根据barcode 查看
     * */
    @RequestMapping("/admin/dnakit/getbybarcode")
    @ResponseBody
    public String getBybarcode(String barcode) {
        List<Dnakit> dnakitList = dnakitDao.getBybarcode(barcode);
        return JSONObject.toJSONString(dnakitList);
    }

    @RequestMapping(value = "/admin/dnakit/cvsbarcode")
    public String cvsbarcode(){
        return "/WEB-INF/back/cvsbarcode.jsp";
    }
    @RequestMapping(value = "/admin/dnakit/uploadcvs", method = RequestMethod.POST)
    public String upload(@RequestParam("file") MultipartFile file) {
        try {
            List<String> barcodes = new ArrayList<String>();
            List<Dnakit> dnakits = new ArrayList<Dnakit>();
            BufferedReader br = new BufferedReader(new InputStreamReader(file.getInputStream()));
            for (String barcode; (((barcode = br.readLine()) != null)&& (!StringUtils.isEmpty(barcode))); barcodes.add(barcode.trim())) ;
            br.close();
            List<String> dnakitbarcodes = (!barcodes.isEmpty()) ? dnakitDao.findDnakits(barcodes) : new ArrayList<String>();
            if (!dnakitbarcodes.isEmpty()) barcodes.removeAll(dnakitbarcodes);//去除在dnakit已存在的barcode
            List<String> udatabarcodes = (!barcodes.isEmpty()) ? udataDao.findUdatas(barcodes) : new ArrayList<String>();
            if (!udatabarcodes.isEmpty()) barcodes.removeAll(udatabarcodes);//去除在udata已存在的barcode
            for (Iterator<String> it = barcodes.iterator(); it.hasNext(); ) {
                Dnakit dnakit = new Dnakit();
                dnakit.setName("DNA Methylation Kit");
                dnakit.setBarcode(it.next());
                dnakit.setCreatetime(System.currentTimeMillis());
                dnakit.setBiological("0");
                dnakit.setExpage("0");
                dnakit.setAccuracy("98");
                dnakits.add(dnakit);
                System.out.println("insert barcode:" + dnakit.getBarcode());
            }
            if (!dnakits.isEmpty()) {
                dnakitDao.saveDnakits(dnakits);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/admin/dnakit/view.jhtml";
    }


}
