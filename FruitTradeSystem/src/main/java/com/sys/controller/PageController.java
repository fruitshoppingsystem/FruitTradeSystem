package com.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class PageController {
    @RequestMapping("/indexPage")
    public String firstPage(){
        return "index";
    }
    @RequestMapping("/loginPage")
    public String loginPage(){
        return "login";
    }
    @RequestMapping("/userRegisterPage")
    public String userRegisterPage(){
        return "userRegister";
    }
    @RequestMapping("/merchantRegisterPage")
    public String merchantRegisterPage(){
        return "merchantRegister";
    }
}
