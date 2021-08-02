package com.sys.pojo;

public class Orders {
    private Integer oId;
    private String uEmail;
    private Integer mCertificatenum;
    private  Integer gId;
    private Integer oTrackingnum;
    private String oState;

    public Orders(Integer oId, String uEmail, Integer mCertificatenum, Integer gId, Integer oTrackingnum, String oState) {
        this.oId = oId;
        this.uEmail = uEmail;
        this.mCertificatenum = mCertificatenum;
        this.gId = gId;
        this.oTrackingnum = oTrackingnum;
        this.oState = oState;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "oId=" + oId +
                ", uEmail='" + uEmail + '\'' +
                ", mCertificatenum=" + mCertificatenum +
                ", gId=" + gId +
                ", oTrackingnum=" + oTrackingnum +
                ", oState='" + oState + '\'' +
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

    public Integer getmCertificatenum() {
        return mCertificatenum;
    }

    public void setmCertificatenum(Integer mCertificatenum) {
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

    public Orders() {



    }
}
