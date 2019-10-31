package com.xcy.nuoya.pojo;

public class Project {
    private int id;
    private String projectName;
    private String ProjectDetail;
    private int speakerId;
    private int scienceId;
    private String projectImgUrl;
    private String ProjectUrl;

    private String speakerName;
    private String scienceName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getProjectDetail() {
        return ProjectDetail;
    }

    public void setProjectDetail(String projectDetail) {
        ProjectDetail = projectDetail;
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

    public String getProjectImgUrl() {
        return projectImgUrl;
    }

    public void setProjectImgUrl(String projectImgUrl) {
        this.projectImgUrl = projectImgUrl;
    }

    public String getProjectUrl() {
        return ProjectUrl;
    }

    public void setProjectUrl(String projectUrl) {
        ProjectUrl = projectUrl;
    }

    public String getSpeakerName() {
        return speakerName;
    }

    public void setSpeakerName(String speakerName) {
        this.speakerName = speakerName;
    }

    public String getScienceName() {
        return scienceName;
    }

    public void setScienceName(String scienceName) {
        this.scienceName = scienceName;
    }

    @Override
    public String toString() {
        return "Project{" +
                "id=" + id +
                ", projectName='" + projectName + '\'' +
                ", ProjectDetail='" + ProjectDetail + '\'' +
                ", speakerId=" + speakerId +
                ", scienceId=" + scienceId +
                ", projectImgUrl='" + projectImgUrl + '\'' +
                ", ProjectUrl='" + ProjectUrl + '\'' +
                ", speakerName='" + speakerName + '\'' +
                ", scienceName='" + scienceName + '\'' +
                '}';
    }
}
