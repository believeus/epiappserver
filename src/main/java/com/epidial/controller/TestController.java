package com.epidial.controller;

import com.alibaba.fastjson.JSONObject;
import com.epidial.bean.Questionnaire;
import com.epidial.bean.User;
import com.epidial.dao.epi.QuestionnaireDao;
import com.epidial.dao.epi.UserDao;
import com.epidial.utils.AesUtil;
import org.apache.commons.io.FileUtils;
import org.apache.http.HttpResponse;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import javax.annotation.Resource;
import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

@RestController
public class TestController {
    @Resource
    private UserDao userDao;
    @Resource
    private QuestionnaireDao questionnaireDao;

    @ResponseBody
    @RequestMapping(value = "/user/getopenid", method = RequestMethod.POST)
    public Map getOpenid(String code, String encryptedData, String iv ){
        Map<String,Object> map = new HashMap<String,Object>();

        //登录凭证不能为空
        if (code == null || code.length() == 0) {
            map.put("status", 0);
            map.put("msg", "code 不能为空");
            System.out.println("map1:" + map);
            return map;
        }
        //小程序唯一标识   (在微信小程序管理后台获取)
        String wxspAppid = "wx4f53ae05242a3e7b";
        //小程序的 app secret (在微信小程序管理后台获取)
        String wxspSecret = "73acec450c056332720f026523e89e64";
        //授权（必填）
        String grant_type = "authorization_code";
        //////////////// 1、向微信服务器 使用登录凭证 code 获取 session_key 和 openid ////////////////
        //请求参数
        String params = "appid=" + wxspAppid + "&secret=" + wxspSecret + "&js_code=" + code + "&grant_type=" + grant_type;
        //发送请求
        RestTemplate restTemplate =new RestTemplate();
        String sr = restTemplate.postForEntity("https://api.weixin.qq.com/sns/jscode2session",params,String.class).getBody();
        // String sr = HttpRequest.sendPost("https://api.weixin.qq.com/sns/jscode2session", params);
        //解析相应内容（转换成json对象）
        JSONObject json = JSONObject.parseObject(sr);
        //获取会话密钥（session_key）
        String session_key = json.get("session_key").toString();
        //用户的唯一标识（openid）
        String openid = (String) json.get("openid");
        System.out.println("openid:" + openid);
        //1、 获取到openid进行查询，把大肠问卷写入数据库
        try {
            User user = userDao.findUser("uuid", openid);
            if (user == null) {
                user = new User();
                user.setUuid(openid);
                user.setNickname("wxid:"+openid.substring(0,8));
                user.setRegister(System.currentTimeMillis());
                user.setLastLogin(System.currentTimeMillis());
                userDao.save(user);
                Properties properties = new Properties();
                ClassLoader classLoader = this.getClass().getClassLoader();
                FileInputStream in = new FileInputStream(classLoader.getResource("application.properties").getPath());
                properties.load(in);
                String classpath = classLoader.getResource("/").getPath();
                String html = FileUtils.readFileToString(new File(classpath + "dachang.html"),"UTF-8");
                Questionnaire data = new Questionnaire();
                data.setUuid(openid);
                data.setComtab(html);
                //将字符串保存到
                questionnaireDao.save(data);
                System.out.println("保存成功");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
       //2、对encryptedData加密数据进行AES解密
        try {
            String result = AesUtil.decrypt(encryptedData, session_key, iv, "UTF-8");
            if (null != result && result.length() > 0) {
                map.put("status", 1);
                map.put("msg", "解密成功");
//                JSONObject userInfoJSON = JSONObject.parseObject(result);
//                Map<String,Object> userInfo = new HashMap<String,Object>();
//                userInfo.put("openId", userInfoJSON.get("openId"));
//                map.put("userInfo", userInfo);
                map.put("openid",openid);
                System.out.println("map2:" + map);
                return map;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        map.put("status", 0);
        map.put("msg", "解密失败");
        System.out.println("map3:" + map);
        return map;
    }
}
