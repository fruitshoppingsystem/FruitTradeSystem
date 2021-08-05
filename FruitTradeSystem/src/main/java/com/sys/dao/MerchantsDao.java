package com.sys.dao;

import com.sys.pojo.Merchants;
import com.sys.pojo.Users;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("MerchantsDao")
@Mapper
public interface MerchantsDao {
    void merchantRegister(@Param("mCertificatenum")String mCertificatenum, @Param("mName")String mName, @Param("mPassword")String mPassword);
    void insertMerchant(Merchants merchants);
    void deleteMerchant(String mCertificatenum);
    void updateMerchant(Merchants merchants);
    void updateMerchantPassword(Merchants merchants);
    List<Merchants> selectAllMerchants();
    int findMerchantByCertificatenum(String mCertificatenum);
    String selectPasswordByCertificatenum(String mCertificatenum);
    Boolean selectMerchantLogin();
    int selectMerchantState(String mCertificatenum);
    void updateScore(Merchants merchants);
    void updateState(@Param("mCertificatenum")String mCertificatenum, @Param("mState")int mState);
}
