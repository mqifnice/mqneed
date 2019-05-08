package com.tomato.controller;

import com.tomato.dao.AdminMapper;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

  @Autowired private AdminMapper adminMapper;

  @RequestMapping("/login")
  public String login(String email, String password, HttpSession session) {
    if (email == null || "".equals(email)) {
      email = (String) session.getAttribute("email");
      password = (String) session.getAttribute("password");
      System.out.println(email);
    }
    System.out.println(email);
    // 获取主体
    Subject subject = SecurityUtils.getSubject();
    try {
      // 调用安全认证框架的登录方法
      subject.login(new UsernamePasswordToken(email, password));
    } catch (AuthenticationException ex) {
      System.out.println("登陆失败: " + ex.getMessage());
      return "login";
    }
    //    if (!("515874047@qq.com").equals(email) || !("123456").equals(password)) {}

    session.setAttribute("email", email);
    session.setAttribute("password", password);

    return "index";
  }

  @RequestMapping("/user")
  public String user(HttpSession session) {
    return "user";
  }
}
