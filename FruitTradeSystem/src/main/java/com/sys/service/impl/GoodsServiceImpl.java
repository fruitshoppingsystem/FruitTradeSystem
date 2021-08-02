package com.sys.service.impl;

import com.sys.dao.GoodsDao;
import com.sys.pojo.Goods;
import com.sys.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("GoodsService")
@Transactional
public class GoodsServiceImpl implements GoodsService {
    @Autowired
    private GoodsDao goodsDao;
    @Override
    public void insertGood(Goods goods) {
        goodsDao.insertGood(goods);
    }

    @Override
    public void deleteGood(int gId) {
        goodsDao.deleteGood(gId);
    }

    @Override
    public void updateGood(Goods goods) {
        goodsDao.updateGood(goods);
    }

    @Override
    public List<Goods> selectAllGoods() {
        return goodsDao.selectAllGoods();
    }

    @Override
    public List<Goods> selectGoodsByName(String gName) {
        return goodsDao.selectGoodsByName(gName);
    }

    @Override
    public void updateGoodSum(Goods goods) {
        goodsDao.updateGoodSum(goods);
    }
}
