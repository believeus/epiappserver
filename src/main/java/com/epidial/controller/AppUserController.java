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
            String title = "[DO NOT REPLY] Please verify your registration on EpiAge";
            String message = "<!DOCTYPE html>" +
                    "<html>" +
                    "<head>" +
                    "<title></title>"+
                    "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />"+
                    "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"+
                    "<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />"+
                    "<style type=\"text/css\">"+
                    "@media screen {"+
                    "@font-face {"+
                    "font-family: 'Lato';"+
                    "font-style: normal;"+
                    "font-weight: 400;"+
                    "src: local('Lato Regular'), local('Lato-Regular'), url(https://fonts.gstatic.com/s/lato/v11/qIIYRU-oROkIk8vfvxw6QvesZW2xOQ-xsNqO47m55DA.woff) format('woff');"+
                    "}"+

                    " @font-face {"+
                    "font-family: 'Lato';"+
                    "font-style: normal;"+
                    "font-weight: 700;"+
                    " src: local('Lato Bold'), local('Lato-Bold'), url(https://fonts.gstatic.com/s/lato/v11/qdgUG4U09HnJwhYI-uK18wLUuEpTyoUstqEm5AMlJo4.woff) format('woff');"+
                    "}"+

                    "@font-face {"+
                    "font-family: 'Lato';"+
                    "font-style: italic;"+
                    "font-weight: 400;"+
                    "src: local('Lato Italic'), local('Lato-Italic'), url(https://fonts.gstatic.com/s/lato/v11/RYyZNoeFgb0l7W3Vu1aSWOvvDin1pK8aKteLpeZ5c0A.woff) format('woff');"+
                    "}"+

                    "@font-face {"+
                    "font-family: 'Lato';"+
                    "font-style: italic;"+
                    "font-weight: 700;"+
                    " src: local('Lato Bold Italic'), local('Lato-BoldItalic'), url(https://fonts.gstatic.com/s/lato/v11/HkF_qI1x_noxlxhrhMQYELO3LdcAZYWl9Si6vvxL-qU.woff) format('woff');"+
                    " }"+
                    "}"+

                    "body,"+
                    "table,"+
                    "td,"+
                    "a {"+
                    "-webkit-text-size-adjust: 100%;"+
                    "-ms-text-size-adjust: 100%;"+
                    "}"+

                    "table,"+
                    "td {"+
                    "mso-table-lspace: 0pt;"+
                    "mso-table-rspace: 0pt;"+
                    "}"+

                    "img {"+
                    "-ms-interpolation-mode: bicubic;"+
                    "}"+


                    "img {"+
                    " border: 0;"+
                    "height: auto;"+
                    "line-height: 100%;"+
                    "outline: none;"+
                    "text-decoration: none;"+
                    "}"+

                    "table {"+
                    "border-collapse: collapse !important;"+
                    " }"+

                    "body {"+
                    " height: 100% !important;"+
                    "margin: 0 !important;"+
                    " padding: 0 !important;"+
                    "width: 100% !important;"+
                    "}"+

                    "a[x-apple-data-detectors] {"+
                    "color: inherit !important;"+
                    "text-decoration: none !important;"+
                    "font-size: inherit !important;"+
                    "font-family: inherit !important;"+
                    "font-weight: inherit !important;"+
                    " line-height: inherit !important;"+
                    "}"+

                    "@media screen and (max-width:600px) {"+
                    "h1 {"+
                    "font-size: 18px !important;"+
                    "line-height: 32px !important;"+
                    "}"+
                    "}"+

                    "div[style*=\"margin: 16px 0;\"] {"+
                    "margin: 0 !important;"+
                    "}"+
                    "</style>"+
                    "</head>" +
                    "<body style=\"background-color: #f4f4f4; margin: 0 !important; padding: 0 !important;\">"+
                    "<div style=\"display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: 'Lato', Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;\"> We're thrilled to have you here! Get ready to dive into your new account."+
                    "</div>"+
                    "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">"+
                    "<tr>"+
                    "<td bgcolor=\"#F69421\" align=\"center\">"+
                    "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">"+
                    "<tr>"+
                    "<td align=\"center\" valign=\"top\" style=\"padding: 40px 10px 40px 10px;\"> </td>"+
                    "</tr>"+
                    "</table>"+
                    "</td>"+
                    "</tr>"+
                    "<tr>"+
                    "<td bgcolor=\"#F69421\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">"+
                    "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">"+
                    "<tr>"+
                    "<td bgcolor=\"#ffffff\" align=\"center\" valign=\"top\" style=\"padding: 40px 20px 20px 20px; border-radius: 4px 4px 0px 0px; color: #111111; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 15px; font-weight: 300; letter-spacing: 1px; line-height: 48px;\">"+
                    "<img src=\" https://epigenexperts.ca/wp-content/uploads/2022/05/epiage-logo.png\" width=\"80\" height=\"80\" style=\"display: block; border: 0px;\" />"+
                    "<h1>You are almost done! </h1>"+
                    "</td>"+
                    "</tr>"+
                    "</table>"+
                    "</td>"+
                    " </tr>"+
                    "<tr>"+
                    "<td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">"+
                    "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">"+
                    "<tr>"+
                    "<td bgcolor=\"#ffffff\" align=\"left\" style=\"padding: 20px 30px 40px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 18px; font-weight: 400; line-height: 25px;text-align: center;\">"+
                    "<p style=\"margin: 0;\">"+
                    "Please activate your account by clicking the button below:</p>"+
                    "</td>"+
                    "</tr>"+
                    "<tr>"+
                    "<td bgcolor=\"#ffffff\" align=\"left\">"+
                    "<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">"+
                    "<tr>"+
                    "<td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 30px 60px 30px;\">"+
                    "<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">"+
                    "<tr>"+
                    " <td align=\"center\" style=\"border-radius: 3px;\" bgcolor=\"#F69421\"><a href='https://app.epi-age.com/user/authMail.jhtml?mail=" + u.getMail() + "' target=\"_blank\" style=\"font-size: 17px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; color: #ffffff; text-decoration: none; padding: 15px 25px; border-radius: 2px; border: 1px solid #F69421; display: inline-block;\">ACTIVATE ACCOUNT</a></td>"+
                    "</tr>"+
                    "</table>"+
                    "</td>"+
                    "</tr>"+
                    "</table>"+
                    "</td>"+
                    "</tr> "+
                    "<tr>"+
                    "<td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 0px 30px 0px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 17px; font-weight: 400; line-height: 25px;\">"+
                    "<p style=\"margin: 0;\">If the button doesn't work, please copy and paste the following link on your browser:</p>"+
                    "</td>"+
                    "</tr> "+
                    "<tr>"+
                    "<td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 30px 20px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 17px; font-weight: 400; line-height: 25px;\">"+
                    " <p style=\"margin: 0;\"><a href=\"https://app.epi-age.com/user/authMail.jhtml?mail="+u.getMail()+" target=\"_blank\" style=\"color: #1370B8;\">https://app.epi-age.com/user/authMail.jhtml?mail="+u.getMail()+"</a></p>"+
                    "</td>"+
                    "</tr>"+
                    "<tr>"+
                    "<td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 20px 30px 20px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 16px; font-weight: 400; line-height: 25px;\">"+
                    "<p style=\"margin: 0;\">info@hkgepitherapeutics.com</p>"+
                    "<a href=\"https://www.hkgepitherapeutics.com\" style=\"margin: 0;color:#1370B8;\">www.hkgepitherapeutics.com</a>"+
                    "<p style=\"margin: 0;\">(+852) 2354-8297 </p></td>"+
                    "</tr>"+
                    "<tr>"+
                    "<td bgcolor=\"#ffffff\" align=\"center\" style=\"padding: 30px 30px 40px 30px; border-radius: 0px 0px 4px 4px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 25px;\">"+
                    "<p style=\"margin: 0;\">© 2022. HKG epiTherapeutics Limited. All rights reserved</p>"+
                    "</td>"+
                    "</tr>"+
                    "</table>"+
                    " </td>"+
                    "</tr>"+
                    "<tr>"+
                    "<td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 30px 10px 0px 10px;\">"+
                    "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">"+

                    "</table>"+
                    "</td>"+
                    "</tr>"+
                    "<tr>"+
                    "<td bgcolor=\"#f4f4f4\" align=\"center\" style=\"padding: 0px 10px 0px 10px;\">"+
                    "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"max-width: 600px;\">"+
                    "<tr>"+
                    "<td bgcolor=\"#f4f4f4\" align=\"left\" style=\"padding: 0px 30px 30px 30px; color: #666666; font-family: 'Lato', Helvetica, Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 18px;\"><p style=\"margin: 0;\">&nbsp;</p>"+
                    "</td>"+
                    "</tr>"+
                    "</table>"+
                    "</td>"+
                    "</tr>"+
                    "</table>"+
                    "</body>" +
                    "</html>";
            String data = mailService.sendMail(title, message, u.getMail());//"success";
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
    public User updatekey(int id, String uuid) {
        User user = userDao.findUser("id", id);
        user.setUuid(uuid);
        userDao.update(user);
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
                    "<p>Dear user</p><p>Thank you for your registration on EpiAge. <br />Please click on the following link to reset your password:</p>" +
                    "<a href='https://app.epi-age.com/user/repasswdview.jhtml?mail=" + user.getMail() + "&token=" + user.getToken() + "'>https://app.epi-age.com/user/repasswdview.jhtml?mail=" + user.getMail() + "&token=" + user.getToken() + "</a>" +
                    "<p style='color:red'>If you're unable to click on any of the links above, copy and paste the URL into a new browser window instead</p><p>HKG epitherapeutics Limited<br />https://www.hkgepitherapeutics.com</p>" +
                    "<p>(+852) 2354 8297<br/>info@hkgepitherapeutics.com</p><p>2022 All rights reserved</p>" +
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
    public ModelAndView repasswdview(String mail, String token){
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
