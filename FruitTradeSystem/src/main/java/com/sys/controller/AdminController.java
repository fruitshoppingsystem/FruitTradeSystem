package com.sys.controller;

import com.sys.service.AdminsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminsService adminsService;

    @RequestMapping("/adminLogin")
    @ResponseBody
    public Boolean adminLogin(int aId, String aPassword){
        if (adminsService.findAdminById(aId) != 0){
            String password = adminsService.selectPasswordById(aId);
            if (aPassword.equals(password)){
                adminsService.updateState(aId, 1);
                return true;
            }else {
                return false;
            }
        }
        return false;
    }

}
