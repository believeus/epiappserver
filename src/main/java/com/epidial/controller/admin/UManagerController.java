package com.epidial.controller.admin;

import com.alibaba.fastjson.JSONObject;
import com.epidial.bean.User;
import com.epidial.common.Page;
import com.epidial.dao.epi.UserDao;
import com.epidial.utils.UserCreate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;
import java.util.UUID;

@Controller
public class UManagerController {

    @Resource
    private UserDao userDao;

    @RequestMapping("/admin/user/view")
    public ModelAndView view(@RequestParam(defaultValue = "0",value = "idx") int idx) {
        int size1=10;
        ModelAndView modelView = new ModelAndView();
        List<User> users = userDao.pagingUser(idx, size1);
        int c=userDao.count();
        Page page=new Page();
        page.setCurrPageNo(idx);
        page.setPageSize(size1);
        page.setTotalPageCount(c-1);
         if(c%10==0){
                 page.setMypage(c-11);
                 page.setZong(c/10);
                 page.setDang((idx+1)/10);
            }else{
              int a=(int)(Math.floor(c/10));
                 page.setMypage(a*10);
                 page.setZong(a+1);
                 if(idx+1>=a*10){
                     page.setDang(a+1);
                 }else{
                     if(idx<10){
                         page.setDang(1);
                     }else{
                         page.setDang(((idx+1)+10)/10);
                     }
                 }
            }
        modelView.addObject("page",page);
        modelView.setViewName("/WEB-INF/back/member-list.jsp");
        modelView.addObject("users", users);
        return modelView;
    }

    @RequestMapping("/admin/user/edit")
    public ModelAndView edit(String mail) {
        User user = userDao.findUser("mail", mail);
        ModelAndView modelView = new ModelAndView();
        modelView.addObject("user", user);
        modelView.setViewName("/WEB-INF/back/member-edit.jsp");
        return modelView;
    }

    @RequestMapping("/admin/user/update")
    @ResponseBody
    public String updata(User json) {
        User u = userDao.findUser("id", json.getId());
        userDao.update(u);
        return "success";
    }

    @RequestMapping("/admin/user/addview")
    public ModelAndView addview() {
        return new ModelAndView("/WEB-INF/back/member-add.jsp");
    }

    @ResponseBody
    @RequestMapping("/admin/user/save")
    public String save(User user) {
        user.setRegister(System.currentTimeMillis());
        user.setPassword("HKG123!@#");
        user.setToken(UUID.randomUUID().toString());
        user.setUuid(UserCreate.getUuid());
        userDao.save(user);
        return "success";
    }
    @ResponseBody
    @RequestMapping("/admin/user/del")
    public String  del(int id){
        userDao.delete(id);//删除用户
        return "success";
    }
    @ResponseBody
    @RequestMapping("/admin/user/mail")
    public String getEamilfind(String email){
        System.out.println(email);
        String mail ="mail";
        User user =userDao.findUser(mail,email);
        return JSONObject.toJSONString(user);
    }
}
