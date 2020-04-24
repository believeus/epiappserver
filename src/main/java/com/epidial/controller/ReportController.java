package com.epidial.controller;

import com.alibaba.fastjson.JSON;
import com.epidial.bean.*;
import com.epidial.dao.epi.*;
import com.epidial.serivce.MailService;
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
import java.util.HashMap;
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
    @Resource
    private MailService mailService;

    @Autowired
    ServletContext context;
    private HashMap<String,String> locales=new HashMap<String,String>();
    {
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
        return udataDao.findByUUID(uuid);
    }

    @ResponseBody
    @RequestMapping("/user/report/upbarcode")
    public Udata upbarcode(String barcode, String uuid,String email) {
        //如果AgeManager中已经存在
        Dnakit dnakit = dnakitDao.find("barcode", barcode);
        //直接输入barcode
        if (dnakit != null) {
            Udata data = new Udata(uuid, "pending");
            data.setBarcode(barcode);
            data.setUploadTime(System.currentTimeMillis());
            data.setNaturally(0);
            data.setEmail(email);
            data.setAllow((byte)0);
            udataDao.save(data);
            dnakitDao.delete(dnakit.getId());
        }
        Udata data = udataDao.find("uuid", uuid, "barcode", barcode);
        data.setEmail(email);
        data.setAllow((byte)0);
        udataDao.update(data);
        return (data == null) ? new Udata("", "invalid") : data;
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
    @RequestMapping("/user/report/{uuid}/{barcode}/{locale}/buildPDF")
    public String buildPDF(@PathVariable("uuid") String uuid, @PathVariable("barcode") String barcode,@PathVariable("locale") String locale, HttpServletResponse response) {
        try {
            Properties properties = new Properties();
            ClassLoader classLoader = this.getClass().getClassLoader();
            FileInputStream in = new FileInputStream(classLoader.getResource("application.properties").getPath());
            properties.load(in);
           String classpath = classLoader.getResource("/").getPath().substring(1);
           //Window
/*            String phantomjs = classpath + "window-x64-phantomjs.exe";
            String rasterize = classpath + "rasterize.js";
            String url = properties.getProperty("host") + "user/report/" + uuid + "/" + barcode + "/"+locale+"/dnaview.jhtml";
            String filename = properties.getProperty("pdfpath") + "biological-age-barcode-" + barcode + "-"+locale+".pdf";
            String cmd = "cmd /c " + phantomjs + " " + rasterize + " " + url + " " + filename;*/

            //linux
            String phantomjs = "phantomjs"; //phantonjs已经配置好环境变量
            String rasterize = classpath + "rasterize.js";
            String filename = properties.getProperty("pdfpath") + "biological-age-barcode-" + barcode + "-"+locale+".pdf";
            String url = properties.getProperty("host") + "user/report/" + uuid + "/" + barcode + "/"+locale+"/dnaview.jhtml";
            String cmd = phantomjs + " " + rasterize + " " + url + " " + filename;
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
    @RequestMapping("/user/report/{uuid}/{barcode}/{locale}/dnaview")
    public ModelAndView dnaview(@PathVariable String uuid, @PathVariable String barcode,@PathVariable String locale) {
        ModelAndView modelView = new ModelAndView();
        List<Udata> ntrGtBioUsers = udataDao.findNtrGtBio();//查找自然年龄大于生物学年龄的用户
        List<Udata> ntrLtBioUsers = udataDao.findNtrLtBio();//查找自然年龄小于生物学年龄的用户
        Udata data = udataDao.find("uuid", uuid, "barcode", barcode);
        modelView.addObject("ntrGtBioUsers", JSON.toJSONString(ntrGtBioUsers));
        modelView.addObject("ntrLtBioUsers", JSON.toJSONString(ntrLtBioUsers));
        modelView.addObject("data", data);
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
