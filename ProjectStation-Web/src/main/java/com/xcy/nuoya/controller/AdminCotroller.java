package com.xcy.nuoya.controller;

import cn.dsna.util.images.ValidateCode;
import com.xcy.nuoya.pojo.Admin;
import com.xcy.nuoya.pojo.AdminYzm;
import com.xcy.nuoya.pojo.ProjectVo;
import com.xcy.nuoya.pojo.Science;
import com.xcy.nuoya.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminCotroller {
    @Autowired
    AdminService adminService;

    @RequestMapping("/list")
    public String list(Model model, ProjectVo projectVo){

        List<Admin> adminList = adminService.list();
        model.addAttribute("adminList",adminList);
        return "behind/admin";
    }

    @RequestMapping("/addAdmin")
    public String addAdmin(int id,Model model){
        if (id != 0){
            Admin admin = adminService.showAdmin(id);
            model.addAttribute("admin",admin);
            System.out.println("修改管理员信息");
        }

        return "behind/addAdmin";
    }

    @RequestMapping("/loguot")
    public String loguot(HttpSession session){
        session.removeAttribute("USERNAME");
        return "";
    }

    @RequestMapping("/showLogin")
    public String showLogin() {
        return "behind/login";
    }

    @RequestMapping("/login")
    @ResponseBody
    public String login(AdminYzm admin, HttpServletRequest request) {

        boolean result = adminService.selectAdmin(admin);
        request.getSession().setAttribute("USERNAME", admin.getEmail());
        String f_yzm = (String) request.getSession().getAttribute("VALIDATE_CODE");
        String u_yzm = admin.getYzm();
        if (!u_yzm.equals(f_yzm)) {

            return "2";
        }
        if (result) {

            return "1";
        } else {
            return "3";
        }
    }
    @RequestMapping("/logOut")
    public String logOut(HttpServletRequest request){
        request.getSession().removeAttribute("USERNAME");
        return "redirect:showLogin";
    }

    @RequestMapping("/create")
    public void create(HttpServletRequest request, HttpServletResponse response) {
        // 第一个参数：图片宽，第二个：高，第三个参数，验证码的位数，第四个参数：干扰线的个数
        ValidateCode vc = new ValidateCode(100, 40, 4, 20);
        // 生成验证码
        vc.createCode();
        // 获取验证码的数据
        String code = vc.getCode();
        // 将数据存到session中
        request.getSession().setAttribute("VALIDATE_CODE", code);
        System.out.println("11");
        System.out.println(code);
        // 将验证码的图片信息通过响应流返回前端
        try {
            vc.write(response.getOutputStream());
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
    @RequestMapping("/showAddAdmin")
    public String showAddAdmin(Admin admin){
        adminService.addAdmin(admin);
        return "redirect:list";
    }
    @RequestMapping("/deleteAdmin")
    public String deleteAdmin(int id){
        adminService.deleteAdmin(id);
        return "redirect:list";
    }
}
