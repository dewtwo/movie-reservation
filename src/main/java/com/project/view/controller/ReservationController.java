package com.project.view.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.biz.service.ReservationService;
import com.project.biz.vo.ReservationVO;
import com.project.biz.vo.ReservationVO2;

@Controller
public class ReservationController {
	@Resource(name = "reservationService")
	private ReservationService reservationService;

	@RequestMapping("/insertReservation.do")
	public String insertReservation(ReservationVO vo, Model model) {
		reservationService.insertReservation(vo);
		return "redirect:allReservationList.do?id="+vo.getId();
	}

	@RequestMapping("/allReservationList.do")
	public ModelAndView allReservationList(String id) {
		ModelAndView mav = new ModelAndView();
		List<ReservationVO2> result = reservationService.allReservationList(id);
		if (result != null) {
			mav.setViewName("myPage");
			mav.addObject("reservation", reservationService.allReservationList(id));
			return mav;
		} else {
			mav.setViewName("myPage");
			return mav;
		}

	}

	@RequestMapping("/deleteReservation.do")
	public ModelAndView deleteReservation(String reservation_code, String id) {
		ModelAndView mav = new ModelAndView();
		reservationService.deleteReservation(reservation_code);
		mav.setViewName("redirect:allReservationList.do?id=" + id);
		return mav;

	}

}
