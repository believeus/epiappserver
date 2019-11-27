package com.epidial.controller;

import com.epidial.dao.epi.QuestionnaireDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;

@Controller
public class DnareportController {
    @Resource
    QuestionnaireDao questionnaireDao;

    @RequestMapping("/dnareport/index")
    public ModelAndView view() {
        ModelAndView modelView = new ModelAndView();
        modelView.setViewName("/WEB-INF/front/dnareport.jsp");
        return modelView;
    }
}