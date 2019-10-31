package com.xcy.nuoya.service.impl;

import com.xcy.nuoya.mapper.UserMapper;
import com.xcy.nuoya.pojo.User;
import com.xcy.nuoya.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/1
 * @Description: com.xcy.nuoya.service.impl
 * @version: 1.0
 */

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper mapper;

    public List<User> list() {
        List<User> userList = mapper.list();
        return userList;
    }

    public User showAddUser(int id) {
        User user = mapper.showAddUser(id);
        return user;
    }

    public void addUser(User user) {
        if(user.getId() != 0){
            mapper.editUser(user);
        }
        mapper.addUser(user);
    }

    public void deleteUser(int id) {
        mapper.deleteUser(id);

    }

}
