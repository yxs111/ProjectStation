package com.xcy.nuoya.service;

import com.xcy.nuoya.pojo.Speaker;
import com.xcy.nuoya.pojo.SpeakerVo;

import java.util.List;

public interface SpeakerService {
    List<Speaker> selectAllSpeaker();

    List<Speaker> speakerList();

    Speaker selectSpeakerById(int id);

    void saveSpeaker(Speaker speaker);

    void updateSpeaker(Speaker speaker);

    void deleteSpeakerById(int id);

    void deleteSpeakersByIds(Integer[] ids);

    List<Speaker> selectSpeakerByName(String speakerName);

    List<Speaker> speakerList(SpeakerVo speakerVo);
}
