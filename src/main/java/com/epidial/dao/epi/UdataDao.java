package com.epidial.dao.epi;

import com.epidial.bean.Udata;
import org.apache.ibatis.annotations.*;

import java.util.List;

//
@Mapper
public interface UdataDao {
    @Insert("insert into udata" +
                "(uuid,naturally,biological,accuracy,barcode,status,email,allow,createTime,uploadTime,detectTime,labevent)" +
            "values" +
                "(#{uuid},#{naturally},#{biological},#{accuracy},#{barcode},#{status},#{email},#{allow},#{createTime},#{uploadTime},#{detectTime},#{labevent})")
    public void  save(Udata udata);

    //pending processing finished
    @Select("select * from udata where ${c1}=#{v1} and ${c2}=#{v2}")
    public Udata find(@Param("c1") String c1, @Param("v1") Object v1, @Param("c2") String c2, @Param("v2") Object v2);
    @Select({
            "<script>",
            "select barcode from udata where barcode in " ,
            "<foreach item = 'item' index = 'index' collection = 'barcodes' open='(' separator=',' close=')'>" ,
            "#{item}" ,
            "</foreach>",
            "</script>"
    })
    public  List<String> findUdatas(@Param(value="barcodes")  List<String> barcodes);

    @Select("select * from udata where ${c}=#{v}")
    public Udata findBy(@Param("c") String c, @Param("v") Object v);

    @Select("select * from udata where uuid=#{uuid}")
    public List<Udata> findByUUID(@Param("uuid") String uuid);

    @Update("update udata set uuid=#{uuid},naturally=#{naturally},accuracy=#{accuracy},biological=#{biological},barcode=#{barcode},status=#{status},email=#{email},allow=#{allow},uploadTime=#{uploadTime},detectTime=#{detectTime},pendingTime=#{pendingTime},labevent=#{labevent} where id=#{id}")
    public void update(Udata data);

    @Select("select * from udata where naturally > biological and biological > 0  and naturally >0 and status='ready' limit 0,50")
    public List<Udata> findNtrGtBio();

    @Select("select * from udata where naturally < biological and biological > 0  and naturally >0  and status='ready' limit 0,50")
    public List<Udata> findNtrLtBio();

    @Select("select * from udata where  biological > 0  and naturally >0  and status='ready' limit 0,100")
    public List<Udata> findAllNB();

    @Select("select * from udata order by id  desc limit #{idx},#{sz} ")
    public List<Udata> findAll(@Param("idx") int idx, @Param("sz") int sz);

    @Delete("delete  from udata where ${k}=#{v}")
    public void  delete(@Param("k") String k, @Param("v") Object v);


    /*
     * 用户根据barcode查询
     * */
    @Select("select * from udata as u where barcode like concat('%',#{barcode},'%')")
    List<Udata> getBybarcode(@Param("barcode") String barcode);
}
