package com.sys.controller;

import com.sys.service.MerchantsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/merchant")
public class MerchantController {
    @Autowired
    private MerchantsService merchantsService;

    @RequestMapping("/merchantRegister")
    @ResponseBody
    public Boolean merchantRegister(String mCertificatenum, String mName, String mPassword){
        if (merchantsService.findMerchantByCertificatenum(mCertificatenum) == 0){
            merchantsService.merchantRegister(mCertificatenum, mName, mPassword);
            return true;
        }else {
            return false;
        }
    }

    @RequestMapping("/merchantLogin")
    @ResponseBody
    public Boolean merchantLogin(String mCertificatenum, String mPassword){
        if (merchantsService.findMerchantByCertificatenum(mCertificatenum) != 0){
            if (merchantsService.selectMerchantState(mCertificatenum) == 0){
                String msg = "未审核";

                return false;
            }else if (merchantsService.selectMerchantState(mCertificatenum) == 1){
                String msg = "审核未通过";
                return false;
            }else if (merchantsService.selectMerchantState(mCertificatenum) == 2){
                String password = merchantsService.selectPasswordByCertificatenum(mCertificatenum);
                if (mPassword.equals(password)){
                    merchantsService.updateState(mCertificatenum, 3);
                    String msg = "登录成功";
                    return true;
                }else {
                    String msg = "登录失败";
                    return false;
                }
            }else{
                String msg = "error";
                return false;
            }
        }else {
            String msg = "账号不存在";
            return false;
        }
    }
}
