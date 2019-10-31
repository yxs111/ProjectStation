package com.xcy.nuoya.mapper;

import com.xcy.nuoya.pojo.Science;

import java.util.List;

public interface ScienceMapper {
    List<Science> selectAllScience();

    void addScience(Science science);

    void deleteScience(int id);

    Science showScience(int id);

    void editScience(Science science);

    void updateScience(Science science);
}
