package com.tomato.dao;

import com.tomato.entity.Message;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MessageMapperTest {
  private ApplicationContext applicationContext;

  @Autowired private MessageMapper mapper;

  @Before
  public void setUp() throws Exception {
    // 加载spring配置文件
    applicationContext =
        new ClassPathXmlApplicationContext(
            new String[] {
              "classpath:spring/applicationContext.xml", "classpath:spring/dispatcher-servlet.xml"
            });
    // 导入需要测试的
    mapper = applicationContext.getBean(MessageMapper.class);
  }

  @After
  public void tearDown() throws Exception {}

  @Test
  public void insert() throws Exception {
    Message message = new Message();
    message.setCommand("吃饭");
    message.setContent("睡觉");
    message.setDescription("打豆豆");
    int result = mapper.insert(message);
    System.out.println(result);
    assert (result == 1);
  }
}
