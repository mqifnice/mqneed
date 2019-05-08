package com.tomato.dao;

import com.tomato.entity.Admin;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class AdminMapperTest {

  private ApplicationContext applicationContext;

  @Autowired private AdminMapper mapper;

  @Before
  public void setUp() throws Exception {
    // 加载spring配置文件
    applicationContext =
        new ClassPathXmlApplicationContext(
            new String[] {
              "classpath:spring/applicationContext.xml", "classpath:spring/dispatcher-servlet.xml"
            });
    // 导入需要测试的
    mapper = applicationContext.getBean(AdminMapper.class);
  }

  @After
  public void tearDown() throws Exception {}

  @Test
  public void insert() {
    Admin a = new Admin();
  }
}
