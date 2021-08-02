package com.sys.dao;

import com.sys.pojo.Users;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("UsersDao")
@Mapper
public interface UsersDao {
    void insertUser(Users users);
    void deleteUser(String uEmail);
    void updateUser(Users users);
    void updateUserPassword(Users users);
    List<Users> selectAllUsers();
    void updateVIP(Users users);
    void updateState(Users users);
}
