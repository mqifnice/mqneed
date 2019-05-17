package com.tomato.service.impl;

import com.tomato.dao.AdminMapper;
import com.tomato.entity.Admin;
import com.tomato.service.AdminService;
import com.tomato.until.EmailUill;
import com.tomato.until.MD5Until;
import com.tomato.until.Message;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.SimplePrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.UUID;

@Service
public class AdminServiceImpl implements AdminService {

  @Autowired private AdminMapper mapper;

  @Override
  public Message saveAdmin(Admin admin) {
    // 查询是否存在email
    Message message = new Message();
    Admin byEmail = mapper.findByEmail(admin.getEmail());
    if (byEmail != null) {
      message.setFlag(2);
      message.setMess("邮箱已存在,请确认邮箱是否输入正确");
      return message;
    }
    admin.setPwd(MD5Until.md5(admin.getPwd()));
    mapper.insert(admin);
    message.setFlag(1);
    message.setMess("注册成功，请登录确认");
    return message;
  }

  @Override
  public Admin getAdminById(Integer id) {

    return mapper.selectByPrimaryKey(id);
  }

  @Override
  public Message sendEmail(String email) {
    Message message = new Message();

    // 获取用户
    Admin byEmail = mapper.findByEmail(email);
    if (byEmail == null) {
      message.setFlag(2);
      message.setMess("邮箱未注册,请确认邮箱是否输入正确");
      return message;
    }

    String link = createLink(byEmail);
    try {
      EmailUill.sendMail(
          "support@etomatoes.com", email, "support@etomatoes.com", "123456abC", "密码重置", link);
    } catch (Exception e) {
      e.printStackTrace();
    }
    message.setFlag(1);
    message.setMess("发送成功，请打开邮箱确认");
    return message;
  }

  @Override
  public Message forgotsavepwd(String id, String pwd) {
    Message message = new Message();
    Admin admin = mapper.selectByPrimaryKey(Integer.parseInt(id));
    admin.setPwd(MD5Until.md5(pwd));
    mapper.updateByPrimaryKey(admin);
    message.setFlag(1);
    message.setMess("密码更新成功");
    return message;
  }

  @Override
  public Message updateAdmin(Admin admin) {
    Message message = new Message();
    Admin a = mapper.selectByPrimaryKey(admin.getId());

    a.setName(admin.getName());
    a.setEmail(admin.getEmail());
    a.setMessage(admin.getMessage());
    a.setPhone(admin.getPhone());
    if (!StringUtils.isBlank(admin.getPwd())) {
      a.setPwd(MD5Until.md5(admin.getPwd()));
    }
    mapper.updateByPrimaryKey(a);
    message.setFlag(1);
    message.setMess("更新成功");
    Subject subject = SecurityUtils.getSubject();
    PrincipalCollection principalCollection = subject.getPrincipals();
    String realmName = principalCollection.getRealmNames().iterator().next();
    PrincipalCollection newPrincipalCollection = new SimplePrincipalCollection(a, realmName);
    subject.runAs(newPrincipalCollection);

    return message;
  }

  /** @Description: 生成邮箱链接地址 */
  public String createLink(Admin a) {

    // 生成密钥
    String secretKey = UUID.randomUUID().toString();
    // 设置过期时间
    Date outDate = new Date(System.currentTimeMillis() + 30 * 60 * 1000); // 30分钟后过期
    System.out.println(System.currentTimeMillis());
    long date = outDate.getTime() / 1000 * 1000; // 忽略毫秒数  mySql 取出时间是忽略毫秒数的

    // 此处应该更新Studentinfo表中的过期时间、密钥信息
    a.setOutDate(date);
    a.setValidatacode(secretKey);
    mapper.updateByPrimaryKey(a);
    // 将用户名、过期时间、密钥生成链接密钥
    String key = a.getEmail() + "$" + date + "$" + secretKey;

    String digitalSignature = MD5Until.md5(key); // 数字签名

    HttpServletRequest request =
        ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();

    String path = request.getContextPath();

    //    String basePath =
    //        request.getScheme()
    //            + "://"
    //            + request.getServerName()
    //            + ":"
    //            + request.getServerPort()
    //            + path;

    String resetPassHref =
        "www.tempsir.cn" + "/admin/forgotview?sid=" + digitalSignature + "&id=" + a.getId();

    String emailContent = "请勿回复本邮件.点击下面的链接,重设密码,本邮件超过30分钟,链接将会失效，需要重新申请找回密码." + resetPassHref;

    return emailContent;
  }
}
