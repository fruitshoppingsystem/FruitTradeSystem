package com.sys.pojo;

import java.sql.Timestamp;

public class Comments {
    private Integer cId;
    private String uEmail;
    private String mCertificatenum;
    private Integer gId;
    private Timestamp time;
    private String content;
    private Integer score;
    private String uName;
    private String mName;

    public Comments(String uEmail, String mCertificatenum, Integer gId, Timestamp time, String content, Integer score, String uName, String mName) {
        this.uEmail = uEmail;
        this.mCertificatenum = mCertificatenum;
        this.gId = gId;
        this.time = time;
        this.content = content;
        this.score = score;
        this.uName = uName;
        this.mName = mName;
    }

    @Override
    public String toString() {
        return "Comments{" +
                "cId=" + cId +
                ", uEmail='" + uEmail + '\'' +
                ", mCertificatenum='" + mCertificatenum + '\'' +
                ", gId=" + gId +
                ", time=" + time +
                ", content='" + content + '\'' +
                ", score=" + score +
                ", uName='" + uName + '\'' +
                ", mName='" + mName + '\'' +
                '}';
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getmCertificatenum() {
        return mCertificatenum;
    }

    public void setmCertificatenum(String mCertificatenum) {
        this.mCertificatenum = mCertificatenum;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }

    public Comments() {

    }
}
