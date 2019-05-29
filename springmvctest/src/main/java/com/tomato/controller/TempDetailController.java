package com.tomato.controller;

import com.tomato.entity.Admin;
import com.tomato.entity.Tempdeatil;
import com.tomato.service.TempDetailService;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/tempdetail")
public class TempDetailController {
  Logger logger = Logger.getLogger(TempDetailController.class);
  @Autowired private TempDetailService service;

  @RequestMapping("/index")
  @ResponseBody
  public String index() {
    System.out.println("11111111111111");
    return "index";
  }

  @RequestMapping("/detail")
  public ModelAndView detail(Integer id) {
    ModelAndView mv = new ModelAndView();
    Tempdeatil tempdeatil = service.getTempById(id);
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Long starttime = tempdeatil.getStarttime();
    Long stoptime = tempdeatil.getStoptime();
    Date date = new Date(starttime);
    Date date1 = new Date(stoptime);
    String format = sdf.format(date);
    String format1 = sdf.format(date1);
    Integer recordinterval = tempdeatil.getRecordinterval();
    List<String> strings = tempdeatil.getTemplist();
    // 数据处理
    List<Map<String, String>> lm = new ArrayList<>();
    for (int i = 0; i < strings.size(); i++) {
      // 时间点
      Date date2 = new Date(starttime + recordinterval * i * 1000);

      String format2 = sdf.format(date2);
      //      System.out.println(format);
      Map<String, String> m = new HashMap<>();
      m.put("time", format2);
      m.put("temp", strings.get(i));
      lm.add(m);
    }
    if (stoptime < starttime) {
      format1 = "";
    }

    Integer point = tempdeatil.getPoint();
    // 计算记录时间
    int i1 = recordinterval * point; // 总时间,单位秒
    // 天
    int i2 = i1 / (24 * 60 * 60);
    // 时
    int i3 = (i1 % (24 * 60 * 60)) / (60 * 60);
    //
    int i4 = ((i1 % (24 * 60 * 60)) % (60 * 60)) / 60; // 分
    StringBuffer sb = new StringBuffer();
    if (i2 > 0) {
      sb.append(i2 + "天");
    }
    if (i3 > 0) {
      sb.append(i3 + "小时");
    }

    if (i4 > 0) {
      sb.append(i4 + "分");
    }
    tempdeatil.setLogTime(sb.toString());
    sb = new StringBuffer();
    Integer recordcycle = tempdeatil.getRecordcycle();
    // 天
    i2 = recordcycle / (24 * 60 * 60);
    // 时
    i3 = (recordcycle % (24 * 60 * 60)) / (60 * 60);
    //
    i4 = ((recordcycle % (24 * 60 * 60)) % (60 * 60)) / 60; // 分

    if (i2 > 0) {
      sb.append(i2 + "天");
    }
    if (i3 > 0) {
      sb.append(i3 + "小时");
    }

    if (i4 > 0) {
      sb.append(i4 + "分");
    }

    String startmode = tempdeatil.getStartmode();

    String stopmode = tempdeatil.getStopmode();
    //    0：“N/A”
    //    1：“POR”
    //    2：“Power”
    //    3：“Protect”
    //    4： "手动"
    //    5：“USB”
    //    6：“自动”
    //    7：“Max”
    //    其它值： “UK”
    String stopmode1 = "";
    String startmode1 = "";
    switch (stopmode) {
      case "0":
        stopmode1 = "N/A";
        break;

      case "1":
        stopmode1 = "POR";
        break;

      case "2":
        stopmode1 = "Power";
        break;

      case "3":
        stopmode1 = "Protect";
        break;

      case "4":
        stopmode1 = "手动";
        break;

      case "5":
        stopmode1 = "USB";
        break;

      case "6":
        stopmode1 = "自动";
        break;
      case "7":
        stopmode1 = "Max";
        break;
      default:
        stopmode1 = "UK";
        break;
    }
    switch (startmode) {
      case "65":
        startmode1 = "自动";
        break;

      case "77":
        startmode1 = "手动";
        break;

      default:
        startmode1 = "N/A";
        break;
    }

    mv.addObject("recordcycle", sb.toString());
    mv.addObject("stopmode", stopmode1);
    mv.addObject("startmode", startmode1);
    mv.setViewName("detail");
    mv.addObject("tempdeatil", tempdeatil);
    mv.addObject("starttime", format);
    mv.addObject("lm", lm);
    mv.addObject("stoptime", format1);
    Admin admin = (Admin) SecurityUtils.getSubject().getPrincipal();

    mv.addObject("adminname", admin.getName());

    //    System.out.println(id);
    return mv;
  }

  @RequestMapping("/del")
  @ResponseBody
  public Map del(Integer id) {
    Map map = new HashMap();
    service.deleteTempById(id);
    map.put("success", "删除成功");
    return map;
  }

  @RequestMapping("/list")
  @ResponseBody
  public List<Tempdeatil> list() {
    Admin admin = (Admin) SecurityUtils.getSubject().getPrincipal();
    List<Tempdeatil> ls = service.getList(admin.getDeviceflag());
    for (int i = 0; i < ls.size(); i++) {
      Tempdeatil tempdeatil = ls.get(i);
      Integer recordinterval = tempdeatil.getRecordinterval();
      Integer point = tempdeatil.getPoint();
      // 计算记录时间
      int i1 = recordinterval * point; // 总时间,单位秒
      // 天
      int i2 = i1 / (24 * 60 * 60);
      // 时
      int i3 = (i1 % (24 * 60 * 60)) / (60 * 60);
      //
      int i4 = ((i1 % (24 * 60 * 60)) % (60 * 60)) / 60; // 分
      StringBuffer sb = new StringBuffer();
      if (i2 > 0) {
        sb.append(i2 + "天");
      }
      if (i3 > 0) {
        sb.append(i3 + "小时");
      }

      if (i4 > 0) {
        sb.append(i4 + "分");
      }

      tempdeatil.setLogTime(sb.toString());
      //      System.out.println(sb.toString());
    }
    return ls;
  }

  @RequestMapping("/templist")
  @ResponseBody
  public List<Map<String, String>> templist(Integer id) {
    //    List<Tempdeatil> ls = service.getList();
    List<Map<String, String>> ls = service.getTempList(id);
    return ls;
  }
}
