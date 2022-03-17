package com.epidial.controller;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.utils.StringUtils;
import com.epidial.bean.*;
import com.epidial.dao.epi.*;
import com.epidial.serivce.MailService;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.*;

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
    @Resource
    private MailService mailService;

    @Autowired
    ServletContext context;
    private HashMap<String,String> locales=new HashMap<String,String>();
    {
        locales.put("hk","hk");
        locales.put("en","en");
        locales.put("fr","fr");
        locales.put("fr-be","fr");
        locales.put("fr-ca","fr");
        locales.put("fr-ch","fr");
        locales.put("fr-lu","fr");
        locales.put("ru","ru");
        locales.put("ru-mo","ru");
        locales.put("ru_RU","ru");
        locales.put("pt","pt");
        locales.put("pt-br","pt");
        locales.put("zh-Hans","hk");
        locales.put("zh-Hant","hk");
        locales.put("zh-Hans-CN","hk");
        locales.put("zh-Hant-CN","hk");
        locales.put("zh-TW-CN","hk");
        locales.put("zh-TW","hk");
        locales.put("es","es");
        locales.put("es-mx","es");
        locales.put("es","es");
        locales.put("es-cr","es");
        locales.put("es-pa","es");
        locales.put("es-do","es");
        locales.put("es-ve","es");
        locales.put("es-co","es");
        locales.put("es-pe","es");
        locales.put("es-ar","es");
        locales.put("es-ec","es");
        locales.put("es-cl","es");
        locales.put("es-uy","es");
        locales.put("es-py","es");
        locales.put("es-bo","es");
        locales.put("es-sv","es");
        locales.put("es-hn","es");
        locales.put("es-ni","es");
        locales.put("es-pr","es");
    }
    private  Map<String,String> maplabevent =new HashMap<String,String>();
    {
        maplabevent.put("POST_FROM_LAB","in-transit");
        maplabevent.put("PARCEL_RECEIVED","pending");
        maplabevent.put("REGISTERED_IN_LIMS","pending");
        maplabevent.put("WAITING_DNA_PREP","processing");
        maplabevent.put("SEQUENCING","processing");
        maplabevent.put("Completed","ready");
    }
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
    @RequestMapping(value = "/user/report/findAllNB")
    public List<Udata> findAllNB() {
        List<Udata> ntrLtBioUsers = udataDao.findAllNB();
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

    @ResponseBody
    @RequestMapping("/user/secretKey/sendmail")
    public String keyMail(String privatekey,String publickey,String mail) {
        try {
            String message="<!DOCTYPE html><html><head></head><body>" +
                    "<div>" +
                    "<div align=\"center\">" +
                    "<div style=\"margin-left: 8px; margin-top: 8px; margin-bottom: 8px; margin-right: 8px;\">" +
                    "<br>" +
                    "<div style=\"word-break: break-all;box-sizing:border-box;text-align:center;min-width:320px; max-width:660px; border:1px solid #f6f6f6; background-color:#f7f8fa; margin:auto; padding:20px 0 30px; font-family:'helvetica neue',PingFangSC-Light,arial,'hiragino sans gb','microsoft yahei ui','microsoft yahei',simsun,sans-serif\">" +
                    " <table style=\"width:100%;font-weight:300;margin-bottom:10px;border-collapse:collapse\">" +
                    " <tbody>" +
                    "<tr style=\"font-weight:300\">" +
                    "<td style=\"width:3%;max-width:30px;\"></td>" +
                    "<td style=\"max-width:600px;\">" +
                    " <p style=\"height:2px;background-color: #00a4ff;border: 0;font-size:0;padding:0;width:100%;margin-top:20px;\"></p>" +
                    "<div style=\"background-color:#fff; padding:23px 0 20px;box-shadow: 0px 1px 1px 0px rgba(122, 55, 55, 0.2);text-align:left;\">" +
                    "<table style=\"width:100%;font-weight:300;margin-bottom:10px;border-collapse:collapse;text-align:left;\">" +
                    " <tbody>" +
                    " <tr style=\"font-weight:300\">" +
                    "<td style=\"width:3.2%;max-width:30px;\"></td>" +
                    " <td style=\"max-width:480px;text-align:left;\">" +
                    "<p  style=\"font-size:14px;color:#333; line-height:24px; margin:0;\">Dear Epi-Aging user,</p>" +
                    "<p  style=\"line-height: 24px; margin: 6px 0px 0px; overflow-wrap: break-word; word-break: break-all;\"><span style=\"color: rgb(51, 51, 51); font-size: 14px;\">These keys are very important to keep your data safe in epiAge APP, please keep them well in case you need them again.</span></p>" +
                    "<p  style=\"font-size:14px;color:#333; line-height:24px; margin:0;\">private key:"+privatekey+"</p>" +
                    "<p  style=\"font-size:14px;color:#333; line-height:24px; margin:0;\">public key:"+publickey +"</p>" +
                    "<dl style=\"font-size: 14px; color: rgb(51, 51, 51); line-height: 18px;\">" +
                    "<dd style=\"margin: 0px 0px 6px; padding: 0px; font-size: 12px; line-height: 22px;\">" +
                    "<p style=\"font-size: 14px; line-height: 26px; word-wrap: break-word; word-break: break-all; margin-top: 32px;\">Best,<br><strong>IT Support Team</strong></p>" +
                    "<p  style=\"font-size:14px;color:#333; line-height:24px; margin:0;\">info@hkgepitherapeutics.com</p>" +
                    "<p  style=\"font-size:14px;color:#333; line-height:24px; margin:0;\">(+852) 2354 8297</p>" +
                    " </dd>" +
                    "</dl>" +
                    "</td>" +
                    "<td style=\"width:3.2%;max-width:30px;\"></td>" +
                    " </tr>" +
                    "</tbody>" +
                    "</table>" +
                    "</div>" +
                    "<div id=\"cTMail-copy\" style=\"text-align:center; font-size:12px; line-height:18px; color:#999\">" +
                    " <table style=\"width:100%;font-weight:300;margin-bottom:10px;border-collapse:collapse\">" +
                    "<tbody>" +
                    "<tr style=\"font-weight:300\">" +
                    "<td style=\"width:3.2%;max-width:30px;\"></td>" +
                    "<td style=\"max-width:540px;\">" +
                    "<p style=\"text-align:center; margin:20px auto 14px auto;font-size:12px;color:#999;\">This is a system email, please do not reply.</p>" +
                    "<p style=\"text-align:center; margin:20px auto 14px auto;font-size:12px;color:#999;\">2022 All rights reserved</p>" +
                    "<td style=\"width:3.2%;max-width:30px;\"></td>" +
                    "</tr>" +
                    "</tbody>" +
                    " </table>" +
                    "</div>" +
                    "</td>" +
                    "<td style=\"width:3%;max-width:30px;\"></td>" +
                    "</tr>" +
                    " </tbody>" +
                    "</table>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</div>" +
                    "</body></html>";
            String data=mailService.sendMail("[DO NOT REPLY]",message,mail);
            return "success";
        }catch (Exception e){
            return "fail";
        }
    }


    @ResponseBody
    @RequestMapping("/user/report/findDataByUuid")
    public List<Udata> findDataByUuid(String uuid){
         List<Udata> box=udataDao.findByUUID(uuid);
         return  box;
    }

    @ResponseBody
    @RequestMapping("/user/report/upbarcode")
    public Udata upbarcode(String barcode, String uuid) {
        System.out.println("upload barcode:"+barcode+" uuid:"+uuid);
        //如果AgeManager中已经存在
        Dnakit dnakit = dnakitDao.find("barcode", barcode);
        //直接输入barcode
        if (dnakit != null) {
            //String eventtype = StringUtils.isEmpty(dnakit.getEventtype())?"POST_FROM_LAB":dnakit.getEventtype();
            System.out.println("Double.parseDouble(dnakit.getBiological()):---> "+Double.parseDouble(dnakit.getBiological()));
            System.out.println("dnakit.getEventtype()---> "+dnakit.getEventtype());
            String eventtype = (!StringUtils.isEmpty(dnakit.getEventtype()))?dnakit.getEventtype():Double.parseDouble(dnakit.getBiological())>0?"Completed":"POST_FROM_LAB";
            System.out.println("eventtype---> "+eventtype);
            String status = maplabevent.get(eventtype);
            //RECEIVED_AT_LAB PARCEL_RECEIVED REGISTERED_IN_LIMS WAITING_DNA_PREP SEQUENCING Completed
            Udata data = new Udata();
            data.setUuid(uuid);
            data.setStatus(status);
            data.setLabevent(eventtype);
            data.setBarcode(barcode);
            data.setCreateTime(System.currentTimeMillis());
            data.setDetectTime(StringUtils.isEmpty(dnakit.getDetection())?0:Long.parseLong(dnakit.getDetection()));
            data.setUploadTime(System.currentTimeMillis());
            data.setNaturally(0);
            data.setAccuracy(dnakit.getAccuracy());
            data.setBiological(Double.parseDouble(dnakit.getBiological()));
            data.setAllow((byte)0);
            udataDao.save(data);
            dnakitDao.delete(dnakit.getId());
             new Thread(new Runnable() {
                @Override
                public void run() {
                    String registertime = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date());
                    String message="<!DOCTYPE html><html><head></head><body><div>the following barcode has registered</div><div>barcode number:"+barcode+"</div><div>Register time:"+registertime+"</div></body></html>";
                    mailService.sendMail("[DO NOT REPLY]",message,"do_not_reply@hkgepitherapeutics.com");
                }
            }).start();

        }
        Udata data = udataDao.find("uuid", uuid, "barcode", barcode);
        if(data==null){
            System.out.println("invalid barcode:"+barcode+" uuid:"+uuid);
            return new Udata("", "invalid");
        }else {
            data.setAllow((byte) 0);
            udataDao.update(data);
            return data;
        }
    }
    @ResponseBody
    @RequestMapping("/user/age/upmyage")
    public String upmyage(String uuid,String barcode,double myage){
        Udata udata = udataDao.find("uuid", uuid, "barcode", barcode);
        udata.setNaturally(myage);
        udataDao.update(udata);
        return "success";
    }
    @ResponseBody
    @RequestMapping("/user/report/{uuid}/{barcode}/{locale}/{userage}/buildPDF")
    public String buildPDF(@PathVariable("uuid") String uuid, @PathVariable("barcode") String barcode,@PathVariable("locale") String locale,@PathVariable("userage")String userage, HttpServletResponse response) {
        try {
            Properties properties = new Properties();
            ClassLoader classLoader = this.getClass().getClassLoader();
            FileInputStream in = new FileInputStream(classLoader.getResource("application.properties").getPath());
            properties.load(in);
            String os = System.getProperty("os.name");
            String phantomjsexePath = getClass().getClassLoader().getResource(os.toLowerCase().startsWith("win") ? "window-x64-phantomjs.exe" : "linux-x64-phantomjs.exe").getPath();
            String phantomjsexe = os.toLowerCase().startsWith("win") ? phantomjsexePath.substring(1) : phantomjsexePath;
            String rasterizejsPath = getClass().getClassLoader().getResource("rasterize.js").getPath();
            String rasterizejs = os.toLowerCase().startsWith("win") ? rasterizejsPath.substring(1) : rasterizejsPath;
            String url = properties.getProperty("host") + "user/report/" + uuid + "/" + barcode + "/"+locale+"/"+userage+"/dnaview.jhtml";
            String filename = properties.getProperty("pdfpath") + "biological-age-barcode-" + barcode + "-"+locale+".pdf";
            String cmd = (os.toLowerCase().startsWith("win") ? "cmd /c " : "") + phantomjsexe + " " + rasterizejs + " " + url + " " + filename;
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

    @RequestMapping("/user/report/{barcode}/{locale}/pdf")
    public void pdf(@PathVariable("barcode") String barcode,@PathVariable("locale") String locale, HttpServletResponse response) {
        try {
            Properties properties = new Properties();
            ClassLoader classLoader = this.getClass().getClassLoader();
            FileInputStream in = new FileInputStream(classLoader.getResource("application.properties").getPath());
            properties.load(in);
            response.setHeader("Content-Disposition", "attachment;fileName=" + URLEncoder.encode("biological-age-barcode-" + barcode + "-"+locale+".pdf", "UTF-8"));
            String filename = properties.getProperty("pdfpath") + "biological-age-barcode-" + barcode + "-"+locale+".pdf";
            File file=new File(filename);
            if (file.exists()) {
                InputStream fileIn = new FileInputStream(filename);
                OutputStream fileOut = response.getOutputStream();
                byte[] buff = new byte[1024];
                int len = 0;
                while ((len = fileIn.read(buff)) != -1) {
                    fileOut.write(buff, 0, len);
                }
                fileOut.close();
                fileIn.close();
            }
            in.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("/user/report/{uuid}/{barcode}/{locale}/{userage}/dnaview")
    public ModelAndView dnaview(@PathVariable String uuid, @PathVariable String barcode,@PathVariable String locale,@PathVariable String userage) {
        ModelAndView modelView = new ModelAndView();
        List<Udata> ntrGtBioUsers = udataDao.findNtrGtBio();//查找自然年龄大于生物学年龄的用户
        List<Udata> ntrLtBioUsers = udataDao.findNtrLtBio();//查找自然年龄小于生物学年龄的用户
        Udata data = udataDao.find("uuid", uuid, "barcode", barcode);
        modelView.addObject("ntrGtBioUsers", JSON.toJSONString(ntrGtBioUsers));
        modelView.addObject("ntrLtBioUsers", JSON.toJSONString(ntrLtBioUsers));
        modelView.addObject("data", data);
        modelView.addObject("userage",userage);
        String lang = locales.get(locale);
        if (lang==null||lang.length()==0){
            modelView.setViewName("/WEB-INF/front/dnaview-en.jsp");
            return modelView;
        }else {
            modelView.setViewName("/WEB-INF/front/dnaview-"+lang+".jsp");
            return modelView;
        }
    }
    @RequestMapping("/user/report/{uuid}/{barcode}/emailView")
    public  ModelAndView emailView(@PathVariable String uuid, @PathVariable String barcode){
        ModelAndView modelView = new ModelAndView();
        Udata data = udataDao.find("uuid", uuid, "barcode", barcode);
        modelView.addObject("data", data);
        modelView.setViewName("/WEB-INF/back/notifyEmail.jsp");
        return modelView;
    }
    @ResponseBody
    @RequestMapping("/user/report/sendmail")
    public String sendmail(String email,String title,String content){
        return mailService.sendMail(title, content, email);
    }
    @ResponseBody
    @RequestMapping("/user/report/{uuid}/{email}/{barcode}/{allow}/notify")
    public String notifyEmail(@PathVariable String uuid,@PathVariable String email,@PathVariable String barcode,@PathVariable byte allow){
        Udata data = udataDao.find("uuid", uuid, "barcode", barcode);
        if (data!=null){
            data.setEmail(email);
            data.setAllow(allow);
            udataDao.update(data);
            return "success";
        }
        return "error";
    }
    @ResponseBody
    @RequestMapping("/user/report/{uuid}/{barcode}/findEmail")
    public Udata findEmail(@PathVariable String uuid,@PathVariable String barcode){
        Udata data = udataDao.find("uuid", uuid, "barcode", barcode);
        return  data;
    }
}
