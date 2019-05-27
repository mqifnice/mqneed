package com.tomato.dao;

import com.tomato.entity.Tempdeatil;

import java.util.List;

public interface TempdeatilMapper {
  int deleteByPrimaryKey(Integer id);

  int insert(Tempdeatil record);

  int insertSelective(Tempdeatil record);

  Tempdeatil selectByPrimaryKey(Integer id);

  int updateByPrimaryKeySelective(Tempdeatil record);

  int updateByPrimaryKeyWithBLOBs(Tempdeatil record);

  int updateByPrimaryKey(Tempdeatil record);

  Tempdeatil selectByDeviceId(Tempdeatil record);

  List<Tempdeatil> selectAll();

  List<Tempdeatil> selectAllByFlag(String deviceflag);

  void deleteTempById(Integer id);
}
