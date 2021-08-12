package com.sys.controller;

import com.sys.pojo.*;
import com.sys.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.math.BigDecimal;
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
    private CommentsService commentsService;
    @Autowired
    private ShoppingCartService shoppingCartService;
    @RequestMapping("/indexPage")
    public String firstPage(String uEmail, Model model){
        model.addAttribute("uEmail", uEmail);
        List<Goods> goods = goodsService.selectAllNotVIPGoods();
        model.addAttribute("goods",goods);
        List<Goods> vipGoods = goodsService.selectAllVIPGoods();
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
        Float vipTotalPrice = shoppingCartService.selectVIPTotalPrice(uEmail);
        model.addAttribute("vipTotalPrice", vipTotalPrice);
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
    public String adminPage(Integer aId, Model model){
        model.addAttribute("aId", aId);
        Admins admins = adminsService.selectAdminById(aId);
        model.addAttribute("admin", admins);
        List<Users> users = usersService.selectAllUsers();
        model.addAttribute("users", users);
        List<Merchants> merchants = merchantsService.selectAllMerchants();
        model.addAttribute("merchants", merchants);
        List<Merchants> acceptMerchants = merchantsService.selectAcceptMerchants();
        model.addAttribute("acceptMerchants", acceptMerchants);
        List<Merchants> notAcceptMerchants = merchantsService.selectNotAcceptMerchants();
        model.addAttribute("notAcceptMerchants", notAcceptMerchants);
        List<Orders> orders = ordersService.selectAllOrders();
        model.addAttribute("orders", orders);
        List<Goods> goods = goodsService.selectAllGoods();
        model.addAttribute("goods", goods);
        List<Comments> comments = commentsService.selectAllComments();
        model.addAttribute("comments", comments);
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
    public String commentPage(String uEmail,String mCertificatenum, Integer gId, Integer oId, Model model){
        model.addAttribute("uEmail", uEmail);
        model.addAttribute("mCertificatenum", mCertificatenum);
        model.addAttribute("gId", gId);
        model.addAttribute("oId", oId);
        return "comment";
    }

    @RequestMapping("/goodsPage")
    public String goodsPage(Integer gId, Model model, String uEmail){
        Goods good = goodsService.selectGoodById(gId);
        model.addAttribute("good", good);
        String mCertificatenum = good.getmCertificatenum();
        Merchants merchant = merchantsService.selectMerchantByCertificatenum(mCertificatenum);
        model.addAttribute("merchant", merchant);
        model.addAttribute("uEmail", uEmail);
        if (!uEmail.equals("")){
            int uVIP = usersService.selectVIPByEmail(uEmail);
            model.addAttribute("uVIP", uVIP);
        }else {
            int uVIP = 0;
            model.addAttribute("uVIP", uVIP);
        }
        List<Comments> comments = commentsService.selectCommentsById(gId);
        model.addAttribute("comments", comments);
        return "goods";
    }

    @RequestMapping("/shopPage")
    public String shopPage(String mCertificatenum, Model model, String uEmail){
        model.addAttribute("uEmail", uEmail);
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
        List<Goods> goods = goodsService.selectMerchantGoods(mCertificatenum);
        model.addAttribute("goods",goods);
        List<Goods> vipGoods = goodsService.selectMerchantVIPGoods(mCertificatenum);
        model.addAttribute("vipGoods", vipGoods);
        return "shop";
    }
}
