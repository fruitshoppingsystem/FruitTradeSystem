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
    public Admins selectAdminById(int aId) {
        return adminsDao.selectAdminById(aId);
    }

    @Override
    public int findAdminById(int aId) {
        return adminsDao.findAdminById(aId);
    }

    @Override
    public String selectPasswordById(int aId) {
        return adminsDao.selectPasswordById(aId);
    }

    @Override
    public void updateState(int aId, int aState) {
        adminsDao.updateState(aId, aState);
    }

    @Override
    public Integer selectAdminState(Integer aId) {
        return adminsDao.selectAdminState(aId);
    }

}
