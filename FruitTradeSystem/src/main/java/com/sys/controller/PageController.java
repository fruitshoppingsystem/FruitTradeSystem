package com.sys.controller;

import com.sys.pojo.*;
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
    @Autowired
    private ShoppingCartService shoppingCartService;
    @RequestMapping("/indexPage")
    public String firstPage(Model model){
        List<Goods> goods = goodsService.selectAllNotVIPGoods();
        System.out.println(goods.size());
        model.addAttribute("goods",goods);
        List<Goods> vipGoods = goodsService.selectAllVIPGoods();
        System.out.println(vipGoods.size());
        model.addAttribute("vipGoods", vipGoods);
        List<Merchants> merchants = merchantsService.selectAcceptMerchants();
        model.addAttribute("merchants", merchants);
        return "index";
    }
    @RequestMapping("/loginPage")
    public String loginPage(){
        return "login";
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
    public String userPage(String uEmail, Model model){
        model.addAttribute("uEmail", uEmail);
        Users user = usersService.selectUsersByEmail(uEmail);
        model.addAttribute("user", user);
        List<Orders> userOrders = ordersService.selectUserOrders(uEmail);
        model.addAttribute("orders", userOrders);
        List<ShoppingCart> userShoppingCart = shoppingCartService.selectByEmail(uEmail);
        model.addAttribute("shoppingCart", userShoppingCart);
        Float totalPrice = shoppingCartService.selectTotalPrice(uEmail);
        model.addAttribute("totalPrice", totalPrice);
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

    @RequestMapping("/commentPage")
    public String commentPage(String uEmail,String mCertificatenum, Model model){
        model.addAttribute("uEmail", uEmail);
        model.addAttribute("mCertificatenum", mCertificatenum);
        return "comment";
    }
}
