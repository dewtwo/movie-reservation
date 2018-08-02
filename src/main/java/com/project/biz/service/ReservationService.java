package com.project.biz.service;

import java.util.List;

import com.project.biz.vo.ReservationVO;
import com.project.biz.vo.ReservationVO2;

public interface ReservationService {
	public void insertReservation(ReservationVO vo);

	public List<ReservationVO2> allReservationList(String id);

	public void deleteReservation(String reservation_code);
}
