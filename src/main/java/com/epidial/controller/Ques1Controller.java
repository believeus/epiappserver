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
public class Ques1Controller {
    @Resource
    QuestionnaireDao questionnaireDao;

    @RequestMapping("/ques1/index")
    public ModelAndView view(){
        ModelAndView modelView=new ModelAndView();
        modelView.setViewName("/WEB-INF/front/ques1.jsp");
        return  modelView;
    }

    @RequestMapping("/ques2/know")
    public ModelAndView know(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/WEB-INF/front/ques2.jsp");
        return modelAndView;
    }

    /*
    * 获取整个问卷页面代码，保存进数据库进行新增或修改
    * */
    @RequestMapping("/question/save")
    @Transactional
    @ResponseBody
    public String save(Model model, HttpServletRequest request, Session session,Integer uid,String save){
        Questionnaire questionnaire = questionnaireDao.getByuId(uid);
        String comtab = request.getParameter(save);
        System.out.println(comtab);
//        先判断questionnaire对象是否为空
        if(questionnaire==null){
            questionnaireDao.save(uid,comtab);
        }
            questionnaireDao.update(uid,comtab);
        return "1";
    }

}

