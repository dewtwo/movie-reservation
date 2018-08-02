package com.project.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.project.biz.dao.CinemaDAO;
import com.project.biz.service.CinemaService;
import com.project.biz.vo.CinemaVO;

@Service("cinemaService")
public class CinemaServiceImpl implements CinemaService {
	@Autowired
	private CinemaDAO cinemaDao;

	@Override
	public List<CinemaVO> getAll(CinemaVO vo) {
		return cinemaDao.getAll(vo);
	}

	@Override
	public List<CinemaVO> getRegionList(CinemaVO vo) {
		return cinemaDao.getRegionList(vo);
	}

	@Override
	public List<CinemaVO> getCinemaList(int region_code) {
		return cinemaDao.getCinemaList(region_code);
	}

	@Override
	public List<CinemaVO> getCinemaDetail(int cinema_number) {
		return cinemaDao.getCinemaDetail(cinema_number);
	}
}
