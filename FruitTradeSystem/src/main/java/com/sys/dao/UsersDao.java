package com.sys.dao;

import com.sys.pojo.Users;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("UsersDao")
@Mapper
public interface UsersDao {
    void userRegister(@Param("uEmail")String uEmail, @Param("uName")String uName, @Param("uPassword")String uPassword);
    void insertUser(Users users);
    void deleteUser(String uEmail);
    void updateUser(@Param("uEmail")String uEmail, @Param("uName")String uName, @Param("uAddress")String uAddress, @Param("uPhonenum")String uPhonenum);
    void updateUserPassword(Users users);
    List<Users> selectAllUsers();
    Users selectUsersByEmail(String uEmail);
    int findUserByEmail(String uEmail);
    String selectPasswordByEmail(String uEmail);
    Integer selectUserState(String uEmail);
    void updateVIP(Users users);
    void updateState(@Param("uEmail")String uEmail,@Param("uState") int uState);
}
