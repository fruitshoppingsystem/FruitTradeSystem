package com.sys.pojo;

public class Merchants {
    private String mCertificatenum;
    private String mName;
    private String mPassword;
    private String mAddress;
    private String mPhonenum;
    private Integer mScore;
    private Integer mState;

    public Merchants(String mCertificatenum, String mName, String mPassword, String mAddress, String mPhonenum, Integer mScore, Integer mState) {
        this.mCertificatenum = mCertificatenum;
        this.mName = mName;
        this.mPassword = mPassword;
        this.mAddress = mAddress;
        this.mPhonenum = mPhonenum;
        this.mScore = mScore;
        this.mState = mState;
    }

    @Override
    public String toString() {
        return "Merchants{" +
                "mCertificatenum=" + mCertificatenum +
                ", mName='" + mName + '\'' +
                ", mPassword='" + mPassword + '\'' +
                ", mAddress='" + mAddress + '\'' +
                ", mPhonenum=" + mPhonenum +
                ", mScore=" + mScore +
                ", mState=" + mState +
                '}';
    }

    public String getmCertificatenum() {
        return mCertificatenum;
    }

    public void setmCertificatenum(String mCertificatenum) {
        this.mCertificatenum = mCertificatenum;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName;
    }

    public String getmPassword() {
        return mPassword;
    }

    public void setmPassword(String mPassword) {
        this.mPassword = mPassword;
    }

    public String getmAddress() {
        return mAddress;
    }

    public void setmAddress(String mAddress) {
        this.mAddress = mAddress;
    }

    public String getmPhonenum() {
        return mPhonenum;
    }

    public void setmPhonenum(String mPhonenum) {
        this.mPhonenum = mPhonenum;
    }

    public Integer getmScore() {
        return mScore;
    }

    public void setmScore(Integer mScore) {
        this.mScore = mScore;
    }

    public Integer getmState() {
        return mState;
    }

    public void setmState(Integer mState) {
        this.mState = mState;
    }

    public Merchants() {



    }
}
