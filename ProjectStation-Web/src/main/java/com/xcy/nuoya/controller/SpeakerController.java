package com.xcy.nuoya.controller;




import com.github.pagehelper.PageInfo;
import com.xcy.nuoya.pojo.Job;
import com.xcy.nuoya.pojo.Speaker;
import com.xcy.nuoya.pojo.SpeakerVo;
import com.xcy.nuoya.service.JobService;
import com.xcy.nuoya.service.SpeakerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/speaker")
public class SpeakerController {
    @Autowired
    SpeakerService speakerService;
    @Autowired
    JobService jobService;
/*
    @RequestMapping("/list")
    public String list(String speakerName, Model model){
        List<Speaker> speakerList = null;
        if (speakerName == "" || speakerName == null){
            speakerList = speakerService.speakerList();
        } else {
            speakerList = speakerService.selectSpeakerByName(speakerName);
        }
        model.addAttribute("speakerList",speakerList);
        return "behind/speaker";
    }*/
    @RequestMapping("/list")
    public String list(Model model, SpeakerVo speakerVo) {
        List<Speaker> speakerList = speakerService.speakerList(speakerVo);
        //model.addAttribute("speakerList", speakerList);
        PageInfo<Speaker> pageInfo = new PageInfo<Speaker>(speakerList);
        model.addAttribute("pageInfo",pageInfo);

        System.out.println(speakerVo.getPageSize());
        System.out.println("主讲人管理");
        return "behind/speaker";
    }
    @RequestMapping("/showAddSpeaker")
    public String addSpeaker(int id, Model model){
        List<Job> jobList = jobService.list();
        model.addAttribute("jobList",jobList);
        model.addAttribute("id",id);
        if (id == 0){
            return "behind/addSpeaker";
        } else {
            Speaker speaker = speakerService.selectSpeakerById(id);
            model.addAttribute("speaker",speaker);
            return "behind/addSpeaker";
        }
    }



    @RequestMapping("saveOrUpdate")
    public String saveOrUpdate(Speaker speaker){
        if (speaker.getId() == 0){
            speakerService.saveSpeaker(speaker);
        } else {
            speakerService.updateSpeaker(speaker);
        }

        return "redirect:list";
    }

    @RequestMapping("deleteSpeaker")
    public String deleteSpeakerById(int id){
        speakerService.deleteSpeakerById(id);
        return "redirect:list";
    }

    @RequestMapping("deleteSpeakers")
    public String deleteSpeakersByIds(Integer[] ids){
        speakerService.deleteSpeakersByIds(ids);
        return "redirect:list";
    }

}
