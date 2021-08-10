package com.sys.controller;

import com.sys.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/shoppingCart")
public class ShoppingCartController {
    @Autowired
    private ShoppingCartService shoppingCartService;

    @RequestMapping("/deleteShoppingCart")
    @ResponseBody
    public Boolean deleteShoppingCart(Integer sId){
        shoppingCartService.deleteShoppingCart(sId);
        return true;
    }
}
