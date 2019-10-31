package com.xcy.nuoya.controller;

import com.xcy.nuoya.pojo.Science;
import com.xcy.nuoya.service.ScienceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/3
 * @Description: com.xcy.nuoya.controller
 * @version: 1.0
 */
@Controller
@RequestMapping("science")
public class ScienceController {

    @Autowired
    ScienceService scienceService;

    @RequestMapping("list")
    public String getScienceList(Model model){
        List<Science> scienceList = scienceService.selectAllScience();
        model.addAttribute("scienceList",scienceList);
        return "behind/science";
    }
    @RequestMapping("/showScience")
    public String showScience(int id,Model model){
        if(id != 0){
            Science science = scienceService.showScience(id);
            model.addAttribute("science",science);
            System.out.println(science);
        }
        return "behind/addScience";
    }
    @RequestMapping("/addScience")
    public String addScience(Science science){
        if (science.getId() != 0){
            scienceService.updateScience(science);
            return "redirect:list";
        } else {
            scienceService.addScience(science);
            return "redirect:list";
        }
    }
    @RequestMapping("/deleteScience")
    public String deleteScience(int id){
        scienceService.deleteScience(id);
        return "redirect:list";
    }

}
