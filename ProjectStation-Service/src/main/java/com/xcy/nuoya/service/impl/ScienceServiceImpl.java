package com.xcy.nuoya.service.impl;

import com.xcy.nuoya.mapper.ScienceMapper;
import com.xcy.nuoya.pojo.Science;
import com.xcy.nuoya.service.ScienceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ScienceServiceImpl implements ScienceService {

    @Autowired
    ScienceMapper scienceMapper;

    public List<Science> selectAllScience() {

        List<Science> scienceList = scienceMapper.selectAllScience();
        return scienceList;
    }

    public void addScience(Science science) {
        if(science.getId() != 0){
            scienceMapper.editScience(science);
        }
        scienceMapper.addScience(science);
    }

    public void deleteScience(int id) {
        scienceMapper.deleteScience(id);

    }

    public Science showScience(int id) {

        Science science = scienceMapper.showScience(id);
        return science;
    }

    public void updateScience(Science science) {
        scienceMapper.updateScience(science);
    }


}
