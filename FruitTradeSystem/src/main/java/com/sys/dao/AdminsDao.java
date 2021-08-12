package com.sys.dao;

import com.sys.pojo.Admins;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("AdminsDao")
@Mapper
public interface AdminsDao {
    Admins selectAdminById(int aId);
    int findAdminById(int aId);
    String selectPasswordById(int aId);
    void updateState(@Param("aId")int aId, @Param("aState")int aState);
    Integer selectAdminState(Integer aId);
}
