package com.epidial.controller;

import com.epidial.bean.Questionnaire;
import com.epidial.dao.epi.QuestionnaireDao;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;


@Controller
public class QuesController {
    @Resource
    QuestionnaireDao questionnaireDao;

    @RequestMapping(value = "/ques1/index",method = RequestMethod.GET)
    @ResponseBody
    public String view(String openid) {
        //1、 获取到openid进行查询，把大肠问卷写入数据库
        Questionnaire questionnaires = questionnaireDao.getByuId(openid);
        String text=questionnaires.getComtab().replaceAll("#openid",openid);
        questionnaires.setComtab(text);
        System.out.println("xxxxxxxxxxxx:"+openid);
        return questionnaires.getComtab();
    }

    /*
     * 获取整个问卷页面代码，保存进数据库进行新增或修改
     * */
    @RequestMapping("/question/update")
    @Transactional
    @ResponseBody
    public String update(Questionnaire data) {
        questionnaireDao.update(data);
        return "success";
    }

//
//    @RequestMapping("index/ques1")
//    public ModelAndView ques(){
//        ModelAndView modelAndView = new ModelAndView();
//        modelAndView.setViewName("/WEB-INF/front/ques1.jsp");
//        return modelAndView;
//    }
}

