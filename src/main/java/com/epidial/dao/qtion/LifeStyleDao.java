package com.epidial.dao.qtion;

import com.epidial.bean.Life;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface LifeStyleDao {
    @Select("select * from lifestyle where uuid=#{uuid} order by updateTime asc")
    public List<Life> find(@Param("uuid") String uuid);

    @Select("select * from lifestyle where #{start}< updateTime and updateTime < #{end} and uuid=#{uuid}")
    public Life findToday(@Param("uuid") String uuid,@Param("start") long start,@Param("end") long end);

    @Update("update lifestyle set uuid=#{uuid}," +
            "height=#{height},weight=#{weight},bmi=#{bmi}," +
            "sport=#{sport},heartrate=#{heartrate},systolicBP=#{systolicBP},diastolicBP=#{diastolicBP}," +
            "cholesterol=#{cholesterol},sleep=#{sleep},meditation=#{meditation}," +
            "sexfrequency=#{sexfrequency},sexscore=#{sexscore},smoking=#{smoking}," +
            "alcohol=#{alcohol},vitaminA=#{vitaminA}," +
            "vitaminC=#{vitaminC},vitaminD=#{vitaminD},calories=#{calories}," +
            "same=#{same},resveratrol=#{resveratrol},nmn=#{nmn},dhea=#{dhea},updateTime=#{updateTime}," +
            "lipoic=#{lipoic},vitaminD2=#{vitaminD2},vitaminK2=#{vitaminK2},tmg=#{tmg} where id=#{id}")
    public void updata(Life life);

    @Insert("insert into lifestyle" +
            "(uuid,height,weight,bmi,sport,heartrate,systolicBP,diastolicBP,cholesterol,sleep,meditation," +
            "sexfrequency,sexscore,smoking,alcohol,vitaminA,vitaminC,vitaminD,calories,same,resveratrol," +
            "nmn,dhea,lipoic,vitaminD2,vitaminK2,tmg,updateTime) " +
            "value" +
            "(#{uuid},#{height},#{weight},#{bmi},#{sport},#{heartrate},#{systolicBP},#{diastolicBP}," +
            "#{cholesterol},#{sleep},#{meditation},#{sexfrequency},#{sexscore},#{smoking}," +
            "#{alcohol},#{vitaminA},#{vitaminC},#{vitaminD},#{calories},#{same},#{resveratrol},#{nmn},#{dhea}," +
            "#{lipoic},#{vitaminD2},#{vitaminK2},#{tmg},#{updateTime}) ")
    public void save(Life life);
}
