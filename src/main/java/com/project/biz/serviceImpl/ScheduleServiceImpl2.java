package com.project.biz.serviceImpl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.biz.dao.ScheduleDAO2;
import com.project.biz.service.ScheduleService2;
import com.project.biz.vo.ScheduleVO2;

@Service("scheduleService2")
public class ScheduleServiceImpl2 implements ScheduleService2{
	@Autowired
	private ScheduleDAO2 scheduleDao;

	@Override
	public List<Set<Object>> getScheduleList(String movie, String cinema, String date) {
		return scheduleDao.getScheduleList(movie,cinema,date);
	}

	@Override
	public List<ScheduleVO2> getScheduleTimeList(String movie, String cinema, String date) {
		return scheduleDao.getScheduleTimeList(movie, cinema, date);
	}

	@Override
	public ScheduleVO2 getSchedule(ScheduleVO2 vo) {
		return scheduleDao.getSchedule(vo);
	}
}
