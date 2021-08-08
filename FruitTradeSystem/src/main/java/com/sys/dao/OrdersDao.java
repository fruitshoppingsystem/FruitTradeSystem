package com.sys.dao;

import com.sys.pojo.Orders;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("OrdersDao")
@Mapper
public interface OrdersDao {
    void insertOrder(Orders orders);
    void deleteOrder(int oId);
    void updateOrder(Orders orders);
    List<Orders> selectAllOrders();
    List<Orders> selectUserOrders(String uEmail);
    List<Orders> selectMerchantOrders(String mCertificatenum);
    void updateState(Orders orders);
    void updateTrackingnum(@Param("oTrackingnum")int oTrackingnum, @Param("oId")int oId);
}
