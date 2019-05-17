package com.tomato.until;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class EmailUill {
  /**
   * 发送邮件 (阿里云邮箱企业版)
   *
   * @param fromEmail 发送邮箱
   * @param toEmail 接收邮箱
   * @param emailName 阿里云邮箱登录名
   * @param emailPassword 密码
   * @param title 发送主题
   * @param centent 发送内容
   * @throws Exception
   */
  public static void sendMail(
      String fromEmail,
      String toEmail,
      String emailName,
      String emailPassword,
      String title,
      String centent)
      throws Exception {
    Properties prop = new Properties();
    prop.put("mail.host", "smtp.mxhichina.com");
    prop.put("mail.transport.protocol", "smtp");
    prop.put("mail.smtp.auth", "true");
    Session session = Session.getInstance(prop);
    session.setDebug(true);
    Transport ts = session.getTransport();
    ts.connect(emailName, emailPassword);
    Message message = new MimeMessage(session);
    message.setFrom(new InternetAddress(fromEmail));
    message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
    message.setSubject(title);
    message.setContent(centent, "text/html;charset=utf-8");
    ts.sendMessage(message, message.getAllRecipients());
  }
}
