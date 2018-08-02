package com.project.view.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.biz.service.MovieService;
import com.project.biz.service.ReviewService;
import com.project.biz.vo.MovieVO;
import com.project.biz.vo.RankingVO;
import com.project.biz.vo.ReviewVO;

@Controller
public class MovieController {
	@Resource(name="movieService")
	private MovieService movieService;
	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	@RequestMapping("/getBoxOfficeList.do")
	public String getBoxOfficeList(RankingVO vo, Model model){
		model.addAttribute("boxOfficeList", movieService.getBoxOfficeList(vo));
		return "main";
	}
	
	@RequestMapping("/getMovieListNow.do")
	public String getMovieListNow(RankingVO vo, Model model){
		model.addAttribute("pageName", "MovieListNow");
		model.addAttribute("movieListNow", movieService.getMovieListNow(vo));
		return "movieList";
	}
	
	@RequestMapping("/getMovieListSoon.do")
	public String getMovieListSoon(MovieVO vo, Model model){
		model.addAttribute("pageName", "MovieListSoon");
		model.addAttribute("movieListSoon", movieService.getMovieListSoon(vo));
		return "movieList";
	}
	
	@RequestMapping("/getMovieDetail.do")
	public String getMovieDetail(MovieVO vo, Model model){
		model.addAttribute("movieDetail", movieService.getMovie(vo));
		model.addAttribute("movieRanking", movieService.getMovieRanking(vo));
		model.addAttribute("movieScore", movieService.getMovieScore(vo));
		model.addAttribute("reviewList", reviewService.getReviewList(vo.getMovie_number()));
		return "movieInfo2";
	}
}
