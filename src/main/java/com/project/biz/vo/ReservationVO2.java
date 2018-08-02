package com.project.biz.vo;

import java.sql.Date;

public class ReservationVO2 {
	private String reservation_code;
	private String title;
	private String cinema_name;
	private int theater;
	private Date schedule_date;
	private String schedule_time;
	private String seat;
	private String schedule_code;
	private String id;
	private int movie_number;
	private String poster;
	private int cinema_number;

	public String getReservation_code() {
		return reservation_code;
	}

	public void setReservation_code(String reservation_code) {
		this.reservation_code = reservation_code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCinema_name() {
		return cinema_name;
	}

	public void setCinema_name(String cinema_name) {
		this.cinema_name = cinema_name;
	}

	public int getTheater() {
		return theater;
	}

	public void setTheater(int theater) {
		this.theater = theater;
	}

	public String getSchedule_code() {
		return schedule_code;
	}

	public void setSchedule_code(String schedule_code) {
		this.schedule_code = schedule_code;
	}

	public Date getSchedule_date() {
		return schedule_date;
	}

	public void setSchedule_date(Date schedule_date) {
		this.schedule_date = schedule_date;
	}

	public String getSchedule_time() {
		return schedule_time;
	}

	public void setSchedule_time(String schedule_time) {
		this.schedule_time = schedule_time;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public ReservationVO2(String reservation_code, String title, String cinema_name, int theater, String schedule_code,
			Date schedule_date, String schedule_time, String seat, String id, int movie_number, String poster,
			int cinema_number) {
		super();
		this.reservation_code = reservation_code;
		this.title = title;
		this.cinema_name = cinema_name;
		this.theater = theater;
		this.schedule_code = schedule_code;
		this.schedule_date = schedule_date;
		this.schedule_time = schedule_time;
		this.seat = seat;
		this.id = id;
		this.poster = poster;
		this.movie_number = movie_number;
		this.cinema_number = cinema_number;
	}

	public ReservationVO2() {
		super();
	}

}
