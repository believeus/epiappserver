package com.epidial.controller.admin;

import com.alibaba.fastjson.JSONObject;
import com.epidial.bean.Dnakit;
import com.epidial.bean.Udata;
import com.epidial.bean.UdataDto;
import com.epidial.dao.epi.DnakitDao;
import com.epidial.dao.epi.UdataDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class AgeController {
    @Resource
    private UdataDao udataDao;
    @Resource
    private DnakitDao dnakitDao;
    @RequestMapping("/admin/age/view")
    public ModelAndView view(int idx, int size){
        ModelAndView modelView=new ModelAndView();
        List<Udata> databox = udataDao.findAll(idx, size);
        modelView.setViewName("/WEB-INF/back/age-list.jsp");
        modelView.addObject("databox",databox);
        return  modelView;
    }

    @ResponseBody
    @RequestMapping("/admin/age/update")
    public String update(int id,String v){
        Udata udata = udataDao.findBy("id", id);
        udata.setNaturally(Float.parseFloat(v.split("@")[0]));
        udata.setBiological(Float.parseFloat(v.split("@")[1]));
        udata.setStatus(v.split("@")[2]);
        udataDao.update(udata);
        return "success";
    }


    @ResponseBody
    @RequestMapping("/admin/age/del")
    public String del(int id){
        udataDao.delete("id",id);
        return "success";
    }
    @RequestMapping("/admin/age/addView")
    public String addView(){
        return "/WEB-INF/back/age-add.jsp";
    }
    @ResponseBody
    @RequestMapping("/admin/age/save")
    public String save(Udata udata){
        Dnakit dnakit = dnakitDao.find("barcode", udata.getBarcode());
        if (dnakit!=null){
            dnakitDao.deleteBy("barcode",udata.getBarcode());
            udataDao.save(udata);
            return "success";
        }
        return "error";
    }
    @RequestMapping("/admin/age/bybarcode")
    @ResponseBody
    public String getbybarcode(String barcode){
        List<UdataDto> udataList = udataDao.getBybarcode(barcode);
        return JSONObject.toJSONString(udataList);
    }


}
