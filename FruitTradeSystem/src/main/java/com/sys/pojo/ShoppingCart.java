package com.sys.pojo;

public class ShoppingCart {
    private Integer sId;
    private Integer gId;
    private String uEmail;
    private String mCertificatenum;
    private Integer sSum;
    private String gName;
    private Float gPrice;
    private String gSize;
    private Integer gVIP;
    private String mName;

    public ShoppingCart() {
    }

    public ShoppingCart(Integer gId, String uEmail, String mCertificatenum, Integer sSum, String gName, Float gPrice, String gSize, Integer gVIP, String mName) {
        this.gId = gId;
        this.uEmail = uEmail;
        this.mCertificatenum = mCertificatenum;
        this.sSum = sSum;
        this.gName = gName;
        this.gPrice = gPrice;
        this.gSize = gSize;
        this.gVIP = gVIP;
        this.mName = mName;
    }

    @Override
    public String toString() {
        return "ShoppingCart{" +
                "sId=" + sId +
                ", gId=" + gId +
                ", uEmail='" + uEmail + '\'' +
                ", mCertificatenum='" + mCertificatenum + '\'' +
                ", sSum=" + sSum +
                ", gName='" + gName + '\'' +
                ", gPrice=" + gPrice +
                ", gSize='" + gSize + '\'' +
                ", gVIP=" + gVIP +
                ", mName='" + mName + '\'' +
                '}';
    }

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    public String getmCertificatenum() {
        return mCertificatenum;
    }

    public void setmCertificatenum(String mCertificatenum) {
        this.mCertificatenum = mCertificatenum;
    }

    public Integer getsSum() {
        return sSum;
    }

    public void setsSum(Integer sSum) {
        this.sSum = sSum;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public Float getgPrice() {
        return gPrice;
    }

    public void setgPrice(Float gPrice) {
        this.gPrice = gPrice;
    }

    public String getgSize() {
        return gSize;
    }

    public void setgSize(String gSize) {
        this.gSize = gSize;
    }

    public Integer getgVIP() {
        return gVIP;
    }

    public void setgVIP(Integer gVIP) {
        this.gVIP = gVIP;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }
}
