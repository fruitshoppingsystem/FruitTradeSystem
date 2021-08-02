package com.sys.service.impl;

import com.sys.dao.CommentsDao;
import com.sys.pojo.Comments;
import com.sys.service.CommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("CommentsService")
@Transactional
public class CommentsServiceImpl implements CommentsService {
    @Autowired
    private CommentsDao commentsDao;
    @Override
    public void insertComment(Comments comments) {
        commentsDao.insertComment(comments);
    }

    @Override
    public void deleteComment(Comments comments) {
        commentsDao.deleteComment(comments);
    }

    @Override
    public List<Comments> selectAllComments() {
        return commentsDao.selectAllComments();
    }
}
