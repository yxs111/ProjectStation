package com.xcy.nuoya.pojo;

public class Speaker {
    private int id;
    private String speakerName;
    private int jobId;
    private String speakerDetail;
    private String speakerImgUrl;
    private String qqQrCode;
    private String vxQrCode;

    private String jobName;

    public Speaker() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSpeakerName() {
        return speakerName;
    }

    public void setSpeakerName(String speakerName) {
        this.speakerName = speakerName;
    }

    public int getJobId() {
        return jobId;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public String getSpeakerDetail() {
        return speakerDetail;
    }

    public void setSpeakerDetail(String speakerDetail) {
        this.speakerDetail = speakerDetail;
    }

    public String getSpeakerImgUrl() {
        return speakerImgUrl;
    }

    public void setSpeakerImgUrl(String speakerImgUrl) {
        this.speakerImgUrl = speakerImgUrl;
    }

    public String getQqQrCode() {
        return qqQrCode;
    }

    public void setQqQrCode(String qqQrCode) {
        this.qqQrCode = qqQrCode;
    }

    public String getVxQrCode() {
        return vxQrCode;
    }

    public void setVxQrCode(String vxQrCode) {
        this.vxQrCode = vxQrCode;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    @Override
    public String toString() {
        return "Speaker{" +
                "id=" + id +
                ", speakerName='" + speakerName + '\'' +
                ", jobId=" + jobId +
                ", speakerDetail='" + speakerDetail + '\'' +
                ", speakerImgUrl='" + speakerImgUrl + '\'' +
                ", qqQrCode='" + qqQrCode + '\'' +
                ", vxQrCode='" + vxQrCode + '\'' +
                ", jobName='" + jobName + '\'' +
                '}';
    }
}
