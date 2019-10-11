package com.epidial.controller;

import com.epidial.bean.Diet;
import com.epidial.bean.Mood;
import com.epidial.dao.qtion.DietDao;
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
public class DietController {
    @Resource
    private DietDao dietDao;

    @ResponseBody
    @RequestMapping("/user/diet/data")
    public List<Diet> mood(@Param("uuid") String uuid) {
        List<Diet> diets = dietDao.find(uuid);
        return diets;
    }

    @ResponseBody
    @RequestMapping("/user/diet/update")
    public String updata(Diet data) {
        //获取当天的起始时间结束时间
        long start = LocalDateTime.of(LocalDate.now(), LocalTime.MIN).toInstant(ZoneOffset.of("+8")).toEpochMilli();
        long end = LocalDateTime.of(LocalDate.now(), LocalTime.MAX).toInstant(ZoneOffset.of("+8")).toEpochMilli();
        Diet diet = dietDao.findToday(data.getUuid(), start, end);
        if (diet == null) {
            dietDao.save(data);
        } else {
            diet.setCalories(data.getCalories());
            diet.setFoodname(data.getFoodname());
            diet.setUpdateTime(data.getUpdateTime());
            diet.setFat(data.getFat());
            dietDao.updata(diet);
        }
        return "success";
    }
}

