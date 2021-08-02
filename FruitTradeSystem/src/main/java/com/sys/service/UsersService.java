package com.sys.service;

import com.sys.pojo.Users;

import java.util.List;

public interface UsersService {
    void insertUser(Users users);
    void deleteUser(String uEmail);
    void updateUser(Users users);
    void updateUserPassword(Users users);
    List<Users> selectAllUsers();
    void updateVIP(Users users);
    void updateState(Users users);
}
