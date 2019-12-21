package com.epidial.controller;

import com.alibaba.fastjson.JSONObject;

import com.epidial.utils.AesUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;


@Controller
public class WxQuesController {


    @ResponseBody
    @RequestMapping(value = "/wx/question", method = RequestMethod.POST)
    public Map onlyopenid(String code){
        Map<String,String> map = new HashMap<String,String>();
        //登录凭证不能为空
        if (code == null || code.length() == 0) {
            map.put("status", "0");
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
        //1、对encryptedData加密数据进行AES解密
        if(openid!=null){
            map.put("openid",openid);
            System.out.println("map:"+openid);
            return map;
        }

        map.put("status", "0");
        map.put("msg", "解密失败");
        System.out.println("map3:" + map);
        return map;
    }
}
