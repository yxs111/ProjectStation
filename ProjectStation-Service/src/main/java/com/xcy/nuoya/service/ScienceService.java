package com.xcy.nuoya.service;

import com.xcy.nuoya.pojo.Science;
import com.xcy.nuoya.pojo.Speaker;

import java.util.List;


public interface ScienceService {
    List<Science> selectAllScience();

    void addScience(Science science);

    void deleteScience(int id);

    Science showScience(int id);

    void updateScience(Science science);
}
