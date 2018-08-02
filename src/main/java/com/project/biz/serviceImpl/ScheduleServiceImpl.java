package com.project.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.biz.dao.ScheduleDAO;
import com.project.biz.service.ScheduleService;
import com.project.biz.vo.CinemaVO;
import com.project.biz.vo.RankingVO;
import com.project.biz.vo.ScheduleVO;

@Service("scheduleService")
public class ScheduleServiceImpl implements ScheduleService{
	@Autowired
	private ScheduleDAO scheduleDao;

	@Override
	public List<ScheduleVO> getScheduleCinemaList1(ScheduleVO vo) {
		return scheduleDao.getScheduleCinemaList1(vo);
	}

	@Override
	public List<RankingVO> getMovieList(ScheduleVO vo) {
		return scheduleDao.getMovieList(vo);
	}

	@Override
	public List<CinemaVO> getCinemaList(int region_code) {
		return scheduleDao.getCinemaList(region_code);
	}

	@Override
	public List<List<Object>> getTimeCinemaList(String cinema, String date) {
		return scheduleDao.getTimeCinemaList(cinema, date);
	}

	@Override
	public List<List<Object>> getTimeMovieList(String movie, String date) {
		return scheduleDao.getTimeMovieList(movie, date);
	}
}
