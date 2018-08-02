package com.project.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.biz.dao.ReservationDAO;
import com.project.biz.dao.ReservationDAO2;
import com.project.biz.service.ReservationService;
import com.project.biz.vo.ReservationVO;
import com.project.biz.vo.ReservationVO2;

@Service("reservationService")
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	private ReservationDAO reservationDao;

	@Autowired
	private ReservationDAO2 reservationDao2;

	@Override
	public void insertReservation(ReservationVO vo) {
		reservationDao.insertReservation(vo);
	}

	@Override
	public List<ReservationVO2> allReservationList(String id) {
		return reservationDao2.allReservationList(id);
	}

	@Override
	public void deleteReservation(String reservation_code) {
		reservationDao.deleteReservation(reservation_code);
	}

}
