package com.sys.dao;

import com.sys.pojo.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("GoodsDao")
@Mapper
public interface GoodsDao {
    void insertGood(Goods goods);
    void deleteGood(int gId);
    void updateGood(Goods goods);
    List<Goods> selectAllGoods();
    List<Goods> selectAllNotVIPGoods();
    List<Goods> selectAllVIPGoods();
    List<Goods> selectMerchantGoods(String mCertificatenum);
    List<Goods> selectMerchantVIPGoods(String mCertificatenum);
    List<Goods> selectGoodsByName(String gName);
    List<Goods> selectGoodsByCertificatenum(String mCertificatenum);
    Goods selectGoodById(Integer gId);
    void updateGoodSum(@Param("gId") Integer gId,@Param("gSum") Integer gSum);
}
