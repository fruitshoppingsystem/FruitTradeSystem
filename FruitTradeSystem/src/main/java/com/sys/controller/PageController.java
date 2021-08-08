package com.sys.controller;

import com.sys.pojo.Goods;
import com.sys.pojo.Orders;
import com.sys.pojo.Users;
import com.sys.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/page")
public class PageController {
    @Autowired
    private UsersService usersService;
    @Autowired
    private MerchantsService merchantsService;
    @Autowired
    private AdminsService adminsService;
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private OrdersService ordersService;
    @RequestMapping("/indexPage")
    public String firstPage(){
        return "index";
    }
    @RequestMapping("/loginPage")
    public String loginPage(Model model){
        if (usersService.selectUserLogin()){
            return userPage();
        }else if (merchantsService.selectMerchantLogin()){
            return merchantPage(merchantsService.selectLoginCertificatenum(), model);
        }else if (adminsService.selectAdminLogin()){
            return adminPage();
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
    public String merchantPage(String mCertificatenum, Model model){
        model.addAttribute("mCertificatenum", mCertificatenum);
        String mName = merchantsService.selectNameByCertificatenum(mCertificatenum);
        model.addAttribute("mName",mName);
        String mAddress = merchantsService.selectAddressByCertificatenum(mCertificatenum);
        if(mAddress != null){
            model.addAttribute("mAddress", mAddress);
        }
        String mPhonenum = merchantsService.selectPhoneByCertificatenum(mCertificatenum);
        if (mPhonenum != null){
            model.addAttribute("mPhonenum", mPhonenum);
        }
        int mScore = merchantsService.selectScoreByCertificatenum(mCertificatenum);
        model.addAttribute("mScore", mScore);
        List<Goods> merchantGoods = goodsService.selectGoodsByCertificatenum(mCertificatenum);
        model.addAttribute("goods", merchantGoods);
        List<Orders> merchantOrders = ordersService.selectMerchantOrders(mCertificatenum);
        model.addAttribute("orders", merchantOrders);
        return "merchant";
    }
    @RequestMapping("/adminPage")
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("/addGoodsPage")
    public String addGoodsPage(String mCertificatenum, Model model){
        model.addAttribute("mCertificatenum", mCertificatenum);
        return "addGoods";
    }

    @RequestMapping("/updateGoodsPage")
    public String updateGoodsPage(Integer gId, Model model){
        Goods good = goodsService.selectGoodById(gId);
        model.addAttribute("good", good);
        return "updateGoods";
    }
}
