package com.epidial.controller;

import com.epidial.bean.*;
import com.epidial.dao.epi.AddressDao;
import com.epidial.dao.epi.TaskDao;
import com.epidial.dao.epi.UdataDao;
import com.epidial.dao.epi.WaresDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CartController {
    @Resource
    private AddressDao addressDao;
    @Resource
    private TaskDao taskDao;
    @Resource
    private UdataDao udataDao;
    @Resource
    private WaresDao waresDao;



    @ResponseBody
    @RequestMapping("/user/cart/paygoodslist")
    public List<Task> paygoodslist(HttpSession session) {
        User user = (User) session.getAttribute("sessionuser");
        List<Task> taskbox = taskDao.findPayGoods(user.getId());
        return taskbox;
    }

    @RequestMapping("/user/cart/index")
    public ModelAndView index() {
        ModelAndView modelView = new ModelAndView();
        modelView.setViewName("/WEB-INF/front/cart.jsp");
        List<Wares> waresbox = waresDao.findAll();
        modelView.addObject("title", " Health Market");
        modelView.addObject("canback", true);
        modelView.addObject("waresbox", waresbox);
        return modelView;
    }



    @ResponseBody
    @RequestMapping("/user/cart/delUnPayGoods")
    public String deleUnPayGoods(HttpSession session, String type) {
        User user = (User) session.getAttribute("sessionuser");
        taskDao.deleteUnPayGoods(user.getId(), type);
        return "success";
    }

    @ResponseBody
    @RequestMapping("/user/cart/delPayGoods")
    public String delPayGoods(int id) {
        taskDao.delete("id", id);
        return "success";
    }

    //计算用户购买商品总价
    @ResponseBody
    @RequestMapping("/user/cart/unpaidAmount")
    public String sumprice(HttpSession session) {
        User user = (User) session.getAttribute("sessionuser");
        String total = taskDao.unpaidAmount(user.getId());
        return String.format("%.2f", Float.parseFloat(total == null ? "0" : total));
    }

    @ResponseBody
    @RequestMapping("/user/cart/selectAddr")
    public String watchagain(String addrid, HttpSession session) {
        User user = (User) session.getAttribute("sessionuser");
        //将其他地址状态归置
        addressDao.update("valid", 0, "uuid", user.getUuid());
        addressDao.update("valid", 1, "id", addrid);//将当前地址为正在使用的地址
        //查找当前正在使用的地址
        Address address = addressDao.findValidAddress("uuid", user.getUuid(), "valid", "1");
        //设置商品收货地址
        List<Task> unPayGoods = taskDao.findUnPayGoods(user.getId());
        for (Task task : unPayGoods) {
            task.setAddrid(address.getId());
            taskDao.update(task);
        }
        return "success";
    }

    @RequestMapping("/user/cart/review")
    public ModelAndView order(HttpSession session) {
        User user = (User) session.getAttribute("sessionuser");
        //查找当前正在使用的地址
        Address address = addressDao.findValidAddress("uuid", user.getUuid(), "valid", "1");
        ModelAndView modelView = new ModelAndView();
        modelView.setViewName("/WEB-INF/front/order.jsp");
        modelView.addObject("title", " Order Display");
        modelView.addObject("canback", true);
        modelView.addObject("address", address);
        return modelView;
    }

    @ResponseBody
    @RequestMapping("/user/cart/unPayGoodslist")
    public List<Task> list(HttpSession session) {
        User user = (User) session.getAttribute("sessionuser");
        List<Task> tasks = taskDao.findUnPayGoods(user.getId());
        return tasks;
    }

    @ResponseBody
    @RequestMapping("/user/cart/buyrecode")
    public List<TaskVo> buyrecode(HttpSession session) {
        List<TaskVo> voList = new ArrayList<TaskVo>();
        User user = (User) session.getAttribute("sessionuser");
        List<Task> unPayDNAKit = taskDao.findUnPayDNAKit(user.getId());
        if (!unPayDNAKit.isEmpty()) {
            TaskVo vo = new TaskVo();
            vo.setId(unPayDNAKit.get(0).getGid());
            int price = waresDao.find("id", unPayDNAKit.get(0).getGid()).get(0).getPrice();
            vo.setSize(unPayDNAKit.size());
            vo.setTotal(price);
            vo.setDesc("Saliva collection kit");
            vo.setName(unPayDNAKit.get(0).getName());
            vo.setImgpath(unPayDNAKit.get(0).getImgpath());
            vo.setType(unPayDNAKit.get(0).getType());
            voList.add(vo);
        }
        List<Task> unPayNoDnkKit = taskDao.findUnPayNoDnkKit(user.getId());
        if (!unPayNoDnkKit.isEmpty()) {
            TaskVo vo = new TaskVo();
            vo.setId(unPayNoDnkKit.get(0).getGid());
            int price = waresDao.find("id", unPayNoDnkKit.get(0).getGid()).get(0).getPrice();
            vo.setSize(unPayNoDnkKit.size());
            vo.setTotal(price);
            vo.setDesc("60 Tablets/Box");
            vo.setName(unPayNoDnkKit.get(0).getName());
            vo.setImgpath(unPayNoDnkKit.get(0).getImgpath());
            vo.setType(unPayNoDnkKit.get(0).getType());
            voList.add(vo);
        }
        return voList;
    }

    @ResponseBody
    @RequestMapping("/user/cart/addGoods")
    public String addGoods(HttpSession session,String type) {
        try {
            User user = (User) session.getAttribute("sessionuser");
            Task task=null;
            if (type.equals("0")) {
                task = (Task) taskDao.findUnPayDNAKit(user.getId()).get(0).clone();
            }else if (type.equals("1")){
                task = (Task) taskDao.findUnPayNoDnkKit(user.getId()).get(0).clone();
            }
            taskDao.save(task);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "success";
    }
    @ResponseBody
    @RequestMapping("/user/cart/minusGoods")
    public String minusGoods(HttpSession session,String type) {
        User user = (User) session.getAttribute("sessionuser");
        if (type.equals("0")) {
            Task task = taskDao.findUnPayDNAKit(user.getId()).get(0);
            taskDao.delete("id",task.getId());
        }else if (type.equals("1")){
            Task task = (Task) taskDao.findUnPayNoDnkKit(user.getId()).get(0);
            taskDao.delete("id",task.getId());
        }
        return "success";
    }

    @ResponseBody
    @RequestMapping("/user/cart/dnakitlist")
    public List<Task> dnakitlist(HttpSession session) {
        User user = (User) session.getAttribute("sessionuser");
        List<Task> tasks = taskDao.findPayDNAKit(user.getId());
        return tasks;
    }

    @RequestMapping("/user/cart/stockmsg")
    public String stockmsg() {
        return "/WEB-INF/front/stockmsg.jsp";
    }

}
