package com.sys.service;

import com.sys.pojo.Goods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsService {
    void insertGood(Goods goods);
    void deleteGood(int gId);
    void updateGood(Goods goods);
    List<Goods> selectAllGoods();
    List<Goods> selectAllNotVIPGoods();
    List<Goods> selectAllVIPGoods();
    List<Goods> selectMerchantGoods(String mCertificatenum);
    List<Goods> selectMerchantVIPGoods(String mCertificatenum);
    List<Goods> selectGoodsByName(String gName);
    List<Goods> selectVIPGoodsByName(String gName);
    List<Goods> selectGoodsByCertificatenum(String mCertificatenum);
    Goods selectGoodById(Integer gId);
    void updateGoodSum(Integer gId, Integer gSum);
}
