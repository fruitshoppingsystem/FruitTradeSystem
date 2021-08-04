package com.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Random;

@Controller
@RequestMapping("/email")
public class SendEmailController {
    @Autowired
    private JavaMailSender javaMailSender;
    @Value("${mail.smtp.username}")
    private String emailFrom;
    /*验证码发送*/
    @RequestMapping("/send")
    public @ResponseBody Boolean senMsg(HttpSession httpSession, @RequestParam("userEmail") String userEmail) {
        //生成六位数验证码
        String Captcha = String.valueOf(new Random().nextInt(899999) + 100000);
        httpSession.setAttribute("Captcha",Captcha);//存储验证码
        SimpleMailMessage message = new SimpleMailMessage();
        //发件人的邮箱地址
        message.setFrom(emailFrom);
        //收件人的邮箱地址
        message.setTo(userEmail);
        //邮件主题
        message.setSubject("验证码");
        //邮件内容
        message.setText("验证码:" + Captcha);
        //发送邮件
        javaMailSender.send(message);
        return true;
    }
}
