package com.epidial.controller;

import com.alibaba.fastjson.JSON;
import com.epidial.bean.*;
import com.epidial.dao.epi.*;
import com.epidial.serivce.MailService;
import com.epidial.utils.AmazonS3;
import com.epidial.utils.Amazondb;
import org.apache.commons.io.FileUtils;
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

    @ResponseBody
    @RequestMapping("/user/report/findDataByUuid")
    public List<Udata> findDataByUuid(String uuid){
         List<Udata> box=udataDao.findByUUID(uuid);
         return  box;
    }

    @ResponseBody
    @RequestMapping("/user/report/upbarcode")
    public Udata upbarcode(String barcode, String uuid) {
        //如果AgeManager中已经存在
        Dnakit dnakit = dnakitDao.find("barcode", barcode);
        //直接输入barcode
        if (dnakit != null) {
            Udata data = new Udata(uuid, "in-transit");
            data.setBarcode(barcode);
            data.setDetectTime(0);
            data.setUploadTime(System.currentTimeMillis());
            data.setNaturally(0);
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
            //let pdf save in aws s3 bucker
            String bucketName=properties.getProperty("bucketName");
            byte[] fdata = FileUtils.readFileToByteArray(new File(filename));
            AmazonS3.putS3Object(bucketName,"biological-age-barcode-" + barcode + "-"+locale+".pdf",fdata);
            //put the data to dynamnodb
            HashMap<String, String> mdata = new HashMap<String, String>();
            mdata.put("barcodeId", barcode);
            mdata.put("pdfname","biological-age-barcode-" + barcode + "-"+locale+".pdf");
            mdata.put("status","create");
            mdata.put("url",properties.getProperty("host")+"/user/report/"+barcode+"/"+locale+"/pdf");
            Amazondb.putItem(Amazondb.epixFlowBarcodeStatusTable,mdata);
            Udata data = udataDao.find("uuid", uuid, "barcode", barcode);
            HashMap<String, String> vdata = new HashMap<String, String>();
            vdata.put("barcodeId", barcode);
            vdata.put("epiage", String.valueOf(data.getBiological()));
            vdata.put("accuracy", "97%");
            vdata.put("expected", "45");
            Amazondb.putItem(Amazondb.epixFlowReportsTable,vdata);
            in.close();
            return exitVal == 0 ? "success" : "error";
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "error";
    }

    @RequestMapping("/user/report/{barcode}/{locale}/downloadpdf")
    public void downloadpdf(@PathVariable("barcode") String barcode,@PathVariable("locale") String locale, HttpServletResponse response) {
        try {
            Properties properties = new Properties();
            ClassLoader classLoader = this.getClass().getClassLoader();
            FileInputStream in = new FileInputStream(classLoader.getResource("application.properties").getPath());
            properties.load(in);
            response.reset();
            response.setCharacterEncoding("UTF-8");
            response.setContentType("multipart/form-data");
            response.setHeader("Content-Disposition", "attachment;fileName=" + URLEncoder.encode("biological-age-barcode-" + barcode + "-"+locale+".pdf", "UTF-8"));
            // download from
            byte[] fdata = AmazonS3.download(AmazonS3.bucketName, "biological-age-barcode-" + barcode + "-" + locale + ".pdf");
            if (fdata!=null) {
                OutputStream fileOut = response.getOutputStream();
                fileOut.write(fdata, 0, fdata.length);
                fileOut.close();
            }
            // recode into db
            HashMap<String, String> mdata = new HashMap<String, String>();
            mdata.put("barcodeId", barcode);
            mdata.put("pdfname","biological-age-barcode-" + barcode + "-"+locale+".pdf");
            mdata.put("status","dowlaod");
            mdata.put("url",properties.getProperty("host")+"/user/report/"+barcode+"/"+locale+"/pdf");
            Amazondb.putItem(Amazondb.epixFlowBarcodeStatusTable,mdata);
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
