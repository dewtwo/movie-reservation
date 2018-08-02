package com.project.biz.service;

import java.util.List;

import com.project.biz.vo.CinemaVO;
import com.project.biz.vo.RankingVO;
import com.project.biz.vo.ScheduleVO;

public interface ScheduleService {

	public List<ScheduleVO> getScheduleCinemaList1(ScheduleVO vo);
	public List<RankingVO> getMovieList(ScheduleVO vo);
	public List<CinemaVO> getCinemaList(int region_code);
	public List<List<Object>> getTimeCinemaList(String cinema, String date);
	public List<List<Object>> getTimeMovieList(String movie, String date);
	
}
