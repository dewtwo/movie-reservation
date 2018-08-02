package com.project.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.project.biz.vo.CinemaVO;

@Repository
public class CinemaDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<CinemaVO> getAll(CinemaVO vo) {
		return sqlSession.selectList("cinema.getAll", vo);
	}
	
	public List<CinemaVO> getRegionList(CinemaVO vo) {
		return sqlSession.selectList("cinema.regionList", vo);
	}

	public List<CinemaVO> getCinemaList(int region_code) {
		return sqlSession.selectList("cinema.cinemaList", region_code);
	}
	
	public List<CinemaVO> getCinemaDetail(int cinema_number) {
		return sqlSession.selectList("cinema.cinemaDetail", cinema_number);
	}

}
