package com.sys.service;

import com.sys.pojo.Merchants;
import com.sys.pojo.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MerchantsService {
    void merchantRegister(String mCertificate, String mName, String mPassword);
    void insertMerchant(Merchants merchants);
    void deleteMerchant(String mCertificatenum);
    void updateMerchant(String mCertificatenum, String mName, String mAddress, String mPhonenum);
    void updateMerchantPassword(Merchants merchants);
    List<Merchants> selectAllMerchants();
    List<Merchants> selectNotAcceptMerchants();
    List<Merchants> selectAcceptMerchants();
    int findMerchantByCertificatenum(String mCertificatenum);
    Merchants selectMerchantByCertificatenum(String mCertificatenum);
    String selectPasswordByCertificatenum(String mCertificatenum);
    String selectNameByCertificatenum(String mCertificatenum);
    String selectAddressByCertificatenum(String mCertificatenum);
    String selectPhoneByCertificatenum(String mCertificatenum);
    int selectScoreByCertificatenum(String mCertificatenum);
    int selectMerchantState(String mCertificatenum);
    void updateScore(String mCertificatenum, int mScore);
    void updateState(String mCertificatenum, int mState);
}
