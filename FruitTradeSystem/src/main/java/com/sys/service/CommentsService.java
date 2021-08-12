package com.sys.service;

import com.sys.pojo.Comments;

import java.util.List;

public interface CommentsService {
    void insertComment(Comments comments);
    void deleteComment(Integer cId);
    List<Comments> selectAllComments();
    List<Comments> selectCommentsById(Integer gId);
    Integer selectAverageScore(String mCertificatenum);
}
