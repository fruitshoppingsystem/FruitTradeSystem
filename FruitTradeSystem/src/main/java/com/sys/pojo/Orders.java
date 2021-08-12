package com.sys.pojo;

public class Orders {
    private Integer oId;
    private String uEmail;
    private String mCertificatenum;
    private Integer gId;
    private Integer oTrackingnum;
    private String oState;
    private String mName;
    private String mPhonenum;
    private String uName;
    private String uPlace;
    private String uPhonenum;
    private String gName;
    private Float gPrice;
    private Integer gSum;
    private String gSize;
    private Integer gVIP;

    public Orders(String uEmail, String mCertificatenum, Integer gId, String oState, String mName, String mPhonenum, String uName, String uPlace, String uPhonenum, String gName, Float gPrice, Integer gSum, String gSize, Integer gVIP) {
        this.uEmail = uEmail;
        this.mCertificatenum = mCertificatenum;
        this.gId = gId;
        this.oState = oState;
        this.mName = mName;
        this.mPhonenum = mPhonenum;
        this.uName = uName;
        this.uPlace = uPlace;
        this.uPhonenum = uPhonenum;
        this.gName = gName;
        this.gPrice = gPrice;
        this.gSum = gSum;
        this.gSize = gSize;
        this.gVIP = gVIP;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "oId=" + oId +
                ", uEmail='" + uEmail + '\'' +
                ", mCertificatenum='" + mCertificatenum + '\'' +
                ", gId=" + gId +
                ", oTrackingnum=" + oTrackingnum +
                ", oState='" + oState + '\'' +
                ", mName='" + mName + '\'' +
                ", mPhonenum='" + mPhonenum + '\'' +
                ", uName='" + uName + '\'' +
                ", uPlace='" + uPlace + '\'' +
                ", uPhonenum='" + uPhonenum + '\'' +
                ", gName='" + gName + '\'' +
                ", gPrice=" + gPrice +
                ", gSum=" + gSum +
                ", gSize='" + gSize + '\'' +
                ", gVIP=" + gVIP +
                '}';
    }

    public Integer getoId() {
        return oId;
    }

    public void setoId(Integer oId) {
        this.oId = oId;
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

    public Integer getgId() {
        return gId;
    }

    public void setgId(Integer gId) {
        this.gId = gId;
    }

    public Integer getoTrackingnum() {
        return oTrackingnum;
    }

    public void setoTrackingnum(Integer oTrackingnum) {
        this.oTrackingnum = oTrackingnum;
    }

    public String getoState() {
        return oState;
    }

    public void setoState(String oState) {
        this.oState = oState;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public Float getgPrice() {
        return gPrice;
    }

    public void setgPrice(Float gPrice) {
        this.gPrice = gPrice;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPlace() {
        return uPlace;
    }

    public void setuPlace(String uPlace) {
        this.uPlace = uPlace;
    }

    public String getuPhonenum() {
        return uPhonenum;
    }

    public void setuPhonenum(String uPhonenum) {
        this.uPhonenum = uPhonenum;
    }

    public String getmPhonenum() {
        return mPhonenum;
    }

    public void setmPhonenum(String mPhonenum) {
        this.mPhonenum = mPhonenum;
    }

    public String getgName() {
        return gName;
    }

    public void setgName(String gName) {
        this.gName = gName;
    }

    public Integer getgSum() {
        return gSum;
    }

    public void setgSum(Integer gSum) {
        this.gSum = gSum;
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

    public Orders() {
    }
}
