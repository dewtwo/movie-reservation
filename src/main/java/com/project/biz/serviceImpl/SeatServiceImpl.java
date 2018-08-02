package com.project.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.biz.dao.SeatDAO;
import com.project.biz.service.SeatService;
import com.project.biz.vo.CinemaVO;
import com.project.biz.vo.MovieVO;
import com.project.biz.vo.ScheduleVO2;
import com.project.biz.vo.SeatVO;

@Service("seatService")
public class SeatServiceImpl implements SeatService{
	@Autowired
	private SeatDAO seatDao;

	@Override
	public List<String> getSeatList(String scheduleCode) {
		return seatDao.getSeatList(scheduleCode);
	}

	@Override
	public MovieVO getMovie(int movieNumber) {
		return seatDao.getMovie(movieNumber);
	}

	@Override
	public CinemaVO getCinema(int cinemaNumber) {
		return seatDao.getCinema(cinemaNumber);
	}

	@Override
	public ScheduleVO2 getSchedule(ScheduleVO2 vo) {
		return seatDao.getSchedule(vo);
	}

	@Override
	public SeatVO insertSeat(SeatVO vo) {
		return seatDao.insertSeat(vo);
	}
}
