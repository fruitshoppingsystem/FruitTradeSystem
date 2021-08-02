package com.sys.dao;

import com.sys.pojo.Orders;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("OrdersDao")
@Mapper
public interface OrdersDao {
    void insertOrder(Orders orders);
    void deleteOrder(int oId);
    void updateOrder(Orders orders);
    List<Orders> selectAllOrders();
    List<Orders> selectUserOrders();
    List<Orders> selectMerchantOrders();
    void updateState(Orders orders);
    void insertTrackingnum(int oTrackingnum);
}
