package com.epidial.dao.epi;

import com.epidial.bean.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface UserDao {

    @Select("select * from user limit #{idx},#{size}")
    public List<User> pagingUser(@Param("idx") int idx, @Param("size") int size);

    /**功能描述: 用户注册*/
    @Insert("insert into user" +
                "(uuid,nickname,password,mail,valid,region,register,token) " +
            "values" +
                "(#{uuid},#{nickname},#{password},#{mail},#{valid},#{region},#{register},#{token})")
    public void save(User user);

    @Update("update user set " +
                    "uuid=#{uuid},"+
                    "nickname=#{nickname}," +
                    "password=#{password}," +
                    "mail=#{mail}," +
                    "valid=#{valid}," +
                    "region=#{region}," +
                    "register=#{register},lastLogin=#{lastLogin},token=#{token} where mail=#{mail}")
    public boolean  update(User user);

    //根据邮箱查找用户信息
    @Select("select * from user where ${column}=#{value}")
    public User findUser(@Param("column") String column, @Param("value") Object value);

    @Delete("delete from user where id=#{id}")
    public void delete(@Param("id") int id);









}
