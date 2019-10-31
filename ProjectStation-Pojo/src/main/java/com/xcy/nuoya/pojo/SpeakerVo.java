package com.xcy.nuoya.pojo;

import java.util.List;

/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/3
 * @Description: com.xcy.nuoya.pojo
 * @version: 1.0
 */
public class SpeakerVo extends Speaker {
    private int page = 1;
    private int pageSize = 5;
    private String speakerName;


    private List<Integer> idList;


    public SpeakerVo() {
    }

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    @Override
    public String getSpeakerName() {
        return speakerName;
    }

    @Override
    public void setSpeakerName(String speakerName) {
        this.speakerName = speakerName;
    }

    public List<Integer> getIdList() {
        return idList;
    }

    public void setIdList(List<Integer> idList) {
        this.idList = idList;
    }

    @Override
    public String toString() {
        return "SpeakerVo{" +
                "page=" + page +
                ", pageSize=" + pageSize +
                ", speakerName='" + speakerName + '\'' +
                ", idList=" + idList +
                '}';
    }
}
