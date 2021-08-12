package com.sys.controller;

import com.sys.pojo.Comments;
import com.sys.service.CommentsService;
import com.sys.service.MerchantsService;
import com.sys.service.UsersService;
import org.aspectj.lang.annotation.After;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Timestamp;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentsService commentsService;
    @Autowired
    private UsersService usersService;
    @Autowired
    private MerchantsService merchantsService;

    @RequestMapping("addComment")
    @ResponseBody
    public Boolean addComment(String uEmail, String mCertificatenum, Integer gId, Timestamp time, Integer score, String content){
        String uName = usersService.selectNameByEmail(uEmail);
        String mName = merchantsService.selectNameByCertificatenum(mCertificatenum);
        Comments comments = new Comments(uEmail, mCertificatenum, gId, time, content, score, uName, mName);
        commentsService.insertComment(comments);
        int averageScore = commentsService.selectAverageScore(mCertificatenum);
        merchantsService.updateScore(mCertificatenum, averageScore);
        return true;
    }
}
