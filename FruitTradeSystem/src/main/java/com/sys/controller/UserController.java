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

    @RequestMapping("/checkCaptcha")
    public @ResponseBody boolean checkCaptcha(HttpSession httpSession, @RequestParam("captcha") String captcha){
        String captcha1 = (String) httpSession.getAttribute("Captcha");
        if(captcha.equals(captcha1)){
            return true;
        }else {
            return false;
        }
    }

    @RequestMapping("/deleteCaptcha")
    public @ResponseBody void deleteCaptcha(HttpSession httpSession){
        httpSession.removeAttribute("Captcha");
    }

    @RequestMapping("/userRegister")
    @ResponseBody
    public Boolean userRegister(String uEmail, String uName, String uPassword){
        if (usersService.findUserByEmail(uEmail) == 0){
            usersService.userRegister(uEmail, uName, uPassword);
            return true;
        }else {
            return false;
        }
    }

}