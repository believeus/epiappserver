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
                "(name,barcode,createtime,biological,expage,accuracy,eventtype,detection) " +
            "values" +
                "(#{name},#{barcode},#{createtime},#{biological},#{expage},#{accuracy},#{eventtype},#{detection})")
    public void save(Dnakit dnakit);
    @Insert({
            "<script>",
            "insert into dnakit" ,
            "(name,barcode,createtime,biological,expage,accuracy,eventtype,detection) " ,
            "values" ,
            "<foreach collection='dnakits' item='item' index='index' separator=','>",
                "(#{item.name},#{item.barcode},#{item.createtime},#{item.biological},#{item.expage},#{item.accuracy},#{item.eventtype},#{item.detection})",
            "</foreach>",
            "</script>"
    })
    public void saveDnakits(@Param(value="dnakits")  List<Dnakit> dnakits);

    @Select({
            "<script>",
                "select barcode from dnakit where barcode in " ,
                "<foreach item = 'item' index = 'index' collection = 'barcodes' open='(' separator=',' close=')'>" ,
                    "#{item}" ,
                "</foreach>",
            "</script>"
    })
    public  List<String> findDnakits(@Param(value="barcodes")  List<String> barcodes);

    @Update("update dnakit set " +
                    "name=#{name}," +
                    "barcode=#{barcode}," +
                    "biological=#{biological},"+
                    "expage=#{expage},"+
                    "accuracy=#{accuracy},"+
                    "createtime=#{createtime}, "+
                    "detection=#{detection}, "+
                    "eventtype=#{eventtype} "+
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
