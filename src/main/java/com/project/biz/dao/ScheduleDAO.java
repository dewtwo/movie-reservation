package com.project.biz.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.biz.vo.CinemaVO;
import com.project.biz.vo.MovieVO;
import com.project.biz.vo.RankingVO;
import com.project.biz.vo.ScheduleVO;

@Repository
public class ScheduleDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<ScheduleVO> getScheduleCinemaList1(ScheduleVO vo){
		return sqlSession.selectList("schedule.getScheduleCinemaList1", vo);
	}
	
	public List<RankingVO> getMovieList(ScheduleVO vo){
		return sqlSession.selectList("movie.getMovieListNow");
	}
	
	public List<CinemaVO> getCinemaList(int region_code) {
		return sqlSession.selectList("cinema.cinemaList", region_code);
	}
	
	public List<List<Object>> getTimeCinemaList(String cinema, String date){
		HashMap<String, Object> map = new HashMap<>();
		map.put("cinema_number", cinema);
		map.put("schedule_date", date);
		
		List<List<Object>> resultList = new ArrayList<>();
		List<Object> list1 = sqlSession.selectList("schedule.getTimeCinemaList", map);
		Set<Object> set = new LinkedHashSet<>();
		for(int i=0; i<list1.size(); i++){
			MovieVO movie = sqlSession.selectOne("movie.getMovieDetail", ((ScheduleVO)list1.get(i)).getMovie_number());
			set.add(movie);
		}
		resultList.add(list1);
		resultList.add(new ArrayList<>(set));
		return resultList;
	}
	
	public List<List<Object>> getTimeMovieList(String movie, String date){
		HashMap<String, Object> map = new HashMap<>();
		map.put("movie_number", movie);
		map.put("schedule_date", date);
		
		List<List<Object>> resultList = new ArrayList<>();
		List<Object> list1 = sqlSession.selectList("schedule.getTimeMovieList", map);
		Set<Object> set = new LinkedHashSet<>();
		for(int i=0; i<list1.size(); i++){
			CinemaVO cinema = sqlSession.selectOne("cinema.cinemaDetail", ((ScheduleVO)list1.get(i)).getCinema_number());
			set.add(cinema);
		}
		resultList.add(list1);
		resultList.add(new ArrayList<>(set));
		return resultList;
	}
}
