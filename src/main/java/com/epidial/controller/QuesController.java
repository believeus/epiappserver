package com.epidial.controller;

import com.epidial.bean.Questionnaire;
import com.epidial.dao.epi.QuestionnaireDao;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import java.beans.Transient;


@Controller
public class QuesController {
    @Resource
    QuestionnaireDao questionnaireDao;

    @RequestMapping("/ques1/index")
    public ModelAndView view() {
        ModelAndView modelView = new ModelAndView();
        modelView.setViewName("/WEB-INF/front/ques1.jsp");
        return modelView;
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

}

