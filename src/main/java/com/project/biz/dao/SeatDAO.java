package com.project.biz.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.biz.vo.CinemaVO;
import com.project.biz.vo.MovieVO;
import com.project.biz.vo.ScheduleVO2;
import com.project.biz.vo.SeatVO;

@Repository
public class SeatDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<String> getSeatList(String scheduleCode){
		List<Object> list = sqlSession.selectList("seat.getSeatList", scheduleCode);
		List<String> resultList = new ArrayList<>();
		for(int i=0; i<list.size(); i++){
			String tmp = list.get(i).toString().replace("{SEAT=", "").replace("}", "");
			if(tmp.indexOf(",") != -1){
				String[] arr = tmp.split(",");
				for(int i2=0; i2<arr.length; i2++){
					resultList.add(arr[i2]);
				}
			} else {
				resultList.add(tmp);
			}
		}
		return resultList;
	}
	public MovieVO getMovie(int movieNumber){
		return sqlSession.selectOne("schedule2.getMovie", movieNumber);
	}
	public CinemaVO getCinema(int cinemaNumber){
		return sqlSession.selectOne("schedule2.getCinema", cinemaNumber);
	}
	public ScheduleVO2 getSchedule(ScheduleVO2 vo){
		return sqlSession.selectOne("schedule2.getSchedule", vo);
	}
	public SeatVO insertSeat(SeatVO vo){
		sqlSession.insert("seat.insertSeat", vo);
		return sqlSession.selectOne("seat.getSeat", vo);
	}
}
