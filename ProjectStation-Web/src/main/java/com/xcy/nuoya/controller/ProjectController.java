package com.xcy.nuoya.controller;

import com.xcy.nuoya.pojo.Project;
import com.xcy.nuoya.pojo.ProjectVo;
import com.xcy.nuoya.pojo.Science;
import com.xcy.nuoya.pojo.Speaker;
import com.xcy.nuoya.service.ProjectService;
import com.xcy.nuoya.service.ScienceService;
import com.xcy.nuoya.service.SpeakerService;
import com.xcy.nuoya.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/project")
public class ProjectController {

    @Autowired
    ProjectService projectService;

    @Autowired
    ScienceService scienceService;

    @Autowired
    SpeakerService speakerService;

    @Value("${IMAGE_DIR}")
    String imageDir;

    @Value("${IMAGE_URL}")
    String imageUrl;

    @RequestMapping("/getProject")
    public String getProject(Model model){

        List<Project> projectList = projectService.selectAllProject();
        List<Science> scienceList = scienceService.selectAllScience();
        List<Speaker> speakerList = speakerService.selectAllSpeaker();

        for (Project pro:
             projectList) {
            pro.setProjectImgUrl(imageUrl+pro.getProjectImgUrl());
        }
        for (Speaker spe:
             speakerList) {
            spe.setSpeakerImgUrl(imageUrl+spe.getSpeakerImgUrl());
            spe.setQqQrCode(imageUrl+spe.getQqQrCode()+".png");
            spe.setVxQrCode(imageUrl+spe.getVxQrCode()+".png");
        }
        System.out.println("projectList++++++++++++++"+projectList);
        System.out.println("scienceList++++++++++++++"+scienceList);
        System.out.println("speakerList++++++++++++++"+speakerList);

        model.addAttribute("projectList",projectList);
        model.addAttribute("scienceList",scienceList);
        model.addAttribute("speakerList",speakerList);
        return "before/index";
    }
    @RequestMapping("/list")
    public String getProjectList(Model model, ProjectVo projectVo){
        projectVo.setBegin((projectVo.getPage() - 1) * projectVo.getRows());
        System.out.println(projectVo);
        List<Science> scienceList = scienceService.selectAllScience();
        model.addAttribute("scienceList",scienceList);
        List<Speaker> speakerList = speakerService.speakerList();
        model.addAttribute("speakerList",speakerList);
        List<Project> projectList = projectService.getProjectList(projectVo);
        Page<Project> page = new Page<Project>();
        page.setPage(projectVo.getPage());
        page.setSize(projectVo.getRows());
        page.setTotal(projectService.getCount(projectVo));
        page.setRows(projectList);
        model.addAttribute("page",page);
        return "behind/project";
    }
    @RequestMapping("/showAddProject")
    public String showAddProject(int id,Model model){
        System.out.println(id);
        if (id != 0){
            List<Science> scienceList = scienceService.selectAllScience();
            model.addAttribute("scienceList",scienceList);
            List<Speaker> speakerList = speakerService.speakerList();
            model.addAttribute("speakerList",speakerList);
            Project project = projectService.projectId(id);
            model.addAttribute("project",project);
            System.out.println(project);
            System.out.println("修改项目信息");
        }else{
            List<Science> scienceList = scienceService.selectAllScience();
            model.addAttribute("scienceList",scienceList);
            List<Speaker> speakerList = speakerService.speakerList();
            model.addAttribute("speakerList",speakerList);
            System.out.println("添加项目信息");
        }
        return "behind/addProject";
    }
    @RequestMapping("/addProject")
    public String addProject(Project project){
        System.out.println(project);
        if (project.getId() != 0){
            System.out.println("==");
            projectService.editProject(project);
        }else{
            System.out.println("++");
            projectService.addProject(project);
        }
        return "redirect:list";
    }

    @RequestMapping("/deleteProjects")
    public String deleteProjects(Integer[] ids){
        System.out.println(ids.length);
        projectService.deleteProjects(ids);

        return "redirect:list";
    }
    @RequestMapping("/deleteProject")
    public String deleteProject(int id){
        System.out.println(id);
        projectService.deleteProject(id);
        return "redirect:list";
    }
}
