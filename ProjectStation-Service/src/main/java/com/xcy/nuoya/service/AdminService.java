package com.xcy.nuoya.service;

import com.xcy.nuoya.pojo.Admin;
import com.xcy.nuoya.pojo.Science;

import java.util.List;

public interface AdminService {

    List<Admin> list();

    boolean selectAdmin(Admin admin);

    void deleteAdmin(int id);

    Admin showAdmin(int id);

    void addAdmin(Admin admin);
}
