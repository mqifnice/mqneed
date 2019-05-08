package com.tomato.until;

import com.tomato.dao.AdminMapper;
import com.tomato.entity.Admin;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRealm extends AuthorizingRealm {

  @Autowired private AdminMapper admin;

  @Override
  public String getName() {
    return "customRealm";
  }

  /** 认证 */
  @Override
  protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token)
      throws AuthenticationException {
    // 获取用户名称
    String email = (String) token.getPrincipal();
    System.out.println("email:" + email);
    Admin a = admin.findByEmail(email);
    if (a == null) {
      // 用户名不存在抛出异常
      System.out.println("认证：当前登录的用户不存在");
      throw new UnknownAccountException();
    }
    String pwd = a.getPwd();
    System.out.println("pwd:" + pwd);
    return new SimpleAuthenticationInfo(a, pwd, getName());
  }

  /** 授权 */
  @Override
  protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection princ) {
    return null;
  }
}
