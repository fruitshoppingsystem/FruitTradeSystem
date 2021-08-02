package com.sys.pojo;

import java.sql.Timestamp;

public class Comments {
    private String uEmail;
    private Integer gId;
    private Timestamp time;
    private String content;
    private Integer score;

    public Comments(String uEmail, Integer gId, Timestamp time, String content, Integer score) {
        this.uEmail = uEmail;
        this.gId = gId;
        this.time = time;
        this.content = content;
        this.score = score;
    }

    @Override
    public String toString() {
        return "Comments{" +
                "uEmail='" + uEmail + '\'' +
                ", gId=" + gId +
                ", time=" + time +
                ", content='" + content + '\'' +
                ", score=" + score +
                '}';
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
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

    public Comments() {

    }
}
