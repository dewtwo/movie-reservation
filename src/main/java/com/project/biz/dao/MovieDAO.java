package com.project.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.biz.vo.MovieVO;
import com.project.biz.vo.RankingVO;
import com.project.biz.vo.ReviewVO;

@Repository
public class MovieDAO {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<RankingVO> getBoxOfficeList(RankingVO vo){
		sqlSession.update("movie.updateMovieRanking", vo);
		return sqlSession.selectList("movie.getBoxOfficeList", vo);
	}
	
	public List<RankingVO> getMovieListNow(RankingVO vo){
		sqlSession.update("movie.updateMovieRanking", vo);
		return sqlSession.selectList("movie.getMovieListNow", vo);
	}
	
	public List<MovieVO> getMovieListSoon(MovieVO vo){
		return sqlSession.selectList("movie.getMovieListSoon", vo);
	}
	
	public MovieVO getMovie(MovieVO vo){
		return sqlSession.selectOne("movie.getMovieDetail", vo);
	}
	
	public RankingVO getMovieRanking(MovieVO vo){
		sqlSession.update("movie.updateMovieRanking", vo);
		return sqlSession.selectOne("movie.getMovieRanking", vo);
	}
	
	public double getMovieScore(MovieVO vo){
		List<ReviewVO> list = sqlSession.selectList("movie.getMovieScore", vo);
		int total = 0;
		if(list.size()==0){
			return 0;
		} else{
			for(int i=0; i<list.size(); i++){
				total += list.get(i).getScore();
			}
			return Math.round((total/list.size())*100)/100.0;
		}
	}
}
