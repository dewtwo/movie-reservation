package com.project.biz.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.biz.vo.ScheduleVO2;

@Repository
public class ScheduleDAO2 {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Set<Object>> getScheduleList(String movie, String cinema, String date){
		HashMap<String, Object> map = new HashMap<>();
		map.put("movie_number", movie);
		map.put("cinema_number", cinema);
		map.put("schedule_date", date);
		
		List<ScheduleVO2> list = sqlSession.selectList("schedule2.getScheduleList", map);
		
		Set<Object> movieSet = new LinkedHashSet<Object>();
		Set<Object> cinemaSet = new LinkedHashSet<Object>();
		Set<Object> dateSet = new LinkedHashSet<Object>();
		
		for(int i=0; i<list.size(); i++){
			ScheduleVO2 svo = list.get(i);
			movieSet.add(sqlSession.selectOne("schedule2.getMovie", svo.getMovie_number()));
			cinemaSet.add(sqlSession.selectOne("schedule2.getCinema", svo.getCinema_number()));
			dateSet.add(svo.getSchedule_date());
		}
		
		List<Set<Object>> totalList = new ArrayList<>();
		totalList.add(movieSet);
		totalList.add(cinemaSet);
		totalList.add(dateSet);
		return totalList;
	}
	
	public List<ScheduleVO2> getScheduleTimeList(String movie, String cinema, String date){
		HashMap<String, Object> map = new HashMap<>();
		map.put("movie_number", movie);
		map.put("cinema_number", cinema);
		map.put("schedule_date", date);
		
		return sqlSession.selectList("schedule2.getScheduleTimeList", map);
	}
	
	public ScheduleVO2 getSchedule(ScheduleVO2 vo){
		return sqlSession.selectOne("schedule2.getSchedule", vo);
	}
}
