package com.sys.dao;

import com.sys.pojo.Comments;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("CommentsDao")
@Mapper
public interface CommentsDao {
    void insertComment(Comments comments);
    void deleteComment(Comments comments);
    List<Comments> selectAllComments();
}
