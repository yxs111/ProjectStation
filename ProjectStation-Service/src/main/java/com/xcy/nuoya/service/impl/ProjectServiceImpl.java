package com.xcy.nuoya.service.impl;

import com.xcy.nuoya.mapper.ProjectMapper;
import com.xcy.nuoya.pojo.Project;
import com.xcy.nuoya.pojo.ProjectVo;
import com.xcy.nuoya.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectServiceImpl implements ProjectService {

    @Autowired
    ProjectMapper projectMapper;

    public List<Project> selectAllProject() {

        List<Project> projectList = projectMapper.selectAllProject();
        System.out.println("ProjectServiceImpl的 projectList++++++" + projectList);
        return projectList;
    }
    public List<Project> getProjectList(ProjectVo projectVo) {
        return projectMapper.getProjectList(projectVo);

    }

    public int getCount(ProjectVo projectVo) {

        int count = projectMapper.getCount(projectVo);
        return count;
    }

    public void deleteProjects(Integer[] ids) {
        projectMapper.deleteProjects(ids);

    }

    public void deleteProject(int id) {
        projectMapper.deleteProject(id);
    }

    public Project projectId(int id) {
        Project project = projectMapper.projectId(id);
        return project;
    }

    public void addProject(Project project) {
        System.out.println(project+"=======");
        projectMapper.addProject(project);
    }

    public void editProject(Project project) {
        projectMapper.editProject(project);

    }
}
