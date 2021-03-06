package com.epidial.dao.qtion;
import com.epidial.bean.Diet;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface DietDao {
    @Select("select * from diet where uuid=#{uuid} order by updateTime asc")
    public List<Diet> find(@Param("uuid") String uuid);

    @Select("select * from diet where #{start}< updateTime and updateTime < #{end} and uuid=#{uuid}")
    public Diet findToday(@Param("uuid") String uuid,@Param("start") long start,@Param("end") long end);

    @Update("update diet set uuid=#{uuid},foodname=#{foodname},calories=#{calories}," +
            "updateTime=#{updateTime} " +
            "where id=#{id}")
    public void updata(Diet diet);


    @Insert("insert into diet" +
            "(uuid,foodname,calories,updateTime" +
             ")" +
            "value" +
            "(#{uuid},#{foodname},#{calories},#{updateTime}) ")
    public void save(Diet diet);
}
