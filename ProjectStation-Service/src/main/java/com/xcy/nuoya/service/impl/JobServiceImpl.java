package com.xcy.nuoya.service.impl;

import com.xcy.nuoya.mapper.JobMapper;
import com.xcy.nuoya.pojo.Job;
import com.xcy.nuoya.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobServiceImpl implements JobService {

    @Autowired
    JobMapper mapper;
    public List<Job> list() {
        List<Job> jobList = mapper.list();
        return jobList;
    }
}
