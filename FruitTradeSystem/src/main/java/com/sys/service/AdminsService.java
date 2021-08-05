package com.sys.service;

import com.sys.pojo.Admins;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminsService {
    List<Admins> selectAdminById(int aId);
    int findAdminById(int aId);
    String selectPasswordById(int aId);
    void updateState(@Param("aId")int aId, @Param("aState") int aState);
    Boolean selectAdminLogin();
}
