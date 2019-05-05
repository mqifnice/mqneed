package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/device")
public class DeviceController {
  @RequestMapping("/detail")
  public String login(String name) {
    System.out.println(name);
    return "detail";
  }
}
