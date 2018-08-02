package com.project.biz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.biz.dao.MovieDAO;
import com.project.biz.service.MovieService;
import com.project.biz.vo.MovieVO;
import com.project.biz.vo.RankingVO;

@Service("movieService")
public class MovieServiceImpl implements MovieService{
	@Autowired
	private MovieDAO movieDao;
	
	@Override
	public List<RankingVO> getBoxOfficeList(RankingVO vo) {
		return movieDao.getBoxOfficeList(vo);
	}
	@Override
	public List<RankingVO> getMovieListNow(RankingVO vo) {
		return movieDao.getMovieListNow(vo);
	}
	@Override
	public List<MovieVO> getMovieListSoon(MovieVO vo) {
		return movieDao.getMovieListSoon(vo);
	}
	@Override
	public MovieVO getMovie(MovieVO vo) {
		return movieDao.getMovie(vo);
	}
	@Override
	public RankingVO getMovieRanking(MovieVO vo) {
		return movieDao.getMovieRanking(vo);
	}
	@Override
	public double getMovieScore(MovieVO vo) {
		return movieDao.getMovieScore(vo);
	}
}
