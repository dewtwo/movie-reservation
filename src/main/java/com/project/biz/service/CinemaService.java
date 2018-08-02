package com.project.biz.service;

import java.util.List;

import com.project.biz.vo.CinemaVO;

public interface CinemaService {
	public List<CinemaVO> getAll(CinemaVO vo);
	
	public List<CinemaVO> getRegionList(CinemaVO vo);

	public List<CinemaVO> getCinemaList(int region_code);
	
	public List<CinemaVO> getCinemaDetail(int cinema_number);
}
