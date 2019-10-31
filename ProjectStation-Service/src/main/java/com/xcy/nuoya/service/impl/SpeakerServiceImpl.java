package com.xcy.nuoya.service.impl;

import com.github.pagehelper.PageHelper;
import com.xcy.nuoya.mapper.SpeakerMapper;
import com.xcy.nuoya.pojo.Speaker;
import com.xcy.nuoya.pojo.SpeakerVo;
import com.xcy.nuoya.service.JobService;
import com.xcy.nuoya.service.SpeakerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.jar.JarException;

@Service
public class SpeakerServiceImpl implements SpeakerService {

    @Autowired
    SpeakerMapper speakerMapper;


    public List<Speaker> selectAllSpeaker() {
        List<Speaker> speakerList = speakerMapper.selectAllSpeaker();
        System.out.println("speakerList----------serviceImpl++++++"+speakerList);
        return speakerList;
    }
    public List<Speaker> speakerList() {
        List<Speaker> list = speakerMapper.speakerList();
        return list;
    }

    public Speaker selectSpeakerById(int id) {
        return speakerMapper.selectSpeakerById(id);
    }

    public void saveSpeaker(Speaker speaker) {
        speakerMapper.saveSpeaker(speaker);
    }

    public void updateSpeaker(Speaker speaker) {
        speakerMapper.updateSpeaker(speaker);
    }

    public void deleteSpeakerById(int id) {
        speakerMapper.deleteSpeakerById(id);
    }

    public void deleteSpeakersByIds(Integer[] ids) {

        SpeakerVo speakerVo = new SpeakerVo();
        List<Integer> integers = Arrays.asList(ids);
        speakerVo.setIdList(integers);

        speakerMapper.deleteSpeakersByIds(speakerVo);
    }

    public List<Speaker> selectSpeakerByName(String speakerName) {
        return speakerMapper.selectSpeakerByName(speakerName);
    }

    public List<Speaker> speakerList(SpeakerVo speakerVo) {
        List<Speaker> speakerList = null;
        PageHelper.startPage(speakerVo.getPage(),speakerVo.getPageSize());
        if (speakerVo.getSpeakerName() == "" || speakerVo.getSpeakerName() == null){
             speakerList = speakerMapper.speakerList();
        }else {
            speakerList = speakerMapper.selectSpeakerByName(speakerVo.getSpeakerName());
        }
        System.out.println(speakerList);

        System.out.println("查询2");
        return speakerList;
    }
}
