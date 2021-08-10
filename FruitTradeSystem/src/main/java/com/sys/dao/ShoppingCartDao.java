package com.sys.dao;

import com.sys.pojo.ShoppingCart;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("ShoppingCartDao")
@Mapper
public interface ShoppingCartDao {
    List<ShoppingCart> selectByEmail(String uEmail);
    void deleteShoppingCart(Integer sId);
    Float selectTotalPrice(String uEmail);
}
