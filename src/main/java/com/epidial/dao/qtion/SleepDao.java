package com.epidial.dao.qtion;

import com.epidial.bean.Mood;
import com.epidial.bean.Sleep;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface SleepDao {
    @Select("select * from sleep where uuid=#{uuid} order by updateTime asc")
    public List<Sleep> find(@Param("uuid") String uuid);

    @Select("select * from sleep where #{start}< updateTime and updateTime < #{end} and uuid=#{uuid}")
    public Sleep findToday(@Param("uuid") String uuid,@Param("start")long start, @Param("end")long end);

    @Update("update sleep set uuid=#{uuid}," +
            "awake=#{awake},fallasleep=#{fallasleep},sleepquality=#{sleepquality}," +
            "affectmood=#{affectmood},affectability=#{affectability},troubleyou=#{troubleyou},wheneffect=#{wheneffect}," +
            "updateTime=#{updateTime} " +
            "where id=#{id}")
    public void updata(Sleep sleep);


    @Insert("insert into sleep" +
            "(" +
            "uuid,awake,fallasleep,sleepquality,affectmood," +
            "affectability,troubleyou,wheneffect,updateTime" +
            ")" +
            "value" +
            "(" +
            "#{uuid},#{awake},#{fallasleep},#{sleepquality},#{affectmood}," +
            "#{affectability},#{troubleyou},#{wheneffect},#{updateTime}) ")
    public void save(Sleep sleep);
}
