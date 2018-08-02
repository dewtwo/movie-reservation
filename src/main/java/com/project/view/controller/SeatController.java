package com.project.view.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.biz.service.SeatService;
import com.project.biz.vo.ScheduleVO2;
import com.project.biz.vo.SeatVO;

@Controller
public class SeatController {
	@Resource(name="seatService")
	private SeatService seatService;
	
	@RequestMapping("/getSeatList.do")
	public String getSeatList(ScheduleVO2 vo, Model model){
		model.addAttribute("movieInfo", seatService.getMovie(vo.getMovie_number()));
		model.addAttribute("cinemaInfo", seatService.getCinema(vo.getCinema_number()));
		model.addAttribute("scheduleInfo", seatService.getSchedule(vo));
		model.addAttribute("seatList", seatService.getSeatList(vo.getSchedule_code()));
		return "selectSeat";
	}
	
	@RequestMapping("/insertSeat.do")
	public String insertSeat(SeatVO vo, Model model, @RequestParam(value="price",required=true) String price, 
			@RequestParam(value="id",required=true) String id, @RequestParam(value="date",required=true) String date){
		SeatVO seat = seatService.insertSeat(vo);
		String url = "";
		if(seat!=null){
			url = "redirect:insertReservation.do?reservation_code="+date+"-"+seat.getSeat_code()
					+"&seat_code="+seat.getSeat_code()+"&id="+id+"&price="+ Integer.parseInt(price);
		} else{
			model.addAttribute("result", "failure");
			url = "reservation";
		}
		return url;
	}
}
