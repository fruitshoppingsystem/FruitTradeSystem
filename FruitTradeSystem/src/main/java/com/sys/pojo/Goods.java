package com.sys.pojo;



public class Goods {
    private Integer gId;
    private String mCertificatenum;
    private String gName;
    private Float gPrice;
    private Integer gSum;
    private String gPlace;
    private String gSize;
    private Integer gVIP;
    private String gImage;


    public Goods(String mCertificatenum, String gName, Float gPrice, Integer gSum, String gPlace, String gSize, Integer gVIP, String gImage) {
        this.mCertificatenum = mCertificatenum;
        this.gName = gName;
        this.gPrice = gPrice;
        this.gSum = gSum;
        this.gPlace = gPlace;
        this.gSize = gSize;
        this.gVIP = gVIP;
        this.gImage = gImage;
    }

    public Goods(Integer gId, String gName, Float gPrice, Integer gSum, String gPlace, String gSize, Integer gVIP, String gImage) {
        this.gId = gId;
        this.gName = gName;
        this.gPrice = gPrice;
        this.gSum = gSum;
        this.gPlace = gPlace;
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
                ", gPlcae='" + gPlace + '\'' +
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

    public String getmCertificatenum() {
        return mCertificatenum;
    }

    public void setmCertificatenum(String mCertificatenum) {
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

    public String getgPlace() {
        return gPlace;
    }

    public void setgPlace(String gPlace) {
        this.gPlace = gPlace;
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

    public String getgImage() {
        return gImage;
    }

    public void setgImage(String gImage) {
        this.gImage = gImage;
    }

    public Goods() {


    }
}
