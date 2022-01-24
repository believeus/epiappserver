package com.epidial.controller.admin;

import com.alibaba.fastjson.JSONObject;
import com.epidial.bean.Dnakit;
import com.epidial.bean.Udata;
import com.epidial.dao.epi.DnakitDao;
import com.epidial.dao.epi.UdataDao;
import com.epidial.serivce.MailService;
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
    @Resource
    private MailService mailService;
    @RequestMapping("/admin/age/view")
    public ModelAndView view(int idx, int size) {
        ModelAndView modelView = new ModelAndView();
        List<Udata> databox = udataDao.findAll(idx, size);
        modelView.setViewName("/WEB-INF/back/age-list.jsp");
        modelView.addObject("databox", databox);
        return modelView;
    }

    @ResponseBody
    @RequestMapping("/admin/age/update")
    public String update(int id, String v) {
        Udata udata = udataDao.findBy("id", id);
        udata.setNaturally(Float.parseFloat(v.split("@")[0]));
        udata.setBiological(Float.parseFloat(v.split("@")[1]));
        String status = v.split("@")[2];
        udata.setAccuracy(v.split("@")[3]);
        //if (!status.equals("in-transit") && udata.getDetectTime() == 0) {
            //udata.setDetectTime(System.currentTimeMillis());
        if(status.equals("pending")){
            udata.setPendingTime(System.currentTimeMillis());
            udata.setDetectTime(System.currentTimeMillis());
            String labevent= "PARCEL_RECEIVED";
            udata.setLabevent(labevent);
        }else if(status.equals("in-transit")){
            String labevent= "POST_FROM_LAB";
            udata.setLabevent(labevent);
        }else if(status.equals("processing")){
            udata.setDetectTime(System.currentTimeMillis());
            String labevent= "SEQUENCING";
            udata.setLabevent(labevent);
        }else if(status.equals("ready")){
            udata.setDetectTime(System.currentTimeMillis());
            String labevent= "Completed";
            udata.setLabevent(labevent);
        }else if (status.equals("ready")&&udata.getAllow()==1){
            String labevent= "Completed";
            udata.setLabevent(labevent);
            new Thread(new Runnable() {
                @Override
                public void run() {
                    String title="User test results";
                    String message="<html>" +
                            "<head></head>" +
                            "<body>" +
                            "<p>Dear distinguished user</p>" +
                            "<p style=\"color:#0071bc\">Your Epigenetic age test result has been uploaded successfully.Please Go to your app and click \"My Report\", then click the kit whose status has changed to \"Test Completed\" to view your report.</p>" +
                            "<p>Thank you very much for your patience</p>" +
                            "<div style=\"color:grey\">" +
                            "<div>Best regards</div>" +
                            "<div>HKG Epitherapeutics - Hong Kong Unit 119, 1/F Biotech Centre 2, 11 Science Park West Avenue Hong Kong Science Park, Shatin, NT, Hong Kong, HK,</div>" +
                            "<div>https://www.hkgepitherapeutics.com</div>" +
                            "<div>(+852) 2354 8297</div>" +
                            "<div>info@hkgepitherapeutics.com</div>" +
                            "<div>2020 All rights reserved</div>" +
                            "</div>" +
                            "</body>" +
                            "</html>";
                    mailService.sendMail(title,message,udata.getEmail());
                }
            }).start();
        }
        udata.setStatus(status);
        udataDao.update(udata);
        return "success";
    }


    @ResponseBody
    @RequestMapping("/admin/age/del")
    public String del(int id) {
        udataDao.delete("id", id);
        return "success";
    }

    @RequestMapping("/admin/age/addView")
    public String addView() {
        return "/WEB-INF/back/age-add.jsp";
    }

    @ResponseBody
    @RequestMapping("/admin/age/save")
    public String save(Udata udata) {
        Dnakit dnakit = dnakitDao.find("barcode", udata.getBarcode());
        if (dnakit != null) {
            dnakitDao.deleteBy("barcode", udata.getBarcode());
            udataDao.save(udata);
            return "success";
        }
        return "error";
    }

    @RequestMapping("/admin/age/bybarcode")
    @ResponseBody
    public String getbybarcode(String barcode) {
        List<Udata> udataList = udataDao.getBybarcode(barcode);
        return JSONObject.toJSONString(udataList);
    }


}
