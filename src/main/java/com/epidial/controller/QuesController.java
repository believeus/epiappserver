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

    @ResponseBody
    @RequestMapping("/ques1/index")
    public String view(HttpServletRequest request) {
        ModelAndView modelView = new ModelAndView();
        String openid = request.getParameter("openid");
        Questionnaire questionnaire = questionnaireDao.getByuId(openid);
        String text=questionnaire.getComtab().replaceAll("#openid",openid);
        questionnaire.setComtab(text);
        System.out.println(text);
        return questionnaire.getComtab();
//        return modelView;

    }

    /*
     * 获取整个问卷页面代码，保存进数据库进行新增或修改
     * */
    @RequestMapping("/question/update")
    @Transactional
    @ResponseBody
    public String save(Questionnaire data){
        String openid = data.getUuid();
        System.out.println("uuid"+data.getUuid());
        System.out.println(data.getComtab());
        Questionnaire questionnaire = questionnaireDao.getByuId(openid);
        questionnaire.setComtab(data.getComtab());
        questionnaireDao.update(questionnaire);
        return "success";
    }

}

