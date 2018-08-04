package com.project.view.controller;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.biz.service.ScheduleService;
import com.project.biz.vo.MovieVO;
import com.project.biz.vo.ScheduleVO;

@Controller
public class ScheduleController {
	@Resource(name="scheduleService")
	private ScheduleService scheduleService;
	
	@RequestMapping("/getScheduleCinemaList.do")
	public String getCinemaList(int region_code, Model model){
		model.addAttribute("pageName", "cinemaList");
		model.addAttribute("cinemaList", scheduleService.getCinemaList(region_code));
		return "schedule";
	}
	
	@RequestMapping("/getScheduleMovieList.do")
	public String getMovieList(ScheduleVO vo, Model model){
		model.addAttribute("pageName", "movieList");
		model.addAttribute("movieList", scheduleService.getMovieList(vo));
		return "schedule";
	}
	
	@RequestMapping("/getTimeList.do")
	public ModelAndView getTimeCinemaList(@RequestParam(value="movie",defaultValue="0",required=true) String movie, 
			@RequestParam(value="cinema",defaultValue="0",required=true) String cinema, 
			@RequestParam(value="date",defaultValue="0000-00-00",required=true) String date){
		ModelAndView mav = new ModelAndView("jsonView");
		if(!cinema.equals("0")){
			List<List<Object>> list = scheduleService.getTimeCinemaList(cinema, date);
			mav.addObject("name", "cinema");
			mav.addObject("nameList", list.get(1));
			mav.addObject("timeList", list.get(0));
		} else if(!movie.equals("0")){
			List<List<Object>> list = scheduleService.getTimeMovieList(movie, date);
			mav.addObject("name", "movie");
			mav.addObject("nameList", list.get(1));
			mav.addObject("timeList", list.get(0));
		}
		
		return mav;
	}
	
}
