package com.sys.service;

import com.sys.pojo.Orders;

import java.util.List;

public interface OrdersService {
    void insertOrder(Orders orders);
    void deleteOrder(int oId);
    void updateOrder(Orders orders);
    List<Orders> selectAllOrders();
    List<Orders> selectUserOrders();
    List<Orders> selectMerchantOrders();
    void updateState(Orders orders);
    void insertTrackingnum(int oTrackingnum);
}
