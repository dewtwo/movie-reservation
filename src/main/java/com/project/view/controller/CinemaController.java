package com.project.view.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import com.project.biz.service.CinemaService;
import com.project.biz.service.MemberService;
import com.project.biz.vo.CinemaVO;

@Controller
public class CinemaController {
	@Resource(name = "cinemaService")
	private CinemaService cinemaService;

	@RequestMapping("/cinemaList.do")
	public String getCinemaList(int region_code, Model model) {
		model.addAttribute("cinema", cinemaService.getCinemaList(region_code));
		return "cinema";
	}

	@RequestMapping("/cinemaDetail.do")
	public String getCinemaDetail(int cinema_number, Model model) {
		model.addAttribute("cinemaDetail", cinemaService.getCinemaDetail(cinema_number));
		return "cinema";
	}
}
