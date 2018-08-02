package com.project.biz.service;

import java.util.List;

import com.project.biz.vo.MovieVO;
import com.project.biz.vo.RankingVO;

public interface MovieService {
	public List<RankingVO> getBoxOfficeList(RankingVO vo);
	public List<RankingVO> getMovieListNow(RankingVO vo);
	public List<MovieVO> getMovieListSoon(MovieVO vo);
	public MovieVO getMovie(MovieVO vo);
	public RankingVO getMovieRanking(MovieVO vo);
	public double getMovieScore(MovieVO vo);
}
