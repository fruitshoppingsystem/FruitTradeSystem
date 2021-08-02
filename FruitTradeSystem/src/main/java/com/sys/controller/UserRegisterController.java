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
    @RequestMapping("/userRegisterController")
    public String userRegister(String uEmail, String uName, String uPassword, Model model) {
        try {
            Users users = new Users();
            usersService.insertUser(users);
            return "/index";
        } catch (Exception e) {
            e.printStackTrace();
            return "/userRegister";
        }
    }
}