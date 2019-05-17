package com.tomato.dao;

import com.tomato.entity.Tempdeatil;

public interface TempdeatilMapper {
  int deleteByPrimaryKey(Integer id);

  int insert(Tempdeatil record);

  int insertSelective(Tempdeatil record);

  Tempdeatil selectByPrimaryKey(Integer id);

  int updateByPrimaryKeySelective(Tempdeatil record);

  int updateByPrimaryKeyWithBLOBs(Tempdeatil record);

  int updateByPrimaryKey(Tempdeatil record);
}
