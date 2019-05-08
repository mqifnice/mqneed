package com.tomato.dao;

import com.tomato.entity.Admin;

public interface AdminMapper {

  int deleteByPrimaryKey(Integer id);

  int insert(Admin record);

  int insertSelective(Admin record);

  Admin selectByPrimaryKey(Integer id);

  int updateByPrimaryKeySelective(Admin record);

  int updateByPrimaryKey(Admin record);

  Admin findByName(String name);

  Admin findByEmail(String email);
}
