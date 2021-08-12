package com.sys.controller;

import com.sys.pojo.Goods;
import com.sys.pojo.Merchants;
import com.sys.service.GoodsService;
import com.sys.service.MerchantsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/search")
public class SearchController {
    @Autowired
    private GoodsService goodsService;
    @Autowired
    private MerchantsService merchantsService;

    @RequestMapping("/getData")
    public String getData(String inputText, String uEmail, Model model){
        String data = "%" + inputText + "%";
        model.addAttribute("uEmail", uEmail);
        List<Goods> searchGoods = goodsService.selectGoodsByName(data);
        model.addAttribute("searchGoods", searchGoods);
        List<Goods> searchVIPGoods = goodsService.selectVIPGoodsByName(data);
        model.addAttribute("searchVIPGoods", searchVIPGoods);
        List<Merchants> searchMerchants = merchantsService.selectMerchantsByName(data);
        model.addAttribute("searchMerchants", searchMerchants);
        return "search";
    }
}
