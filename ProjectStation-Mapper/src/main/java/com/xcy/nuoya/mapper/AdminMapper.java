package com.xcy.nuoya.mapper;

import com.xcy.nuoya.pojo.Admin;

import java.util.List;

public interface AdminMapper {
    List<Admin> list();

    int selectAdmin(Admin admin);

    void deleteAdmin(int id);

    Admin showAdmin(int id);

    void addAdmin(Admin admin);

    void editAdmin(Admin admin);
}
