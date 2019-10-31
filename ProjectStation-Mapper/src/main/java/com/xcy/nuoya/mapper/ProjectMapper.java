package com.xcy.nuoya.mapper;

import com.xcy.nuoya.pojo.Project;
import com.xcy.nuoya.pojo.ProjectVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProjectMapper {
    List<Project> selectAllProject();

    List<Project> getProjectList(ProjectVo projectVo);

    int getCount(ProjectVo projectVo);

    void deleteProjects(@Param("ids")Integer[] ids);

    void deleteProject(int id);

    Project projectId(int id);

    void addProject(Project project);

    void editProject(Project project);
}
