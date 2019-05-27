package com.tomato.service.impl;

import com.tomato.dao.TempdeatilMapper;
import com.tomato.entity.Tempdeatil;
import com.tomato.service.TempDetailService;
import com.tomato.until.BlobUntil;
import com.tomato.until.Message;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class TempDetailServiceImpl implements TempDetailService {
  Logger logger = Logger.getLogger(TempDetailService.class);
  @Autowired private TempdeatilMapper mapper;

  @Override
  public Message save(Tempdeatil tempdeatil) {
    Message m = new Message();
    //
    String deviceid = tempdeatil.getDeviceid();
    if (deviceid == null || deviceid == "") {
      m.setFlag(0);
      m.setMess("设备标识传入错误");
    } else {
      // 获取设备状态
      // 查找数据库设备信息
      Tempdeatil tempdeatilofDeviceId = mapper.selectByDeviceId(tempdeatil);
      // 初始化数据

      List<String> templist = tempdeatil.getTemplist();
      tempdeatil.setPoint(templist.size());
      tempdeatil.setIsdelete(0);
      try {
        byte[] bytes = BlobUntil.obj2byte(templist);
        tempdeatil.setTemps(bytes);
      } catch (Exception e) {
        logger.info(e.getMessage());
        e.printStackTrace();
      }
      Integer status = tempdeatil.getStatus();
      // 直接保存
      if (tempdeatilofDeviceId == null) {
        mapper.insert(tempdeatil);
        m.setFlag(1);
        m.setMess("数据上传完成");
      } else {
        // 更新保存
        if (!tempdeatil.getPoint().equals(tempdeatilofDeviceId.getPoint())) {
          tempdeatil.setId(tempdeatilofDeviceId.getId());
          mapper.updateByPrimaryKey(tempdeatil);
          m.setFlag(1);
          m.setMess("数据上传完成");
        }
      }
      m.setFlag(1);
      m.setMess("数据上传完成");
    }
    logger.info(m.getMess());
    return m;
  }

  @Override
  public List<Tempdeatil> getList(String s) {
    List<Tempdeatil> ls = mapper.selectAllByFlag(s);
    return ls;
  }

  @Override
  public Tempdeatil getTempById(Integer id) {
    Tempdeatil tempdeatil = mapper.selectByPrimaryKey(id);
    byte[] temps = tempdeatil.getTemps();
    try {
      List<String> strings = (List<String>) BlobUntil.byte2obj(temps);
      tempdeatil.setTemplist(strings);
      //      for (int i = 0; i < strings.size(); i++) {
      //        System.out.println(strings.get(i));
      //      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    return tempdeatil;
  }

  @Override
  public List<Map<String, String>> getTempList(Integer id) {
    List<Map<String, String>> ls = new ArrayList<>();
    Tempdeatil tempdeatil = mapper.selectByPrimaryKey(id);
    List<String> strings = null;
    byte[] temps = tempdeatil.getTemps();
    try {
      strings = (List<String>) BlobUntil.byte2obj(temps);
      //      for (int i = 0; i < strings.size(); i++) {
      //        System.out.println(strings.get(i));
      //      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    Long starttime = tempdeatil.getStarttime();
    Integer recordinterval = tempdeatil.getRecordinterval();
    // 数据处理
    List<Map<String, String>> lm = new ArrayList<>();
    for (int i = 0; i < strings.size(); i++) {
      // 时间点
      Date date = new Date(starttime + recordinterval * i * 1000);
      String format = sdf.format(date);
      Map<String, String> m = new HashMap<>();
      m.put("id", (i + 1) + "");
      m.put("time", format);
      m.put("temp", strings.get(i));
      lm.add(m);
    }
    // 改造数据

    Integer totalpage = lm.size() % 40 == 0 ? lm.size() / 40 : lm.size() / 40 + 1;
    Integer totalnum = lm.size();

    //    for (int i = 0; i <= 1001 / 4; i++) {}
    for (int i = 0; i < totalpage; i++) {
      for (int j = 0; j < 10; j++) {
        Map<String, String> m = new HashMap<>();
        if (i < totalpage - 1) {
          Map<String, String> m1 = lm.get(40 * i + j);
          Map<String, String> m2 = lm.get(40 * i + 10 + j);
          Map<String, String> m3 = lm.get(40 * i + 20 + j);
          Map<String, String> m4 = lm.get(40 * i + 30 + j);
          m.put("id1", m1.get("id"));
          m.put("time1", m1.get("time"));
          m.put("temp1", m1.get("temp"));
          m.put("id2", m2.get("id"));
          m.put("time2", m2.get("time"));
          m.put("temp2", m2.get("temp"));
          m.put("id3", m3.get("id"));
          m.put("time3", m3.get("time"));
          m.put("temp3", m3.get("temp"));
          m.put("id4", m4.get("id"));
          m.put("time4", m4.get("time"));
          m.put("temp4", m4.get("temp"));

          ls.add(m);
        } else {
          if (40 * i + 30 + j < totalnum) {
            Map<String, String> m1 = lm.get(40 * i + j);
            Map<String, String> m2 = lm.get(40 * i + 10 + j);
            Map<String, String> m3 = lm.get(40 * i + 20 + j);
            Map<String, String> m4 = lm.get(40 * i + 30 + j);
            m.put("id1", m1.get("id"));
            m.put("time1", m1.get("time"));
            m.put("temp1", m1.get("temp"));
            m.put("id2", m2.get("id"));
            m.put("time2", m2.get("time"));
            m.put("temp2", m2.get("temp"));
            m.put("id3", m3.get("id"));
            m.put("time3", m3.get("time"));
            m.put("temp3", m3.get("temp"));
            m.put("id4", m4.get("id"));
            m.put("time4", m4.get("time"));
            m.put("temp4", m4.get("temp"));

            ls.add(m);
          } else if (40 * i + 20 + j < totalnum) {
            Map<String, String> m1 = lm.get(40 * i + j);
            Map<String, String> m2 = lm.get(40 * i + 10 + j);
            Map<String, String> m3 = lm.get(40 * i + 20 + j);
            m.put("id1", m1.get("id"));
            m.put("time1", m1.get("time"));
            m.put("temp1", m1.get("temp"));
            m.put("id2", m2.get("id"));
            m.put("time2", m2.get("time"));
            m.put("temp2", m2.get("temp"));
            m.put("id3", m3.get("id"));
            m.put("time3", m3.get("time"));
            m.put("temp3", m3.get("temp"));

            ls.add(m);
          } else if (40 * i + 10 + j < totalnum) {
            Map<String, String> m1 = lm.get(40 * i + j);
            Map<String, String> m2 = lm.get(40 * i + 10 + j);
            m.put("id1", m1.get("id"));
            m.put("time1", m1.get("time"));
            m.put("temp1", m1.get("temp"));
            m.put("id2", m2.get("id"));
            m.put("time2", m2.get("time"));
            m.put("temp2", m2.get("temp"));

            ls.add(m);
          } else if (40 * i + j < totalnum) {
            Map<String, String> m1 = lm.get(40 * i + j);
            m.put("id1", m1.get("id"));
            m.put("time1", m1.get("time"));
            m.put("temp1", m1.get("temp"));
            ls.add(m);
          }
        }
      }
    }

    //    new Date()
    return ls;
  }

  @Override
  public void deleteTempById(Integer id) {
    mapper.deleteTempById(id);
  }
}
