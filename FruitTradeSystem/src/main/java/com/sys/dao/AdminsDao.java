package com.sys.dao;

import com.sys.pojo.Admins;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("AdminsDao")
@Mapper
public interface AdminsDao {
    List<Admins> selectAdminById(int aId);
}
