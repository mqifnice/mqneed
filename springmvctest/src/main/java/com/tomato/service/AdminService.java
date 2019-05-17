package com.tomato.service;

import com.tomato.entity.Admin;
import com.tomato.until.Message;

public interface AdminService {

  public Message saveAdmin(Admin admin);

  public Admin getAdminById(Integer id);

  public Message sendEmail(String email);

  Message forgotsavepwd(String id, String pwd);

  Message updateAdmin(Admin admin);
}
