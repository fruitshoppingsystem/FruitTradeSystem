package com.sys.controller;

import com.sys.service.AdminsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class AdminsController {
    @Autowired
    private AdminsService adminsService;

}
