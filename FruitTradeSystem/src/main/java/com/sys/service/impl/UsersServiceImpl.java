package com.sys.service.impl;

import com.sys.dao.UsersDao;
import com.sys.pojo.Users;
import com.sys.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("UsersService")
@Transactional
public class UsersServiceImpl implements UsersService {
    @Autowired
    private UsersDao usersDao;
    @Override
    public void insertUser(Users users) {
        usersDao.insertUser(users);
    }

    @Override
    public void deleteUser(String uEmail) {
        usersDao.deleteUser(uEmail);
    }

    @Override
    public void updateUser(Users users) {
        usersDao.updateUser(users);
    }

    @Override
    public void updateUserPassword(Users users) {
        usersDao.updateUserPassword(users);
    }

    @Override
    public List<Users> selectAllUsers() {
        return usersDao.selectAllUsers();
    }

    @Override
    public void updateVIP(Users users) {
        usersDao.updateVIP(users);
    }

    @Override
    public void updateState(Users users) {
        usersDao.updateState(users);
    }

}
