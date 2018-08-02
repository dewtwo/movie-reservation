package com.project.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.biz.dao.ReviewDAO;
import com.project.biz.service.ReviewService;
import com.project.biz.vo.MovieVO;
import com.project.biz.vo.ReviewVO;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private ReviewDAO reviewDao;

	@Override
	public void insertReview(ReviewVO vo) {
		reviewDao.insertReview(vo);
	}

	@Override
	public List<ReviewVO> getReviewList(int movie_number) {
		return reviewDao.getReviewList(movie_number);
	}
}
