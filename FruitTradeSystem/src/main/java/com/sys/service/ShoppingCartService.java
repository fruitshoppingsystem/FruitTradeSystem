package com.sys.service;

import com.sys.pojo.ShoppingCart;

import java.util.List;

public interface ShoppingCartService {
    List<ShoppingCart> selectByEmail(String uEmail);
    void deleteShoppingCart(Integer sId);
    Float selectTotalPrice(String uEmail);
    Float selectVIPTotalPrice(String uEmail);
    void addShoppingCart(ShoppingCart shoppingCart);
}
