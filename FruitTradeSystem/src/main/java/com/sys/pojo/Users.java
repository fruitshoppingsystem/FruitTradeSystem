package com.sys.pojo;

public class Users {
    private String uEmail;
    private String uName;
    private String uPassword;
    private String uAddress;
    private Integer uPhonenum;
    private Short uVIP;
    private Short uState;

    public Users(String uEmail, String uName, String uPassword, String uAddress, Integer uPhonenum, Short uVIP, Short uState) {
        this.uEmail = uEmail;
        this.uName = uName;
        this.uPassword = uPassword;
        this.uAddress = uAddress;
        this.uPhonenum = uPhonenum;
        this.uVIP = uVIP;
        this.uState = uState;
    }

    @Override
    public String toString() {
        return "Users{" +
                "uEmail='" + uEmail + '\'' +
                ", uName='" + uName + '\'' +
                ", uPassword='" + uPassword + '\'' +
                ", uAddress='" + uAddress + '\'' +
                ", uPhonenum=" + uPhonenum +
                ", uVIP=" + uVIP +
                ", uState=" + uState +
                '}';
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword;
    }

    public String getuAddress() {
        return uAddress;
    }

    public void setuAddress(String uAddress) {
        this.uAddress = uAddress;
    }

    public Integer getuPhonenum() {
        return uPhonenum;
    }

    public void setuPhonenum(Integer uPhonenum) {
        this.uPhonenum = uPhonenum;
    }

    public Short getuVIP() {
        return uVIP;
    }

    public void setuVIP(Short uVIP) {
        this.uVIP = uVIP;
    }

    public Short getuState() {
        return uState;
    }

    public void setuState(Short uState) {
        this.uState = uState;
    }

    public Users() {



    }

}
