package com.tomato.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/device")
public class DeviceController {

  @RequestMapping("/detail")
  public ModelAndView login(Integer id) {
    ModelAndView mv = new ModelAndView();

    mv.setViewName("detail");
    System.out.println(id);
    return mv;
  }
}
