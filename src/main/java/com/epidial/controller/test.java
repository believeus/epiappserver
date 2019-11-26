package com.epidial.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.Writer;

@Controller
public class test {
    @RequestMapping("buttonTest2")
    @ResponseBody
    public void buttonTest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        /* 设置响应头允许ajax跨域访问 */
        response.setHeader("Access-Control-Allow-Origin", "*");
        /* 星号表示所有的异域请求都可以接受， */
        response.setHeader("Access-Control-Allow-Methods", "GET,POST");

        //获取微信小程序get的参数值并打印
        //姓名
        String name = request.getParameter("name");
        System.out.println("姓名  =  "+name);
        String openid = request.getParameter("openid");
        System.out.println("openid  =  "+openid);
        //返回值给微信小程序
        Writer out = response.getWriter();
        out.write("你已经到了后端啦");
        out.flush();
/*        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/WEB-INF/front/login.jsp");
        return modelAndView;*/
    }
}