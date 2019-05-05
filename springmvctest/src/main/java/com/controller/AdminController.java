package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @RequestMapping("/login")
    public String login(String email,String password ){
        System.out.println(email);
     return "index";
    }
}
