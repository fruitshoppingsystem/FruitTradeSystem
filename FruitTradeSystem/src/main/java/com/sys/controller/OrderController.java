package com.sys.controller;

import com.sys.pojo.Goods;
import com.sys.pojo.Merchants;
import com.sys.pojo.Orders;
import com.sys.pojo.Users;
import com.sys.service.GoodsService;
import com.sys.service.MerchantsService;
import com.sys.service.OrdersService;
import com.sys.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private UsersService usersService;
    @Autowired
    private MerchantsService merchantsService;
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/uploadTrackingnum")
    @ResponseBody
    public String uploadTrackingnum(int oTrackingnum, int oId){
        ordersService.updateTrackingnum(oTrackingnum, oId);
        ordersService.updateState(oId, "已发货");
        return "success";
    }

    @RequestMapping("/addOrder")
    @ResponseBody
    public Map<String, String> addOrder(String uEmail, String mCertificatenum, Integer gId, Integer sSum){
        Map<String, String> ret = new HashMap<String, String>();
        Users user = usersService.selectUsersByEmail(uEmail);
        String uName = user.getuName();
        String uPlace = user.getuAddress();
        String uPhonenum = user.getuPhonenum();
        Integer uVIP = user.getuVIP();
        Merchants merchant = merchantsService.selectMerchantByCertificatenum(mCertificatenum);
        String mName = merchant.getmName();
        String mPhonenum = merchant.getmPhonenum();
        Goods good = goodsService.selectGoodById(gId);
        String gName = good.getgName();
        Float gPrice = good.getgPrice();
        Integer gSum = good.getgSum();
        String gSize = good.getgSize();
        Integer gVIP = good.getgVIP();
        String oState = "已付款";
        Orders order = new Orders();
        if (sSum > gSum){
            ret.put("type", "error");
            ret.put("msg", "库存不足");
        }else {
            order.setuEmail(uEmail);
            order.setmCertificatenum(mCertificatenum);
            order.setgId(gId);
            order.setoState(oState);
            order.setmName(mName);
            order.setmPhonenum(mPhonenum);
            order.setuName(uName);
            order.setuPlace(uPlace);
            order.setuPhonenum(uPhonenum);
            order.setgName(gName);
            if (uVIP == 1){
                float price = (float) (gPrice*0.7);
                order.setgPrice(price);
            }else {
                float price = gPrice;
                order.setgPrice(price);
            }
            order.setgSum(sSum);
            order.setgSize(gSize);
            order.setgVIP(gVIP);
            ordersService.insertOrder(order);
            ret.put("type", "success");
            ret.put("msg", "生成订单成功");
            goodsService.updateGoodSum(gId, gSum - sSum);
        }
        return ret;
    }

    @RequestMapping("/checkGood")
    @ResponseBody
    public Boolean checkGood(Integer oId){
        ordersService.updateState(oId, "已收货");
        return true;
    }

    @RequestMapping("/comment")
    @ResponseBody
    public Boolean comment(Integer oId){
        ordersService.updateState(oId, "已评论");
        return true;
    }

    @RequestMapping("/deleteOrder")
    @ResponseBody
    public String deleteOrder(Integer oId){
        ordersService.deleteOrder(oId);
        return "success";
    }
}
