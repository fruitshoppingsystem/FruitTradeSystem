package com.sys.controller;

import com.sys.pojo.Users;
import com.sys.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UsersService usersService;

    @RequestMapping("/checkcaptcha")
    public @ResponseBody boolean checkcaptcha(HttpSession httpSession,@RequestParam String captcha){
        String captcha1 = (String)httpSession.getAttribute("Captcha");
        if(captcha.equals(captcha1)){
            return true;
        }else {
            return false;
        }
    }

    @RequestMapping("/deletecaptcha")
    public @ResponseBody void deletecaptcha(HttpSession httpSession){
        httpSession.removeAttribute("Captcha");
    }

    public void userRegister(Users users, HttpSession httpSession){
        usersService.insertUser(users);
    }

}