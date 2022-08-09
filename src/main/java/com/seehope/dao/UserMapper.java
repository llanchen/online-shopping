package com.seehope.dao;

import com.seehope.entity.User;

public interface UserMapper {
    //添加注册成功的用户
    public int addUser(User user);

    // 通过用户名称查找用户
    public User findUserByName(String username);


    User findUserByNameAndPassword(String username, String password);
}
