package com.seehope.service;

import com.seehope.dao.CommentMapper;
import com.seehope.entity.Comment;
import com.seehope.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class CommentService {
    SqlSession sqlSession= MyBatisUtil.getSession();
    CommentMapper commentMapper=sqlSession.getMapper(CommentMapper.class);

    public int addComment(Comment comment){
        int num=commentMapper.addComment(comment);
        sqlSession.commit();
        return num;
    }

    public List<Comment> searchComments(int proid){
        return commentMapper.searchComments(proid);
    }
}
