package com.sys.controller;

import com.sys.pojo.Goods;
import com.sys.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/good")
public class GoodController {
    @Autowired
    private GoodsService goodsService;

    @RequestMapping("/addGood")
    @ResponseBody
    public Map<String, String> addGood(String mCertificatenum, String gName, String gPrice, String gPlace, String gSize, String gSum, Integer gVIP, String gImage){
        Map<String, String> ret = new HashMap<String, String>();
        float price = Float.parseFloat(gPrice);
        int sum = Integer.parseInt(gSum);
        Goods good = new Goods(mCertificatenum,gName, price, sum, gPlace, gSize, gVIP, gImage);
        goodsService.insertGood(good);
        ret.put("type", "success");
        ret.put("msg", "添加成功！");
        return ret;
    }

    @RequestMapping("/updateGood")
    @ResponseBody
    public Map<String, String> updateGood(Integer gId, String gName, String gPrice, String gPlace, String gSize, String gSum, Integer gVIP, String gImage){
        Map<String, String> ret = new HashMap<String, String>();
        float price = Float.parseFloat(gPrice);
        int sum = Integer.parseInt(gSum);
        Goods good = new Goods(gId,gName, price, sum, gPlace, gSize, gVIP, gImage);
        goodsService.updateGood(good);
        ret.put("type", "success");
        ret.put("msg", "修改成功！");
        return ret;
    }

    @RequestMapping("/deleteGood")
    @ResponseBody
    public String deleteGood(Integer gId){
        goodsService.deleteGood(gId);
        return "success";
    }
}
