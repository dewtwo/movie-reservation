package com.project.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.biz.vo.ReservationVO;
import com.project.biz.vo.ReservationVO2;

@Repository
public class ReservationDAO2 {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<ReservationVO2> allReservationList(String id) {
		List<ReservationVO2> result = sqlSession.selectList("reservation.allReservationList", id);
		return result;
	}
}
