package com.sys.service.impl;

import com.sys.dao.MerchantsDao;
import com.sys.pojo.Merchants;
import com.sys.service.MerchantsService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("MerchantsService")
@Transactional
public class MerchantsServiceImpl implements MerchantsService {
    @Autowired
    private MerchantsDao merchantsDao;

    @Override
    public void merchantRegister(String mCertificate, String mName, String mPassword) {
        merchantsDao.merchantRegister(mCertificate, mName, mPassword);
    }

    @Override
    public void insertMerchant(Merchants merchants) {
        merchantsDao.insertMerchant(merchants);
    }

    @Override
    public void deleteMerchant(String mCertificatenum) {
        merchantsDao.deleteMerchant(mCertificatenum);
    }

    @Override
    public void updateMerchant(String mCertificatenum, String mName, String mAddress, String mPhonenum) {
        merchantsDao.updateMerchant(mCertificatenum, mName, mAddress, mPhonenum);
    }

    @Override
    public void updateMerchantPassword(Merchants merchants) {
        merchantsDao.updateMerchantPassword(merchants);
    }

    @Override
    public List<Merchants> selectAllMerchants() {
        return merchantsDao.selectAllMerchants();
    }

    @Override
    public List<Merchants> selectNotAcceptMerchants() {
        return merchantsDao.selectNotAcceptMerchants();
    }

    @Override
    public List<Merchants> selectAcceptMerchants() {
        return merchantsDao.selectAcceptMerchants();
    }

    @Override
    public List<Merchants> selectMerchantsByName(String mName) {
        return merchantsDao.selectMerchantsByName(mName);
    }

    @Override
    public int findMerchantByCertificatenum(String mCertificatenum) {
        return merchantsDao.findMerchantByCertificatenum(mCertificatenum);
    }

    @Override
    public Merchants selectMerchantByCertificatenum(String mCertificatenum) {
        return merchantsDao.selectMerchantByCertificatenum(mCertificatenum);
    }

    @Override
    public String selectPasswordByCertificatenum(String mCertificatenum) {
        return merchantsDao.selectPasswordByCertificatenum(mCertificatenum);
    }

    @Override
    public String selectNameByCertificatenum(String mCertificatenum) {
        return merchantsDao.selectNameByCertificatenum(mCertificatenum);
    }

    @Override
    public String selectAddressByCertificatenum(String mCertificatenum) {
        return merchantsDao.selectAddressByCertificatenum(mCertificatenum);
    }

    @Override
    public String selectPhoneByCertificatenum(String mCertificatenum) {
        return merchantsDao.selectPhoneByCertificatenum(mCertificatenum);
    }

    @Override
    public int selectScoreByCertificatenum(String mCertificatenum) {
        return merchantsDao.selectScoreByCertificatenum(mCertificatenum);
    }

    @Override
    public int selectMerchantState(String mCertificatenum) {
        return merchantsDao.selectMerchantState(mCertificatenum);
    }

    @Override
    public void updateScore(String mCertificatenum, int mScore) {
        merchantsDao.updateScore(mCertificatenum, mScore);
    }

    @Override
    public void updateState(String mCertificatenum, int mState) {
        merchantsDao.updateState(mCertificatenum, mState);
    }

}
