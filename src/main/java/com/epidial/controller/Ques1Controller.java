package com.epidial.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;


@Controller
public class Ques1Controller {

    @RequestMapping("/ques1/index")
    @ResponseBody
    public String view(){
        return "<!DOCTYPE html>" +
                "<html>" +
                "<head>" +
                "    <title>筛查数量化风险评估问卷</title>" +
                "    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">" +
                "    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">" +
                "    <meta name=\"viewport\" content=\"width=device-width,minimum-scale=1,initial-scale=1,shrink-to-fit=no\">" +
                "" +
                "    <link href=\"http://localhost:8080/static/css/ques1.css\" rel=\"stylesheet\">" +
                "</head>" +
                "<body>" +
                "" +
                "<div id=\"container\">" +
                "    <div id=\"photo\">" +
                "        <img src=\"http://localhost:8080/static/images/ques/ques1.png\"/>" +
                "        <img src=\"http://localhost:8080/static/images/ques/ques2.png\"/>" +
                "        <img src=\"http://localhost:8080/static/images/ques/ques3.png\"/>" +
                "    </div>" +
                "</div>" +
                "</body>" +
                "</html>";
    }

    @RequestMapping("/ques1/know")
    public String know(){
        return "";
    }

}

