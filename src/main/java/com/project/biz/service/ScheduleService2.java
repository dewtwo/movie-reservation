package com.project.biz.service;

import java.util.List;
import java.util.Set;

import com.project.biz.vo.ScheduleVO2;

public interface ScheduleService2 {
	public List<Set<Object>> getScheduleList(String movie, String cinema, String date);
	public List<ScheduleVO2> getScheduleTimeList(String movie, String cinema, String date);
	public ScheduleVO2 getSchedule(ScheduleVO2 vo);
}
