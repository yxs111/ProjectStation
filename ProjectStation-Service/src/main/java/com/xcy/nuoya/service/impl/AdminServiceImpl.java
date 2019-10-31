package com.xcy.nuoya.service.impl;

import com.xcy.nuoya.mapper.AdminMapper;
import com.xcy.nuoya.pojo.Admin;
import com.xcy.nuoya.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminMapper mapper;

    public List<Admin> list() {
        List<Admin> list = mapper.list();
        return list;
    }
    public boolean selectAdmin(Admin admin) {
        int i = mapper.selectAdmin(admin);
        System.out.println(admin.getEmail());
        System.out.println(i);
        return i > 0? true:false;
    }

    public void deleteAdmin(int id) {
        mapper.deleteAdmin(id);
    }

    public Admin showAdmin(int id) {
        Admin admin = mapper.showAdmin(id);
        System.out.println(admin);
        return admin;
    }

    public void addAdmin(Admin admin) {
        if(admin.getId() != 0){
            mapper.editAdmin(admin);
        }
            mapper.addAdmin(admin);
    }
}
