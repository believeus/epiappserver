package com.epidial.dao.qtion;

import com.epidial.bean.McGill;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface McGillDao {
    @Select("select * from mcgill where uuid=#{uuid} order by updateTime desc")
    public List<McGill> find(@Param("uuid") String uuid);

    @Select("select * from mcgill where #{start}< updateTime and updateTime < #{end} and uuid=#{uuid}")
    public McGill findToday(@Param("uuid") String uuid, long start, long end);

    @Update("update mcgill set uuid=#{uuid},throbbing=#{throbbing},shooting=#{shooting}," +
            "stabbing=#{stabbing},sharp=#{sharp},cramping=#{cramping}," +
            "gnawing=#{gnawing},burning=#{burning},aching=#{aching},heavy=#{heavy}," +
            "tender=#{tender},split=#{split}," +
            "exhausting=#{exhausting},sickening=#{sickening}," +
            "fearful=#{fearful},updateTime=#{updateTime} " +
            "where id=#{id}")
    public void updata(McGill mcGill);

    @Insert("insert into mcgill" +
            "(uuid,throbbing,shooting,stabbing,sharp,cramping,gnawing," +
             "burning,aching,heavy,tender,split,exhausting,sickening," +
             "fearful,updateTime)" +
            "value" +
            "(#{uuid},#{throbbing},#{shooting},#{stabbing},#{sharp},#{cramping}," +
             "#{gnawing},#{burning},#{aching},#{heavy},#{tender},#{split}," +
             "#{exhausting},#{sickening},#{fearful},#{updateTime}) ")
    public void save(McGill mcGill);
}
