package com.sys.controller;

import com.sys.pojo.Admins;
import com.sys.service.AdminsService;
import com.sys.service.MerchantsService;
import com.sys.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class LoginController {
    @Autowired
    private AdminsService adminsService;
    private UsersService usersService;
    private MerchantsService merchantsService;

    public String adminsLogin(Admins admins, Model model){
        return "";
    }

}
