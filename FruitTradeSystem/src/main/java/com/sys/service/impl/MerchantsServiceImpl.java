package com.sys.service.impl;

import com.sys.dao.MerchantsDao;
import com.sys.pojo.Merchants;
import com.sys.service.MerchantsService;
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
    public void insertMerchant(Merchants merchants) {
        merchantsDao.insertMerchant(merchants);
    }

    @Override
    public void deleteMerchant(int mCertificatenum) {
        merchantsDao.deleteMerchant(mCertificatenum);
    }

    @Override
    public void updateMerchant(Merchants merchants) {
        merchantsDao.updateMerchant(merchants);
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
    public void updateScore(Merchants merchants) {
        merchantsDao.updateScore(merchants);
    }

    @Override
    public void updateState(Merchants merchants) {
        merchantsDao.updateState(merchants);
    }

}
