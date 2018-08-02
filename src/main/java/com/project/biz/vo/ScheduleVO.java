package com.project.biz.vo;

import java.sql.Date;

public class ScheduleVO {
	private String schedule_code;
	private int movie_number;
	private int cinema_number;
	private int theater;
	private Date schedule_date;
	private String schedule_day;
	private String schedule_time;
	private String title;
	private String rating;
	private String cinema_name;
	private String region_name;

	public ScheduleVO() {
		super();
	}
	
	public ScheduleVO(String schedule_code, int movie_number, int cinema_number, int theater, Date schedule_date,
			String schedule_day, String schedule_time, String title, String rating, String cinema_name, String region_name) {
		super();
		this.schedule_code = schedule_code;
		this.movie_number = movie_number;
		this.cinema_number = cinema_number;
		this.theater = theater;
		this.schedule_date = schedule_date;
		this.schedule_day = schedule_day;
		this.schedule_time = schedule_time;
		this.title = title;
		this.rating = rating;
		this.cinema_name = cinema_name;
		this.region_name = region_name;
	}
	
	public String getSchedule_code() {
		return schedule_code;
	}

	public void setSchedule_code(String schedule_code) {
		this.schedule_code = schedule_code;
	}

	public int getMovie_number() {
		return movie_number;
	}

	public void setMovie_number(int movie_number) {
		this.movie_number = movie_number;
	}

	public int getCinema_number() {
		return cinema_number;
	}

	public void setCinema_number(int cinema_number) {
		this.cinema_number = cinema_number;
	}

	public int getTheater() {
		return theater;
	}

	public void setTheater(int theater) {
		this.theater = theater;
	}

	public Date getSchedule_date() {
		return schedule_date;
	}

	public void setSchedule_date(Date schedule_date) {
		this.schedule_date = schedule_date;
	}

	public String getSchedule_day() {
		return schedule_day;
	}

	public void setSchedule_day(String schedule_day) {
		this.schedule_day = schedule_day;
	}

	public String getSchedule_time() {
		return schedule_time;
	}

	public void setSchedule_time(String schedule_time) {
		this.schedule_time = schedule_time;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getCinema_name() {
		return cinema_name;
	}

	public void setCinema_name(String cinema_name) {
		this.cinema_name = cinema_name;
	}

	public String getRegion_name() {
		return region_name;
	}

	public void setRegion_name(String region_name) {
		this.region_name = region_name;
	}
	
}