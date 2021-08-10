package com.sys.service.impl;

import com.sys.dao.ShoppingCartDao;
import com.sys.pojo.ShoppingCart;
import com.sys.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("ShoppingCartService")
@Transactional
public class ShoppingCartServiceImpl implements ShoppingCartService {
    @Autowired
    private ShoppingCartDao shoppingCartDao;
    @Override
    public List<ShoppingCart> selectByEmail(String uEmail) {
        return shoppingCartDao.selectByEmail(uEmail);
    }

    @Override
    public void deleteShoppingCart(Integer sId) {
        shoppingCartDao.deleteShoppingCart(sId);
    }

    @Override
    public Float selectTotalPrice(String uEmail) {
        return shoppingCartDao.selectTotalPrice(uEmail);
    }
}
