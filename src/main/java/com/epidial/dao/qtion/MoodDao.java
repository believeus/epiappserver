package com.epidial.dao.qtion;

import com.epidial.bean.McGill;
import com.epidial.bean.Mood;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface MoodDao {
    @Select("select * from mood where uuid=#{uuid} order by updateTime asc")
    public List<Mood> find(@Param("uuid") String uuid);

    @Select("select * from mood where #{start}< updateTime and updateTime < #{end} and uuid=#{uuid}")
    public Mood findToday(@Param("uuid") String uuid, @Param("start")long start,@Param("end")long end);

    @Update("update mood set uuid=#{uuid},pleasure=#{pleasure},depressed=#{depressed}," +
            "asleep=#{asleep},energy=#{energy},overeating=#{overeating}," +
            "failure=#{failure},focus=#{focus},slow=#{slow},anxiety=#{anxiety}," +
            "nervous=#{nervous},losecontrol=#{losecontrol},worry=#{worry},loserelax=#{loserelax}," +
            "restless=#{restless},irritable=#{irritable},afraid=#{afraid}," +
            "updateTime=#{updateTime} " +
            "where id=#{id}")
    public void updata(Mood mood);


    @Insert("insert into mood" +
            "(uuid,pleasure,depressed,asleep,energy,overeating,failure," +
             "focus,slow,anxiety,nervous,losecontrol,worry,loserelax," +
             "restless,irritable,afraid,updateTime" +
             ")" +
            "value" +
            "(#{uuid},#{pleasure},#{depressed},#{asleep},#{energy},#{overeating}," +
             "#{failure},#{focus},#{slow},#{anxiety},#{nervous},#{losecontrol},#{worry},#{loserelax}," +
             "#{restless},#{irritable},#{afraid},#{updateTime}) ")
    public void save(Mood mood);
}
