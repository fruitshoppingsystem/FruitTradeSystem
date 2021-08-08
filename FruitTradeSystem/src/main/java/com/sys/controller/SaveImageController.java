package com.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

@Controller
@RequestMapping("/saveImage")
public class SaveImageController {
    @RequestMapping("saveImage")
    @ResponseBody
    public Map<String, String> saveImage(HttpServletRequest request) {
        MultipartResolver resolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        MultipartHttpServletRequest mRequest = resolver.resolveMultipart(request);
        MultipartFile mFile = mRequest.getFile("imagePath");
        Map<String, String> ret = new HashMap<String, String>();
        if (mFile == null){
            ret.put("type", "error");
            ret.put("msg", "请选择图片");
            return ret;
        }
        if (mFile.getSize() > 1024 * 1024 * 10){
            ret.put("type", "error");
            ret.put("msg", "文件大小不能超过10M");
            return ret;
        }
        //获取文件后缀
        String suffix = Objects.requireNonNull(mFile.getOriginalFilename()).substring(mFile.getOriginalFilename().lastIndexOf(".") + 1, mFile.getOriginalFilename().length());
        if (!"jpg,jpeg,gif,png".toUpperCase().contains(suffix.toUpperCase())) {
            ret.put("type", "error");
            ret.put("msg", "请选择jpg,jpeg,gif,png格式的图片！");
            return ret;
        }
        //获取项目根目录加上图片目录
        String savePath = "D:/shixun/gits/FruitTradeSystem/FruitTradeSystem/src/main/webapp/html/img/";
        File savePathFile = new File(savePath);
        if (!savePathFile.exists()) {
            //若不存在该目录，则创建目录
            savePathFile.mkdir();
        }
        String filename = new Date().getTime() + "." + suffix;
        try {
            //将文件保存指定目录
            mFile.transferTo(new File(savePath + filename));
        } catch (Exception e) {
            ret.put("type", "error");
            ret.put("msg", "保存文件异常！");
            e.printStackTrace();
            return ret;
        }
        ret.put("type", "success");
        ret.put("msg", "上传图片成功！");
        ret.put("filepath", "D:/shixun/gits/FruitTradeSystem/FruitTradeSystem/src/main/webapp/html/img/");
        ret.put("filename", filename);
        return ret;
    }
}
