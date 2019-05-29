package com.tomato.controller;

import com.tomato.entity.Admin;
import com.tomato.service.AdminService;
import com.tomato.until.MD5Until;
import com.tomato.until.Message;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {
  Logger logger = Logger.getLogger(AdminController.class);

  @Autowired private AdminService adminService;

  @RequestMapping("/login")
  public ModelAndView login(String email, String password, HttpSession session) {
    ModelAndView mv = new ModelAndView();

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
      //      mv.addObject("message", "登录失败，请确认用户名密码是否正确。");
      //      mv.addObject("flag", 2);
      mv.setViewName("login");
      return mv;
    }
    //    if (!("515874047@qq.com").equals(email) || !("123456").equals(password)) {}
    Admin admin = (Admin) SecurityUtils.getSubject().getPrincipal();
    session.setAttribute("email", email);
    session.setAttribute("password", password);
    mv.setViewName("index");
    mv.addObject("adminname", admin.getName());

    return mv;
  }

  @RequestMapping("/user")
  public ModelAndView user(HttpSession session) {
    ModelAndView mv = new ModelAndView();

    Admin admin = (Admin) SecurityUtils.getSubject().getPrincipal();
    System.out.println(admin.getName());
    mv.setViewName("user");
    mv.addObject("admin", admin);
    return mv;
  }

  @RequestMapping("/register")
  public ModelAndView register(String email, String password, String name, HttpSession session) {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("login");
    Admin admin = new Admin();
    admin.setPwd(password);
    admin.setEmail(email);
    admin.setName(name);
    Message ms = adminService.saveAdmin(admin);
    mv.addObject("message", ms.getMess());
    mv.addObject("flag", ms.getFlag());
    return mv;
  }

  @RequestMapping("/forgot")
  public ModelAndView forgot(String email) {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("login");
    Admin admin = new Admin();
    admin.setEmail(email);
    Message ms = adminService.sendEmail(email);
    mv.addObject("message", ms.getMess());
    mv.addObject("flag", ms.getFlag());
    return mv;
  }

  @RequestMapping("/forgotsavepwd")
  public ModelAndView forgotsavepwd(String id, String pwd) {
    ModelAndView mv = new ModelAndView();

    mv.setViewName("login");
    if (StringUtils.isBlank(id)) {
      System.out.println("请求的链接不正确,请重新操作.");
    }

    Message ms = adminService.forgotsavepwd(id, pwd);
    mv.addObject("message", ms.getMess());
    mv.addObject("flag", ms.getFlag());
    return mv;
  }

  @RequestMapping("/updateAdmin")
  public ModelAndView updateAdmin(Admin admin) {
    ModelAndView mv = new ModelAndView();

    mv.setViewName("login");
    if (admin.getId() == null) {
      System.out.println("请求的链接不正确,请重新操作.");
    }

    Message ms = adminService.updateAdmin(admin);
    mv.addObject("message", ms.getMess());
    mv.addObject("flag", ms.getFlag());
    Subject currentUser = SecurityUtils.getSubject();
    String result = "logout";
    currentUser.logout();
    return mv;
  }

  @RequestMapping("/logout")
  public ModelAndView logout() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("login");
    Subject currentUser = SecurityUtils.getSubject();
    currentUser.logout();
    System.out.println("xxxxxxxxxxxxxxx");
    return mv;
  }

  @RequestMapping("/forgotview")
  public ModelAndView forgotview(String sid, String id) {
    String message = "";
    ModelAndView mv = new ModelAndView();
    mv.setViewName("forgotview");
    if (StringUtils.isBlank(sid) || StringUtils.isBlank(id)) {
      System.out.println("请求的链接不正确,请重新操作.");
      message = "请求的链接不正确,请重新操作.";
    }
    Admin adminById = adminService.getAdminById(Integer.parseInt(id));

    if (adminById != null) {
      // 获取当前用户申请找回密码的过期时间
      // 找回密码链接已经过期
      if (adminById.getOutDate() <= System.currentTimeMillis()) {
        System.out.println("链接已经过期");
        message = "链接已经过期";
      }
      // 获取当前登陆人的加密码
      String key =
          adminById.getEmail()
              + "$"
              + adminById.getOutDate() / 1000 * 1000
              + "$"
              + adminById.getValidatacode(); // 数字签名

      String digitalSignature = MD5Until.md5(key); // 数字签名

      if (!digitalSignature.equals(sid)) {
        System.out.println("链接加密密码不正确");
        message = "链接加密密码不正确";
      } else {
        // 验证成功,跳入到修改密码界面
        mv.addObject("admin", adminById);
      }

    } else {
      System.out.println("用户信息不存在");
      message = "用户信息不存在";
      mv.addObject("message", message);
    }
    Admin admin = new Admin();
    mv.addObject("message", message);
    mv.addObject("flag", 1);
    return mv;
  }
}
