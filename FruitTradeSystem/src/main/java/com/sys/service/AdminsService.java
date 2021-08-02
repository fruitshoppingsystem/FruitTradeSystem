package com.sys.service;

import com.sys.pojo.Admins;

import java.util.List;

public interface AdminsService {
    List<Admins> selectAdminById(int aId);
}
