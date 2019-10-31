package com.xcy.nuoya.controller;

import com.xcy.nuoya.pojo.User;
import com.xcy.nuoya.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/list")
    public String list(Model model){
        List<User> userList =  userService.list();
        model.addAttribute("userList",userList);
        return "behind/user";
    }

    @RequestMapping("/addUser")
    public String addUser(int id,Model model){
        if (id != 0){
            User user = userService.showAddUser(id);
            model.addAttribute("user",user);
        }
        return "behind/addUser";
    }
    @RequestMapping("/editUser")
    public String editUser(User user){
            userService.addUser(user);
        return "redirect:list";
    }
    @RequestMapping("/deleteUser")
    public String deleteUser(int id){
        userService.deleteUser(id);
        return "redirect:list";
    }

}
