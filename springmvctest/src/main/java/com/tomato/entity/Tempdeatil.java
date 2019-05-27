package com.tomato.entity;

import java.math.BigDecimal;
import java.util.List;

public class Tempdeatil {
  private Integer id;

  private String deviceno;
  private String deviceid;

  private String othername;

  private Integer status;

  private Long starttime;

  private Integer point;

  private BigDecimal max;

  private BigDecimal min;

  private Integer isalarm;

  private BigDecimal alarmmax;

  private BigDecimal alarmmin;

  private BigDecimal avg;

  private BigDecimal mkt;

  private Long stoptime;

  private String readpwd;

  private String writepwd;

  private String uploadpwd;

  private String deviceflag;

  private String nickname;

  private Long uptime;

  private String openid;

  private Integer isdelete;

  private Integer recordinterval;

  private Integer recordcycle;

  private String startmode;

  private Integer startdelay;

  private String stopmode;

  private String pn;
  private String logTime;

  public String getLogTime() {
    return logTime;
  }

  public void setLogTime(String logTime) {
    this.logTime = logTime;
  }

  public String getDeviceid() {
    return deviceid;
  }

  public void setDeviceid(String deviceid) {
    this.deviceid = deviceid;
  }

  public BigDecimal getMax() {
    return max;
  }

  public void setMax(BigDecimal max) {
    this.max = max;
  }

  public BigDecimal getMin() {
    return min;
  }

  public void setMin(BigDecimal min) {
    this.min = min;
  }

  public void setIsalarm(Integer isalarm) {
    this.isalarm = isalarm;
  }

  public BigDecimal getAlarmmax() {
    return alarmmax;
  }

  public void setAlarmmax(BigDecimal alarmmax) {
    this.alarmmax = alarmmax;
  }

  public BigDecimal getAlarmmin() {
    return alarmmin;
  }

  public void setAlarmmin(BigDecimal alarmmin) {
    this.alarmmin = alarmmin;
  }

  public BigDecimal getAvg() {
    return avg;
  }

  public void setAvg(BigDecimal avg) {
    this.avg = avg;
  }

  public BigDecimal getMkt() {
    return mkt;
  }

  public void setMkt(BigDecimal mkt) {
    this.mkt = mkt;
  }

  private String ver;

  private List<String> templist;

  private byte[] temps;

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getDeviceno() {
    return deviceno;
  }

  public void setDeviceno(String deviceno) {
    this.deviceno = deviceno;
  }

  public String getOthername() {
    return othername;
  }

  public void setOthername(String othername) {
    this.othername = othername;
  }

  public Integer getStatus() {
    return status;
  }

  public void setStatus(Integer status) {
    this.status = status;
  }

  public Long getStarttime() {
    return starttime;
  }

  public void setStarttime(Long starttime) {
    this.starttime = starttime;
  }

  public Integer getPoint() {
    return point;
  }

  public void setPoint(Integer point) {
    this.point = point;
  }

  public Integer getIsalarm() {
    return isalarm;
  }

  public Long getStoptime() {
    return stoptime;
  }

  public void setStoptime(Long stoptime) {
    this.stoptime = stoptime;
  }

  public String getReadpwd() {
    return readpwd;
  }

  public void setReadpwd(String readpwd) {
    this.readpwd = readpwd;
  }

  public String getWritepwd() {
    return writepwd;
  }

  public void setWritepwd(String writepwd) {
    this.writepwd = writepwd;
  }

  public String getUploadpwd() {
    return uploadpwd;
  }

  public void setUploadpwd(String uploadpwd) {
    this.uploadpwd = uploadpwd;
  }

  public String getDeviceflag() {
    return deviceflag;
  }

  public void setDeviceflag(String deviceflag) {
    this.deviceflag = deviceflag;
  }

  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }

  public Long getUptime() {
    return uptime;
  }

  public void setUptime(Long uptime) {
    this.uptime = uptime;
  }

  public String getOpenid() {
    return openid;
  }

  public void setOpenid(String openid) {
    this.openid = openid;
  }

  public Integer getIsdelete() {
    return isdelete;
  }

  public void setIsdelete(Integer isdelete) {
    this.isdelete = isdelete;
  }

  public Integer getRecordinterval() {
    return recordinterval;
  }

  public void setRecordinterval(Integer recordinterval) {
    this.recordinterval = recordinterval;
  }

  public Integer getRecordcycle() {
    return recordcycle;
  }

  public void setRecordcycle(Integer recordcycle) {
    this.recordcycle = recordcycle;
  }

  public String getStartmode() {
    return startmode;
  }

  public void setStartmode(String startmode) {
    this.startmode = startmode;
  }

  public Integer getStartdelay() {
    return startdelay;
  }

  public void setStartdelay(Integer startdelay) {
    this.startdelay = startdelay;
  }

  public String getStopmode() {
    return stopmode;
  }

  public void setStopmode(String stopmode) {
    this.stopmode = stopmode;
  }

  public String getPn() {
    return pn;
  }

  public void setPn(String pn) {
    this.pn = pn;
  }

  public String getVer() {
    return ver;
  }

  public void setVer(String ver) {
    this.ver = ver;
  }

  public byte[] getTemps() {
    return temps;
  }

  public void setTemps(byte[] temps) {
    this.temps = temps;
  }

  public List<String> getTemplist() {
    return templist;
  }

  public void setTemplist(List<String> templist) {
    this.templist = templist;
  }
}
