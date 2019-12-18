package com.epidial.controller;

import com.epidial.bean.Questionnaire;
import com.epidial.bean.User;
import com.epidial.dao.epi.QuestionnaireDao;
import com.epidial.dao.epi.UserDao;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.annotation.Resource;
import java.io.*;
import java.util.Properties;

@Controller
public class WxLoginController {
    @Resource
    private UserDao userDao;
    @Resource
    private QuestionnaireDao questionnaireDao;

    @RequestMapping("/user/wx/login")
    @ResponseBody
    public User wxlogin(String openid) throws Exception {
        try {
            User user = userDao.findUser("uuid", openid);
            if (user == null) {
                user = new User();
                user.setUuid(openid);
                user.setNickname("wxid:"+openid.substring(0,8));
                user.setRegister(System.currentTimeMillis());
                user.setLastLogin(System.currentTimeMillis());
                userDao.save(user);
                Properties properties = new Properties();
                ClassLoader classLoader = this.getClass().getClassLoader();
                FileInputStream in = new FileInputStream(classLoader.getResource("application.properties").getPath());
                properties.load(in);
                String classpath = classLoader.getResource("/").getPath();
                String html = FileUtils.readFileToString(new File(classpath + "dachang.html"),"UTF-8");
                Questionnaire data = new Questionnaire();
                data.setUuid(openid);
                data.setComtab(html);
                //将字符串保存到
                questionnaireDao.save(data);
                return user;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;

    }
}