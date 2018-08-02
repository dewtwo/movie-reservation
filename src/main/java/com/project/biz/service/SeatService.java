package com.project.biz.service;

import java.util.List;

import com.project.biz.vo.CinemaVO;
import com.project.biz.vo.MovieVO;
import com.project.biz.vo.ScheduleVO2;
import com.project.biz.vo.SeatVO;

public interface SeatService {
	public List<String> getSeatList(String scheduleCode);
	public MovieVO getMovie(int movieNumber);
	public CinemaVO getCinema(int cinemaNumber);
	public ScheduleVO2 getSchedule(ScheduleVO2 vo);
	public SeatVO insertSeat(SeatVO vo);
}
