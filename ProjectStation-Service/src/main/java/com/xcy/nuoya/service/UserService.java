package com.xcy.nuoya.service;

import com.xcy.nuoya.pojo.User;

import java.util.List;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/1
 * @Description: com.xcy.nuoya.service
 * @version: 1.0
 */
public interface UserService {

    List<User> list();

    User showAddUser(int id);

    void addUser(User user);

    void deleteUser(int id);
}
