package com.epidial.controller;
import com.epidial.bean.Questionnaire;
import com.epidial.dao.epi.QuestionnaireDao;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;



@Controller
public class Ques1Controller {
    @Resource
    QuestionnaireDao questionnaireDao;


    @RequestMapping("/ques1/index22")
    public ModelAndView view(){
        ModelAndView modelView=new ModelAndView();
        modelView.setViewName("/WEB-INF/front/ques1.jsp");
        return  modelView;
    }

//    @RequestMapping("/ques2/know")
//    public ModelAndView know(){
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("/WEB-INF/front/ques2.jsp");
//        return modelAndView;
//    }



}

