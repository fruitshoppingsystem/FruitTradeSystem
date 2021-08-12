package com.sys.service;

import com.sys.pojo.Users;

import java.util.List;

public interface UsersService {
    void userRegister(String uEmail, String uName, String uPassword);
    void insertUser(Users users);
    void deleteUser(String uEmail);
    void updateUser(String uEmail, String uName, String uAddress, String uPhonenum);
    void updateUserPassword(Users users);
    List<Users> selectAllUsers();
    Users selectUsersByEmail(String uEmail);
    int findUserByEmail(String uEmail);
    String selectPasswordByEmail(String uEmail);
    String selectNameByEmail(String uEmail);
    Integer selectUserState(String uEmail);
    int selectVIPByEmail(String uEmail);
    void updateVIP(String uEmail, int uVIP);
    void updateState(String uEmail, int uState);
}
