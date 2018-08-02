package com.project.biz.vo;

public class ReviewVO {
	private int movie_number;
	private String id;
	private int score;
	private String review_contents;

	public ReviewVO() {
		super();
	}

	public ReviewVO(int movie_number, String id, int score, String review_contents) {
		super();
		this.movie_number = movie_number;
		this.id = id;
		this.score = score;
		this.review_contents = review_contents;
	}

	public int getMovie_number() {
		return movie_number;
	}

	public void setMovie_number(int movie_number) {
		this.movie_number = movie_number;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getReview_contents() {
		return review_contents;
	}

	public void setReview_contents(String review_contents) {
		this.review_contents = review_contents;
	}

}
