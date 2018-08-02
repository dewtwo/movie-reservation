package com.project.view.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.biz.service.ReviewService;
import com.project.biz.vo.MovieVO;
import com.project.biz.vo.ReviewVO;

@Controller
public class ReviewController {
	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	@RequestMapping("insertReview.do")
	public ModelAndView insertReview(ReviewVO vo){
		ModelAndView mav = new ModelAndView("jsonView");
		reviewService.insertReview(vo);
		mav.addObject("reviewList", reviewService.getReviewList(vo.getMovie_number()));
		return mav;
	}
	
//	@RequestMapping("")
	public String getReviewList(MovieVO vo, Model model){
		model.addAttribute("reviewList", reviewService.getReviewList(vo.getMovie_number()));
		return "";
	}
}
