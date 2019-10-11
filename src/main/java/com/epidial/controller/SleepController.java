package com.epidial.controller;

import com.epidial.bean.Mood;
import com.epidial.bean.Sleep;
import com.epidial.dao.qtion.MoodDao;
import com.epidial.dao.qtion.SleepDao;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.lang.reflect.Field;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneOffset;
import java.util.List;

@Controller
public class SleepController {
    @Resource
    private SleepDao sleepDao;

    @ResponseBody
    @RequestMapping("/user/sleep/data")
    public List<Sleep> mood(@Param("uuid") String uuid) {
        List<Sleep> sleeps = sleepDao.find(uuid);
        return sleeps;
    }

    @ResponseBody
    @RequestMapping("/user/sleep/update")
    public String updata(String uuid, String column, short value, long utime) {
        //获取当天的起始时间结束时间
        long start = LocalDateTime.of(LocalDate.now(), LocalTime.MIN).toInstant(ZoneOffset.of("+8")).toEpochMilli();
        long end = LocalDateTime.of(LocalDate.now(), LocalTime.MAX).toInstant(ZoneOffset.of("+8")).toEpochMilli();
        Sleep sleep = sleepDao.findToday(uuid, start, end);
        try {
            Class<Sleep> clazz = Sleep.class;
            sleep = (sleep == null) ? (Sleep) clazz.newInstance() : sleep;
            Field f1 = clazz.getDeclaredField(column);
            f1.setAccessible(true);
            f1.set(sleep, value);
            Field f2 = clazz.getDeclaredField("updateTime");
            f2.setAccessible(true);
            f2.set(sleep, utime);
            if (sleep.getId() > 0) {
                sleepDao.updata(sleep);
            } else {
                sleep.setUuid(uuid);
                sleepDao.save(sleep);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
    }
}

