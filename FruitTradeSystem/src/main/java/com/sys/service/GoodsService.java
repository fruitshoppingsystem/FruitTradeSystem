package com.sys.service;

import com.sys.pojo.Goods;

import java.util.List;

public interface GoodsService {
    void insertGood(Goods goods);
    void deleteGood(int gId);
    void updateGood(Goods goods);
    List<Goods> selectAllGoods();
    List<Goods> selectGoodsByName(String gName);
    List<Goods> selectGoodsByCertificatenum(String mCertificatenum);
    Goods selectGoodById(Integer gId);
    void updateGoodSum(Goods goods);
}
