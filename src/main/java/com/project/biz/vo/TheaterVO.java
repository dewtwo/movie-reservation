package com.project.biz.vo;

public class TheaterVO {
	private int theater_number;
	private int cinema_number;

	public TheaterVO() {
		super();
	}

	public TheaterVO(int theater_number, int cinema_number) {
		super();
		this.theater_number = theater_number;
		this.cinema_number = cinema_number;
	}

	public int getTheater_number() {
		return theater_number;
	}

	public void setTheater_number(int theater_number) {
		this.theater_number = theater_number;
	}

	public int getCinema_number() {
		return cinema_number;
	}

	public void setCinema_number(int cinema_number) {
		this.cinema_number = cinema_number;
	}

}
