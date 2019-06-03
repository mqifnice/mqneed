package com.tomato.controller;

import com.tomato.entity.Tempdeatil;
import com.tomato.service.TempDetailService;
import com.tomato.until.AesCbcUtil;
import com.tomato.until.HttpRequest;
import com.tomato.until.Message;
import org.activiti.engine.impl.util.json.JSONObject;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/blu")
public class BluwxController {

  Logger logger = Logger.getLogger(BluwxController.class);

  @Autowired private TempDetailService tempDetailService;

  @RequestMapping("/index")
  public String index() {
    System.out.println("11111111111111");
    return "index";
  }

  @RequestMapping("/uptemps")
  @ResponseBody
  public Map uptemps(Tempdeatil tempdeatil) {
    logger.info("开始");
    Map map = new HashMap();
    if (tempdeatil == null) {
      logger.info("出错");
      map.put("status", 0);
      map.put("msg", "数据异常");
      return map;
    }
    logger.info("传参");
    Message message = tempDetailService.save(tempdeatil);
    map.put("status", message.getFlag());
    map.put("msg", message.getMess());
    return map;
  }

  @RequestMapping("/getuptime")
  @ResponseBody
  public Map getuptime(String deviceid, Long starttime) {
    Map map = new HashMap();
    if (StringUtils.isBlank(deviceid) || starttime == null) {
      map.put("status", 0);
      map.put("msg", "code 不能为空");
      map.put("uptime", "");
      return map;
    }
    // 获取上传时间
    map = tempDetailService.getUpTime(deviceid, starttime);
    logger.info("deviceid:" + deviceid);
    logger.info("starttime:" + starttime);

    return map;
  }

  @RequestMapping("/decodeUserInfo")
  @ResponseBody
  public Map decodeUserInfo(String encryptedData, String iv, String code) {

    Map map = new HashMap();

    // 登录凭证不能为空
    if (code == null || code.length() == 0) {
      map.put("status", 0);
      map.put("msg", "code 不能为空");
      return map;
    }

    // 小程序唯一标识 (在微信小程序管理后台获取)
    String wxspAppid = "wx88bd1bb34f266bcd";
    // 小程序的 app secret (在微信小程序管理后台获取)
    String wxspSecret = "7932d9b81c1c2b5917d8cce0b2bebbc6";
    // 授权（必填）
    String grant_type = "authorization_code";

    //////////////// 1、向微信服务器 使用登录凭证 code 获取 session_key 和 openid
    //////////////// ////////////////
    // 请求参数
    String params =
        "appid="
            + wxspAppid
            + "&secret="
            + wxspSecret
            + "&js_code="
            + code
            + "&grant_type="
            + grant_type;
    // 发送请求
    String sr = HttpRequest.sendGet("https://api.weixin.qq.com/sns/jscode2session", params);
    logger.info("数据返回:" + sr);
    // 解析相应内容（转换成json对象）
    JSONObject json = new JSONObject(sr);
    // 获取会话密钥（session_key）
    String session_key = json.get("session_key").toString();
    // 用户的唯一标识（openid）
    String openid = (String) json.get("openid");

    //////////////// 2、对encryptedData加密数据进行AES解密 ////////////////
    try {
      String result = AesCbcUtil.decrypt(encryptedData, session_key, iv, "UTF-8");
      if (null != result && result.length() > 0) {
        map.put("status", 1);
        map.put("msg", "解密成功");

        JSONObject userInfoJSON = new JSONObject(result);
        Map userInfo = new HashMap();
        userInfo.put("openId", userInfoJSON.get("openId"));
        userInfo.put("nickName", userInfoJSON.get("nickName"));
        userInfo.put("gender", userInfoJSON.get("gender"));
        userInfo.put("city", userInfoJSON.get("city"));
        userInfo.put("province", userInfoJSON.get("province"));
        userInfo.put("country", userInfoJSON.get("country"));
        userInfo.put("avatarUrl", userInfoJSON.get("avatarUrl"));
        // 解密unionId & openId;
        if (!userInfoJSON.isNull("unionId")) {
          userInfo.put("unionId", userInfoJSON.get("unionId"));
        }
        map.put("userInfo", userInfo);
      } else {
        map.put("status", 0);
        map.put("msg", "解密失败");
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    logger.info(map);
    return map;
  }
}
