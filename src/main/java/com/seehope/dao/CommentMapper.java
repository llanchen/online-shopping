package com.seehope.dao;

import com.seehope.entity.Comment;

import java.util.List;

public interface CommentMapper {
    //添加一条评论
    public int addComment(Comment comment);

    //查询针对某个商品的所有评论
    public List<Comment> searchComments(int proid);

}
