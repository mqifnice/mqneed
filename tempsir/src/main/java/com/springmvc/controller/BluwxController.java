package com.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bluwx")
public class BluwxController {
    @RequestMapping("/index")
    public String index(){
        System.out.println("111111111111111111111111");
        return "";
    }


}
