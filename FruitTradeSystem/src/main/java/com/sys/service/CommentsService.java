package com.sys.service;

import com.sys.pojo.Comments;

import java.util.List;

public interface CommentsService {
    void insertComment(Comments comments);
    void deleteComment(Comments comments);
    List<Comments> selectAllComments();
}
