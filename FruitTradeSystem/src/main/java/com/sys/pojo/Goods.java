package com.sys.pojo;



public class Goods {
    private Integer gId;
    private Integer mCertificatenum;
    private String gName;
    private Float gPrice;
    private Integer gSum;
    private String gPlcae;
    private String gSize;
    private Short gVIP;
    private String gImage;


    public Goods(Integer gId, Integer mCertificatenum, String gName, Float gPrice, Integer gSum, String gPlcae, String gSize, Short gVIP, String gImage) {
        this.gId = gId;
        this.mCertificatenum = mCertificatenum;
        this.gName = gName;
        this.gPrice = gPrice;
        this.gSum = gSum;
        this.gPlcae = gPlcae;
        this.gSize = gSize;
        this.gVIP = gVIP;
        this.gImage = gImage;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "gId=" + gId +
                ", mCertificatenum=" + mCertificatenum +
                ", gName='" + gName + '\'' +
                ", gPrice=" + gPrice +
                ", gSum=" + gSum +
                ", gPlcae='" + gPlcae + '\'' +
                ", gSize='" + gSize + '\'' +
                ", gVIP=" + gVIP +
                ", gImage='" + gImage + '\'' +
                '}';
    }

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }

    public Integer getmCertificatenum() {
        return mCertificatenum;
    }

    public void setmCertificatenum(Integer mCertificatenum) {
        this.mCertificatenum = mCertificatenum;
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

    public Integer getgSum() {
        return gSum;
    }

    public void setgSum(Integer gSum) {
        this.gSum = gSum;
    }

    public String getgPlcae() {
        return gPlcae;
    }

    public void setgPlcae(String gPlcae) {
        this.gPlcae = gPlcae;
    }

    public String getgSize() {
        return gSize;
    }

    public void setgSize(String gSize) {
        this.gSize = gSize;
    }

    public Short getgVIP() {
        return gVIP;
    }

    public void setgVIP(Short gVIP) {
        this.gVIP = gVIP;
    }

    public String getgImage() {
        return gImage;
    }

    public void setgImage(String gImage) {
        this.gImage = gImage;
    }

    public Goods() {


    }
}
