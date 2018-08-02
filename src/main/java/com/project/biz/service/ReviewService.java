package com.project.biz.service;

import java.util.List;

import com.project.biz.vo.MovieVO;
import com.project.biz.vo.ReviewVO;

public interface ReviewService {
	public void insertReview(ReviewVO vo);
	public List<ReviewVO> getReviewList(int movie_number);
}
