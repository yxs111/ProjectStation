package com.xcy.nuoya.pojo;

public class Science {
    private int id;
    private String scienceName;
    private int projectId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getScienceName() {
        return scienceName;
    }

    public void setScienceName(String scienceName) {
        this.scienceName = scienceName;
    }

    public int getProjectId() {
        return projectId;
    }

    public void setProjectId(int projectId) {
        this.projectId = projectId;
    }

    @Override
    public String toString() {
        return "Science{" +
                "id=" + id +
                ", scienceName='" + scienceName + '\'' +
                ", projectId=" + projectId +
                '}';
    }
}
