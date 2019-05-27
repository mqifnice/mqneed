package com.tomato.service;

import com.tomato.entity.Tempdeatil;
import com.tomato.until.Message;

import java.util.List;
import java.util.Map;

public interface TempDetailService {
  Message save(Tempdeatil tempdeatil);

  List<Tempdeatil> getList(String s);

  Tempdeatil getTempById(Integer id);

  List<Map<String, String>> getTempList(Integer id);

  void deleteTempById(Integer id);
}
