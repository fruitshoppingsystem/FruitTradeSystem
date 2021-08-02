package com.sys.service.impl;

import com.sys.dao.AdminsDao;
import com.sys.pojo.Admins;
import com.sys.service.AdminsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("AdminsService")
@Transactional
public class AdminsServiceImpl implements AdminsService {
    @Autowired
    private AdminsDao adminsDao;
    @Override
    public List<Admins> selectAdminById(int aId) {
        return adminsDao.selectAdminById(aId);
    }
}
