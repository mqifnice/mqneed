package com.tomato.dao;

import org.junit.After;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.List;

public class AdminMapperTest {

  private ApplicationContext applicationContext;

  @Autowired private AdminMapper mapper;

  //  @Before
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

    //    Admin a = new Admin();

    //    System.out.println(11111);
    List<String> ls = new ArrayList<>(1001 / 40 + 1);
    //    for (int i = 0; i <= 1001 / 4; i++) {}
    for (int i = 0; i < 26; i++) {
      for (int j = 0; j < 10; j++) {
        if (40 * i + 30 + j < 1039) {
          ls.add(
              (40 * i + j)
                  + " "
                  + (40 * i + 10 + j)
                  + " "
                  + (40 * i + 20 + j)
                  + " "
                  + (40 * i + 30 + j));
        } else if (40 * i + 20 + j < 1039) {
          ls.add((40 * i + j) + " " + (40 * i + 10 + j) + " " + (40 * i + 20 + j));
        } else if (40 * i + 10 + j < 1039) {
          ls.add((40 * i + j) + " " + (40 * i + 10 + j));
        } else if (40 * i + j < 1039) {
          ls.add((40 * i + j) + " ");
        }
      }
    }

    for (int i = 0; i < ls.size(); i++) {
      System.out.println(ls.get(i));
    }
  }
}
