package com.xcy.nuoya.service;

import com.xcy.nuoya.pojo.Project;
import com.xcy.nuoya.pojo.ProjectVo;
import org.springframework.stereotype.Service;

import java.util.List;


public interface ProjectService {
    List<Project> selectAllProject();

    List<Project> getProjectList(ProjectVo projectVo);

    int getCount(ProjectVo projectVo);

    void deleteProjects(Integer[] ids);

    void deleteProject(int id);

    Project projectId(int id);

    void addProject(Project project);

    void editProject(Project project);

}
