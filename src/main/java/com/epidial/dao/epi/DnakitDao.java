package com.epidial.dao.epi;

import com.epidial.bean.Dnakit;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface DnakitDao {

    @Select("select * from dnakit limit #{idx},#{size}")
    public List<Dnakit> paging(@Param("idx") int idx, @Param("size") int size);

    @Select("SELECT COUNT(*) FROM `dnakit`")
    public int count();

    /**功能描述: 用户注册*/
    @Insert("insert into dnakit" +
                "(name,barcode,createtime,biological,expage,accuracy) " +
            "values" +
                "(#{name},#{barcode},#{createtime},#{biological},#{expage},#{accuracy})")
    public void save(Dnakit dnakit);

    @Update("update dnakit set " +
                    "name=#{name}," +
                    "barcode=#{barcode}," +
                    "biological=#{biological},"+
                    "expage=#{expage},"+
                    "accuracy=#{accuracy},"+
                    "createtime=#{createtime} "+
                    "where id=#{id}")
    public boolean  update(Dnakit dnakit);

    //根据邮箱查找用户信息
    @Select("select * from dnakit where ${column}=#{value}")
    public Dnakit find(@Param("column") String column, @Param("value") Object value);

    @Delete("delete from dnakit where id=#{id}")
    public void delete(@Param("id") int id);

    @Delete("delete from dnakit where ${c}=#{v}")
    public void  deleteBy(@Param("c")String c,@Param("v") Object v);

    /*
    * 用户根据barcode查询
    * */
    @Select("select * from dnakit  where barcode like concat('%',#{barcode},'%')")
    List<Dnakit> getBybarcode(@Param("barcode") String barcode);








}
