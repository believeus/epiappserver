package com.epidial.controller;

import com.epidial.bean.McGill;
import com.epidial.dao.qtion.McGillDao;
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
public class McGillController {
    @Resource
    private McGillDao mcGillDao;

    @ResponseBody
    @RequestMapping("/user/mcgill/data")
    public List<McGill> macgill(@Param("uuid") String uuid) {
        List<McGill> mcGills = mcGillDao.find(uuid);
        return mcGills;
    }

    @ResponseBody
    @RequestMapping("/user/mcgill/update")
    public String updata(String uuid, String column, short value, long utime) {
        //获取当天的起始时间结束时间
        long start = LocalDateTime.of(LocalDate.now(), LocalTime.MIN).toInstant(ZoneOffset.of("+8")).toEpochMilli();
        long end = LocalDateTime.of(LocalDate.now(), LocalTime.MAX).toInstant(ZoneOffset.of("+8")).toEpochMilli();
        McGill mcGill = mcGillDao.findToday(uuid, start, end);
        try {
            Class<McGill> clazz = McGill.class;
            mcGill = (mcGill == null) ? (McGill)clazz.newInstance() : mcGill;
            Field f1 = clazz.getDeclaredField(column);
            f1.setAccessible(true);
            f1.set(mcGill, value);
            Field f2 = clazz.getDeclaredField("updateTime");
            f2.setAccessible(true);
            f2.set(mcGill, utime);
            if (mcGill.getId() > 0) {
                mcGillDao.updata(mcGill);
            } else {
                mcGill.setUuid(uuid);
                mcGillDao.save(mcGill);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
    }
}

