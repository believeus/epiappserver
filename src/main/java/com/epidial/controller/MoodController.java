package com.epidial.controller;

import com.epidial.bean.McGill;
import com.epidial.bean.Mood;
import com.epidial.dao.qtion.McGillDao;
import com.epidial.dao.qtion.MoodDao;
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
public class MoodController {
    @Resource
    private MoodDao moodDao;

    @ResponseBody
    @RequestMapping("/user/mood/data")
    public List<Mood> mood(@Param("uuid") String uuid) {
        List<Mood> moods = moodDao.find(uuid);
        return moods;
    }

    @ResponseBody
    @RequestMapping("/user/mood/update")
    public String updata(String uuid, String column, short value, long utime) {
        //获取当天的起始时间结束时间
        long start = LocalDateTime.of(LocalDate.now(), LocalTime.MIN).toInstant(ZoneOffset.of("+8")).toEpochMilli();
        long end = LocalDateTime.of(LocalDate.now(), LocalTime.MAX).toInstant(ZoneOffset.of("+8")).toEpochMilli();
        Mood mood = moodDao.findToday(uuid, start, end);
        try {
            Class<Mood> clazz = Mood.class;
            mood = (mood == null) ? (Mood) clazz.newInstance() : mood;
            Field f1 = clazz.getDeclaredField(column);
            f1.setAccessible(true);
            f1.set(mood, value);
            Field f2 = clazz.getDeclaredField("updateTime");
            f2.setAccessible(true);
            f2.set(mood, utime);
            if (mood.getId() > 0) {
                moodDao.updata(mood);
            } else {
                mood.setUuid(uuid);
                moodDao.save(mood);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
    }
}

