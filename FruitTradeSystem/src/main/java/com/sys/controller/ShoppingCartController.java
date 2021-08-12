package com.sys.controller;

import com.sys.pojo.ShoppingCart;
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

    @RequestMapping("/addShoppingCart")
    @ResponseBody
    public Boolean addShoppingCart(String uEmail, String mCertificatenum, Integer gId, Integer sSum, String gName, Float gPrice, String gSize, Integer gVIP, String mName, String mPhonenum){
        ShoppingCart shoppingCart = new ShoppingCart(gId, uEmail, mCertificatenum, sSum, gName, gPrice, gSize, gVIP, mName, mPhonenum);
        shoppingCartService.addShoppingCart(shoppingCart);
        return true;
    }
}
