package com.project.biz.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.biz.vo.ReservationVO;

@Repository
public class ReservationDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public void insertReservation(ReservationVO vo) {
		sqlSession.insert("reservation.insertReservation", vo);

	}

	public void deleteReservation(String reservation_code) {
		sqlSession.delete("reservation.deleteReservation", reservation_code);
	}
}
