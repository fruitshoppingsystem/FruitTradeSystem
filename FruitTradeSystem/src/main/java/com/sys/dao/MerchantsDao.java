package com.sys.dao;

import com.sys.pojo.Merchants;
import com.sys.pojo.Users;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("MerchantsDao")
@Mapper
public interface MerchantsDao {
    void insertMerchant(Merchants merchants);
    void deleteMerchant(int mCertificatenum);
    void updateMerchant(Merchants merchants);
    void updateMerchantPassword(Merchants merchants);
    List<Merchants> selectAllMerchants();
    void updateScore(Merchants merchants);
    void updateState(Merchants merchants);
}
