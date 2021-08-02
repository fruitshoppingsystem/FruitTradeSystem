package com.sys.service.impl;

import com.sys.dao.OrdersDao;
import com.sys.pojo.Orders;
import com.sys.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("OrdersService")
@Transactional
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    private OrdersDao ordersDao;
    @Override
    public void insertOrder(Orders orders) {
        ordersDao.insertOrder(orders);
    }

    @Override
    public void deleteOrder(int oId) {
        ordersDao.deleteOrder(oId);
    }

    @Override
    public void updateOrder(Orders orders) {
        ordersDao.updateOrder(orders);
    }

    @Override
    public List<Orders> selectAllOrders() {
        return ordersDao.selectAllOrders();
    }

    @Override
    public List<Orders> selectUserOrders() {
        return ordersDao.selectUserOrders();
    }

    @Override
    public List<Orders> selectMerchantOrders() {
        return ordersDao.selectMerchantOrders();
    }

    @Override
    public void updateState(Orders orders) {
        ordersDao.updateState(orders);
    }

    @Override
    public void insertTrackingnum(int oTrackingnum) {
        ordersDao.insertTrackingnum(oTrackingnum);
    }
}
