package com.epidial.controller;

import com.alibaba.fastjson.JSON;
import com.epidial.bean.*;
import com.epidial.dao.epi.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.List;
import java.util.Properties;

@Controller
@CrossOrigin
@RequestMapping
public class ReportController {

    @Resource
    private UserDao userDao;
    @Resource
    private UdataDao udataDao;
    @Resource
    private DnakitDao dnakitDao;

    @Autowired
    ServletContext context;

    @ResponseBody
    @RequestMapping(value = "/user/report/findNtrGtBio")
    public List<Udata> findNtrGtBio() {
        List<Udata> ntrGtBioUsers = udataDao.findNtrGtBio();//查找自然年龄大于生物学年龄的用户
        return ntrGtBioUsers;
    }

    @ResponseBody
    @RequestMapping(value = "/user/report/findNtrLtBio")
    public List<Udata> findNtrLtBio() {
        List<Udata> ntrLtBioUsers = udataDao.findNtrLtBio();//查找自然年龄小于生物学年龄的用户
        return ntrLtBioUsers;
    }

    @ResponseBody
    @RequestMapping(value = "/user/report/findMyAge")
    public Udata findMyAge(String uuid, String barcode) {
        return udataDao.find("uuid", uuid, "barcode", barcode);
    }


    @ResponseBody
    @RequestMapping("/user/report/status")
    public String status(String id) {
        Udata data = udataDao.findBy("id", id);
        return data.getStatus();
    }
    @RequestMapping("/user/report/findDataByUuid")
    public List<Udata> findDataByUuid(String uuid){
        return udataDao.findList("uuid",uuid);
    }

    @ResponseBody
    @RequestMapping("/user/report/upbarcode")
    public Udata upbarcode(String barcode, String uuid) {
        Dnakit dnakit = dnakitDao.find("barcode", barcode);
        //直接输入barcode
        if (dnakit != null) {
            Udata data = new Udata(uuid, "pending");
            data.setBarcode(barcode);
            data.setUploadTime(System.currentTimeMillis());
            udataDao.save(data);
            dnakitDao.delete(dnakit.getId());
        }
        Udata data = udataDao.find("uuid", uuid, "barcode", barcode);
        return (data == null) ? new Udata("", "invalid") : data;
    }

    @ResponseBody
    @RequestMapping("/user/report/{uuid}/{barcode}/buildPDF")
    public String buildPDF(@PathVariable("uuid") String uuid, @PathVariable("barcode") String barcode, HttpServletResponse response) {
        try {
            Properties properties = new Properties();
            ClassLoader classLoader = this.getClass().getClassLoader();
            FileInputStream in = new FileInputStream(classLoader.getResource("application.properties").getPath());
            properties.load(in);
            String classpath = classLoader.getResource("/").getPath().substring(1);
            String phantomjs = classpath + "window-x64-phantomjs.exe";
            String rasterize = classpath + "rasterize.js";
            String url = properties.getProperty("host") + "user/report/" + uuid + "/" + barcode + "/dnaview.jhtml";
            String filename = properties.getProperty("pdfpath") + "biological-age-barcode-" + barcode + ".pdf";
            String cmd = "cmd /c " + phantomjs + " " + rasterize + " " + url + " " + filename;
            System.out.println(cmd);
            Process proc = Runtime.getRuntime().exec(cmd);
            int exitVal = proc.waitFor(); // 阻塞当前线程，并等待外部程序中止后获取结果码
            in.close();
            return exitVal == 0 ? "success" : "error";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "error";
    }

    @RequestMapping("/user/report/{barcode}/pdf")
    public void pdf(@PathVariable("barcode") String barcode, HttpServletResponse response) {
        try {
            Properties properties = new Properties();
            ClassLoader classLoader = this.getClass().getClassLoader();
            FileInputStream in = new FileInputStream(classLoader.getResource("application.properties").getPath());
            properties.load(in);
            response.setHeader("Content-Disposition", "attachment;fileName=" + URLEncoder.encode("biological-age-barcode-" + barcode + ".pdf", "UTF-8"));
            String filename = properties.getProperty("pdfpath") + "biological-age-barcode-" + barcode + ".pdf";
            InputStream fileIn = new FileInputStream(filename);
            OutputStream fileOut = response.getOutputStream();
            byte[] buff = new byte[1024];
            int len = 0;
            while ((len = fileIn.read(buff)) != -1) {
                fileOut.write(buff, 0, len);
            }
            fileOut.close();
            fileIn.close();
            in.close();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }

    @RequestMapping("/user/report/{uuid}/{barcode}/dnaview")
    public ModelAndView dnaview(@PathVariable String uuid, @PathVariable String barcode) {
        ModelAndView modelView = new ModelAndView();
        List<Udata> ntrGtBioUsers = udataDao.findNtrGtBio();//查找自然年龄大于生物学年龄的用户
        List<Udata> ntrLtBioUsers = udataDao.findNtrLtBio();//查找自然年龄小于生物学年龄的用户
        Udata data = udataDao.find("uuid", uuid, "barcode", barcode);
        modelView.addObject("ntrGtBioUsers", JSON.toJSONString(ntrGtBioUsers));
        modelView.addObject("ntrLtBioUsers", JSON.toJSONString(ntrLtBioUsers));
        modelView.addObject("data", data);
        modelView.setViewName("/WEB-INF/front/dnaview.jsp");
        return modelView;
    }
}
