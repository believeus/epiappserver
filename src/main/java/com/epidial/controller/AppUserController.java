package com.epidial.controller;

import com.epidial.bean.User;
import com.epidial.dao.epi.UserDao;
import com.epidial.serivce.MailService;
import com.epidial.utils.UserCreate;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.UUID;

@Controller
public class AppUserController {

    @Resource
    private UserDao userDao;
    @Resource
    private MailService mailService;

    @ResponseBody
    @RequestMapping(value = "/user/login")
    public User login(String email) {
        User user = userDao.findUser("mail", email);
        if (user != null) {
            return user;
        }
        return new User();
    }


    @RequestMapping(value = "/user/register")
    public @ResponseBody
    String register(User u) {
        User user = userDao.findUser("mail", u.getMail());
        if (user != null) {
            return "error";
        } else {
            String title = "[DO NOT REPLY] Please verify your registration on Epi-Aging";
            String message = "<!DOCTYPE html>" +
                    "<html>" +
                    "<head>" +
                    "<meta charset=\"UTF-8\">" +
                    "<title></title>" +
                    "</head>" +
                    "<body>" +
                    "<div style='width: 100%;height: auto;'>" +
                    "<div style='width: 100%;height: 60px;'></div>" + //
                    "<p>Dear user</p><p>Thank you for your registration on Epi-Aging. <br />Please click on the following link to complete your registration:</p>" +
                    "<span style='font-size: 24px;text-decoration: underline' >https://app.beijingepidial.com/user/authMail.jhtml?mail=" + u.getMail() + "</span>" +
                    "<p style='color:red;font-size: 18px;'>Note: If clicking the activation link fails to activate the user, copy the activation link to the browser address bar to activate the user's mailbox.</p><p>HKG epitherapeutics Limited<br />https://www.hkgepitherapeutics.com</p>" +
                    "<p>(+852) 2354 8297<br/>info@hkgepitherapeutics.com</p><p>2019 All rights reserved</p>" +
                    "</div>" +
                    "</body>" +
                    "</html>";
            String data = mailService.sendMail(title, message, u.getMail());
            if (data.equals("success")) {
                String pwd = DigestUtils.md5Hex(u.getPassword());
                u.setPassword(pwd);
                u.setRegister(System.currentTimeMillis());
                u.setToken(UUID.randomUUID().toString());
                userDao.save(u);
                return "success";
            } else {
                return "network-error";
            }
        }
    }

    @ResponseBody
    @RequestMapping("/user/updatekey")
    public User updatekey(int id, String uuid,String privatekey) {
        User user = userDao.findUser("id", id);
        user.setUuid(uuid);
        userDao.update(user);
        String title = "[DO NOT REPLY] private key";
        String message = "<!DOCTYPE html>" +
                "<html>" +
                "<head>" +
                "<meta charset=\"UTF-8\">" +
                "<title></title>" +
                "</head>" +
                "<body>" +
                "<div style='width: 100%;height: auto;'>" +
                "<div style='width: 100%;height: 60px;'></div>" + //
                "<p>Dear user</p><p>your private key is: <br />" + privatekey + "</p>" +
                "<p>If you reset the private key, all previous health questionnaire information will be lost. When you re-login to app, please set the private key as the current private key.</p>" +
                "<p>(+852) 2354 8297<br/>info@hkgepitherapeutics.com</p><p>2019 All rights reserved</p>" +
                "</div>" +
                "</body>" +
                "</html>";
        mailService.sendMail(title, message, user.getMail());
        return user;
    }

    @RequestMapping("/user/authMail")
    public ModelAndView authMail(@Param("mail") String mail) {
        ModelAndView modelView = new ModelAndView();
        User user = userDao.findUser("mail", mail);
        user.setValid(1);//验证通过
        String view = userDao.update(user) ? "/WEB-INF/front/verify_success.jsp" : "/WEB-INF/front/verify_error.jsp";
        modelView.setViewName(view);
        return modelView;
    }


    @RequestMapping("/user/sendpaswd")
    public @ResponseBody
    String sendpaswd(String email) {
        User user = userDao.findUser("mail", email);
        if (user != null) {
            String title = "[DO NOT REPLY] Please reset your password";
            String message = "<!DOCTYPE html>" +
                    "<html>" +
                    "<head>" +
                    "<meta charset=\"UTF-8\">" +
                    "<title></title>" +
                    "</head>" +
                    "<body>" +
                    "<div style='width: 100%;height: auto;'>" +
                    "<div style='width: 100%;height: 60px;'></div>" + //
                    "<p>Dear user</p><p>Thank you for your registration on Epi-Aging. <br />Please click on the following link to reset your password:</p>" +
                    "<a href='https://app.beijingepidial.com/user/repasswdview.jhtml?mail=" + user.getMail() + "&token=" + user.getToken() + "'>https://app.beijingepidial.com/user/repasswdview.jhtml?mail=" + user.getMail() + "&token=" + user.getToken() + "</a>" +
                    "<p style='color:red'>If you're unable to click on any of the links above, copy and paste the URL into a new browser window instead</p><p>HKG epitherapeutics Limited<br />https://www.hkgepitherapeutics.com</p>" +
                    "<p>(+852) 2354 8297<br/>info@hkgepitherapeutics.com</p><p>2019 All rights reserved</p>" +
                    "</div>" +
                    "</body>" +
                    "</html>";
            mailService.sendMail(title, message, email);
            return "success";
        } else {
            return "null";
        }
    }


    @RequestMapping("/user/repasswdview")
    public ModelAndView repasswdview(String mail, String token) {
        ModelAndView modelView = new ModelAndView();
        User user = userDao.findUser("mail", mail);
        if (user != null) {
            if (user.getToken().equals(token)) {
                modelView.setViewName("/WEB-INF/front/resetview.jsp");
                modelView.addObject("user", user);
            } else {
                modelView.setViewName("/WEB-INF/front/mailInvalid.jsp");
            }
        } else {
            String message = "Mailbox not registered!";
            modelView.addObject("message", message);
            modelView.setViewName("/WEB-INF/front/mailInvalid.jsp");
        }
        return modelView;
    }

    @ResponseBody
    @RequestMapping("/user/repasswd")
    public String repasswd(User json) {
        User user = userDao.findUser("mail", json.getMail());
        if (user != null) {
            if (user.getToken().equals(json.getToken())) {
                user.setPassword(DigestUtils.md5Hex(json.getPassword()));
                user.setToken(UUID.randomUUID().toString());
                userDao.update(user);
                return "reset password success!";
            } else {
                return "The token is invalid, please click \n[forget password] again on App";
            }
        } else {
            return "Mailbox not registered!";
        }
    }

}
