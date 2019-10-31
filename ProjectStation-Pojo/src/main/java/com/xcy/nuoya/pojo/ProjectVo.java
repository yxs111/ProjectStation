package com.xcy.nuoya.pojo;

public class ProjectVo {
    private String projectName;
    private int speakerId;
    private  int scienceId;

    private int page = 1;//当前的页数
    private int rows = 5;//每页显示多少条
    private int begin = 0;//limit 0,5

    public ProjectVo() {
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public int getSpeakerId() {
        return speakerId;
    }

    public void setSpeakerId(int speakerId) {
        this.speakerId = speakerId;
    }

    public int getScienceId() {
        return scienceId;
    }

    public void setScienceId(int scienceId) {
        this.scienceId = scienceId;
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public int getBegin() {
        return begin;
    }

    public void setBegin(int begin) {
        this.begin = begin;
    }

    @Override
    public String toString() {
        return "ProjectVo{" +
                "projectName='" + projectName + '\'' +
                ", speakerId=" + speakerId +
                ", scienceId=" + scienceId +
                ", page=" + page +
                ", rows=" + rows +
                ", begin=" + begin +
                '}';
    }
}
