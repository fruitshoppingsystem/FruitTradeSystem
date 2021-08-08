package com.sys.controller;

import com.sys.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrdersService ordersService;

    @RequestMapping("/uploadTrackingnum")
    public void uploadTrackingnum(int oTrackingnum, int oId){
        ordersService.updateTrackingnum(oTrackingnum, oId);
    }
}
