package com.epidial.dao.epi;

import com.epidial.bean.Questionnaire;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface QuestionnaireDao {

   //*
    // 判断Questionnaire表中，用户是否已经存在调查
    // */
    @Select("select * from questionnaire where fk_uid=#{uid}")
    public Questionnaire getByuId(@Param("uid") String uid);

    /*
    *  判断后，入用户没有调查过，直接新增
    * */
    @Insert("insert into questionnaire (fk_uid,comtab) values(#{uid},#{comtab})")
    public void save(Questionnaire data);

    /*
    * 如果已有，进行修改字段内容，把之前的页面覆盖
    * */
    @Update("update questionnaire set comtab=#{comtab} where fk_uid=#{uid}")
    public void update(Questionnaire data);
}
