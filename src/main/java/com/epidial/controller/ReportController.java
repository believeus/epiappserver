package com.epidial.controller;

import com.epidial.bean.*;
import com.epidial.dao.epi.*;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

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
    @RequestMapping("/user/report/upbarcode")
    public Udata upbarcode(String barcode, String uuid) {
        Dnakit dnakit = dnakitDao.find("barcode", barcode);
        User user = userDao.findUser("uuid", uuid);
        //直接输入barcode
        if (dnakit != null) {
            Udata data = new Udata(DigestUtils.md5Hex(String.valueOf(user.getId())).substring(0, 10), "pending");
            data.setBarcode(barcode);
            data.setUploadTime(System.currentTimeMillis());
            udataDao.save(data);
            dnakitDao.delete(dnakit.getId());
        }
        Udata data = udataDao.findBy("barcode", barcode);
        return (data == null) ? new Udata("", "invalid") : data;

    }

}
