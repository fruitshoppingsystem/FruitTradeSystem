package com.sys.controller;

import com.sys.pojo.Users;
import com.sys.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserRegisterController {
    @Autowired
    private UsersService usersService;
    @RequestMapping("/userRegister")
    public String userRegister(Users users, Model model) {
        try {
            usersService.insertUser(users);
            model.addAttribute("msg", "注册成功！");
            return "index";
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "注册失败！");
            return "userRegister";
        }
    }
}