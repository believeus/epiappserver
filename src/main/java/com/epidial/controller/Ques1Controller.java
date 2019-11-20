package com.epidial.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;


@Controller
public class Ques1Controller {
    @RequestMapping("/ques1/index")
    public ModelAndView view(){
        ModelAndView modelView=new ModelAndView();
        modelView.setViewName("/WEB-INF/front/ques1.jsp");
        return  modelView;
    }

}

