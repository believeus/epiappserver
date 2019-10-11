package com.epidial.controller;

import com.epidial.bean.Life;
import com.epidial.dao.qtion.LifeStyleDao;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.lang.reflect.Field;
import java.time.*;
import java.util.List;


@Controller
public class LifeStyleController {

    @Resource
    private LifeStyleDao lifeStyleDao;

    @ResponseBody
    @RequestMapping("/user/lifestyle/data")
    public List<Life> lifeStyle(@Param("uuid") String uuid) {
         List<Life> lives = lifeStyleDao.find(uuid);
        return lives;
    }

    @ResponseBody
    @RequestMapping("/user/lifestyle/update")
    public String updata(String uuid, String column, Double value, long utime) {
        //获取当天的起始时间结束时间
        long start = LocalDateTime.of(LocalDate.now(), LocalTime.MIN).toInstant(ZoneOffset.of("+8")).toEpochMilli();
        long end = LocalDateTime.of(LocalDate.now(), LocalTime.MAX).toInstant(ZoneOffset.of("+8")).toEpochMilli();
        Life life = lifeStyleDao.findToday(uuid, start, end);
        try {
            Class<Life> clazz = Life.class;
            life = (life == null) ? (Life)clazz.newInstance() : life;
            Field f1 = clazz.getDeclaredField(column);
            f1.setAccessible(true);
            f1.set(life, value);
            Field f2 = clazz.getDeclaredField("updateTime");
            f2.setAccessible(true);
            f2.set(life, utime);
            if (life.getId() > 0) {
                lifeStyleDao.updata(life);
            } else {
                life.setUuid(uuid);
                lifeStyleDao.save(life);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
    }
}
