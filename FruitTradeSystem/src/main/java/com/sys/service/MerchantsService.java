package com.sys.service;

import com.sys.pojo.Merchants;
import com.sys.pojo.Users;

import java.util.List;

public interface MerchantsService {
    void insertMerchant(Merchants merchants);
    void deleteMerchant(int mCertificatenum);
    void updateMerchant(Merchants merchants);
    void updateMerchantPassword(Merchants merchants);
    List<Merchants> selectAllMerchants();
    void updateScore(Merchants merchants);
    void updateState(Merchants merchants);
}
