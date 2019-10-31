package com.xcy.nuoya.mapper;

import com.xcy.nuoya.pojo.Speaker;
import com.xcy.nuoya.pojo.SpeakerVo;

import java.util.List;

public interface SpeakerMapper {
    List<Speaker> selectAllSpeaker();

    List<Speaker> speakerList();

    Speaker selectSpeakerById(int id);

    void saveSpeaker(Speaker speaker);

    void updateSpeaker(Speaker speaker);

    void deleteSpeakerById(int id);

    void deleteSpeakersByIds(SpeakerVo speakerVo);

    List<Speaker> selectSpeakerByName(String speakerName);

}
