package com.project.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.biz.vo.MovieVO;
import com.project.biz.vo.ReviewVO;

@Repository
public class ReviewDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertReview(ReviewVO vo){
		sqlSession.insert("review.insertReview", vo);
	}
	
	public List<ReviewVO> getReviewList(int movie_number){
		return sqlSession.selectList("review.getReviewList", movie_number);
	}
}
