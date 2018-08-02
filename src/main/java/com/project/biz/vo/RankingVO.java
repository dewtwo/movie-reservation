package com.project.biz.vo;

public class RankingVO {
	private MovieVO movie;
	private int cnt;
	private int rank;
	private double percentage;

	public RankingVO() {
		super();
	}
	
	public RankingVO(MovieVO movie, int cnt, int rank, double percentage) {
		super();
		this.movie = movie;
		this.cnt = cnt;
		this.rank = rank;
		this.percentage = percentage;
	}

	public MovieVO getMovie() {
		return movie;
	}

	public void setMovie(MovieVO movie) {
		this.movie = movie;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public double getPercentage() {
		return percentage;
	}

	public void setPercentage(double percentage) {
		this.percentage = percentage;
	}
}
