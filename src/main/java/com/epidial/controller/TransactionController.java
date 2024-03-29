package com.epidial.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.epidial.bean.Task;
import com.epidial.bean.User;
import com.epidial.bean.Wares;
import com.epidial.dao.epi.DnakitDao;
import com.epidial.dao.epi.TaskDao;
import com.epidial.dao.epi.WaresDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.FileInputStream;
import java.util.Properties;
import java.util.ResourceBundle;

@Controller
@CrossOrigin
@RequestMapping
public class TransactionController {

    @Resource
    private TaskDao taskDao;

    @Resource
    private WaresDao waresDao;

    @Resource
    private DnakitDao dnakitDao;

    //产品信息查询

    //用于接受购物车第一次的商品传递
    @RequestMapping(value = "/user/transaction/postCar")
    @ResponseBody
    public String postCar(@RequestBody JSONObject data, HttpSession session) {
        try {
            Properties properties=new Properties();
            String path = this.getClass().getClassLoader().getResource("application.properties").getPath();
            FileInputStream in = new FileInputStream(path);
            properties.load(in);
            User user = (User) session.getAttribute("sessionuser");
            long time = System.currentTimeMillis();
            JSONArray waresbox = data.getJSONArray("wares");
            String prom = data.getString("invite").toLowerCase();
            float discount = Float.parseFloat(properties.getProperty(prom,"0"));
            in.close();
            for (int i = 0; i < waresbox.size(); i++) {
                int waresId = Integer.parseInt(((JSONObject) waresbox.get(i)).getString("wares_id"));
                int count = Integer.parseInt(((JSONObject) waresbox.get(i)).getString("wares_count"));
                for (int j = 0; j < count; j++) {
                    Wares wares = waresDao.find("id", waresId).get(0);
                    Task task = new Task();
                    task.setGid(waresId);
                    task.setImgpath(wares.getImgpath());
                    task.setOrderno("HKG:" + time);
                    task.setPay(0);//未付款
                    task.setName(wares.getName());
                    task.setUid(user.getId());
                    task.setTotal((discount!=1.0)?(wares.getPrice()-(wares.getPrice()*discount)):wares.getPrice());//折扣价钱                task.setUid(user.getId());
                    task.setType(wares.getType());
                    task.setValid(0);//0：订单有效
                    task.setCreateTime(time);//订单创建时间
                    task.setDelivery("Unfilled");
                    task.setEmail(user.getMail());
					task.setProm(prom);
                    taskDao.save(task);
                }
            }
            return "user/cart/check.jhtml";
        }catch (Exception e){
            e.printStackTrace();
        }
        return "";

    }

    @RequestMapping(value = "/user/transaction/success.jhtml")
    public ModelAndView paySuccess(String mobile) {
        ModelAndView modelView = new ModelAndView();
        if (mobile.equals("true")) {
            modelView.setViewName("/WEB-INF/front/success.jsp");
        } else {
            modelView.setViewName("/WEB-INF/front/wix/success.jsp");
        }
        modelView.addObject("title", " Pay Success!");
        modelView.addObject("canback", false);
        return modelView;
    }

}
