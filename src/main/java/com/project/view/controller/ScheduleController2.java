package com.project.view.controller;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.biz.service.ScheduleService2;
import com.project.biz.vo.ScheduleVO2;

@Controller
public class ScheduleController2 {
	@Resource(name="scheduleService2")
	private ScheduleService2 scheduleService;
	
	@RequestMapping("/reservation.do")
	public String openReservationPage(@RequestParam(value="movie",defaultValue="0",required=false) String movie, 
			@RequestParam(value="cinema",defaultValue="0",required=false) String cinema, Model model){
		if(!movie.equals("0")){
			model.addAttribute("value", "movie="+movie);
		} else if(!cinema.equals("0")){
			model.addAttribute("value", "cinema="+cinema);
		} else {
			model.addAttribute("value", "0");
		}
		return "reservation";
	}
	
	@RequestMapping("/getScheduleList.do")
	public ModelAndView getScheduleList(@RequestParam(value="movie",defaultValue="0",required=true) String movie, 
			@RequestParam(value="cinema",defaultValue="0",required=true) String cinema, 
			@RequestParam(value="date",defaultValue="0000-00-00",required=true) String date){
		
		ModelAndView mav = new ModelAndView("jsonView");
		if(!(movie.equals("0")) && !(cinema.equals("0")) && !(date.equals("0000-00-00"))){
			List<ScheduleVO2> timeList = scheduleService.getScheduleTimeList(movie, cinema, date);
			mav.addObject("timeList", timeList);
		} else{
			List<Set<Object>> list = scheduleService.getScheduleList(movie, cinema, date);
			mav.addObject("movie",movie);
			mav.addObject("cinema",cinema);
			mav.addObject("date",date);
			mav.addObject("movieList", list.get(0));
			mav.addObject("cinemaList", list.get(1));
			mav.addObject("dateList", list.get(2));
			mav.addObject("timeList", null);
		}
		
		return mav;
	}
	
	@RequestMapping("/getSchedule.do")
	public ModelAndView getSchedule(ScheduleVO2 vo){
		ModelAndView mav = new ModelAndView("jsonView");
		mav.addObject("schedule", scheduleService.getSchedule(vo));
		return mav;
	}
}
