package com.sys.controller;

import com.sys.service.AdminsService;
import com.sys.service.MerchantsService;
import com.sys.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/page")
public class PageController {
    @Autowired
    private UsersService usersService;
    @Autowired
    private MerchantsService merchantsService;
    @Autowired
    private AdminsService adminsService;
    @RequestMapping("/indexPage")
    public String firstPage(){
        return "index";
    }
    @RequestMapping("/loginPage")
    public String loginPage(){
        if (usersService.selectUserLogin()){
            return "user";
        }else if (merchantsService.selectMerchantLogin()){
            return "merchant";
        }else if (adminsService.selectAdminLogin()){
            return "admin";
        }else {
            return "login";
        }
    }
    @RequestMapping("/userRegisterPage")
    public String userRegisterPage(){
        return "userRegister";
    }
    @RequestMapping("/merchantRegisterPage")
    public String merchantRegisterPage(){
        return "merchantRegister";
    }

    @RequestMapping("/userPage")
    public String userPage(){
        return "user";
    }
    @RequestMapping("/merchantPage")
    public String merchantPage(){
        return "merchant";
    }
    @RequestMapping("/adminPage")
    public String adminPage(){
        return "admin";
    }
}
