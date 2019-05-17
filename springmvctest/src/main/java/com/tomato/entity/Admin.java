package com.tomato.entity;

public class Admin {
  private Integer id;

  private String name;

  private String pwd;

  private String email;

  private String phone;

  private Integer idelete;

  private String message;

  private String country;

  private Integer power;

  private Long outDate;

  private String validatacode;

  public Long getOutDate() {
    return outDate;
  }

  public void setOutDate(Long outDate) {
    this.outDate = outDate;
  }

  public String getValidatacode() {
    return validatacode;
  }

  public void setValidatacode(String validatacode) {
    this.validatacode = validatacode;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getPwd() {
    return pwd;
  }

  public void setPwd(String pwd) {
    this.pwd = pwd;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public Integer getIdelete() {
    return idelete;
  }

  public void setIdelete(Integer idelete) {
    this.idelete = idelete;
  }

  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public String getCountry() {
    return country;
  }

  public void setCountry(String country) {
    this.country = country;
  }

  public Integer getPower() {
    return power;
  }

  public void setPower(Integer power) {
    this.power = power;
  }
}
