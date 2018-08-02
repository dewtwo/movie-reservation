package com.project.biz.vo;

public class SeatVO {
	private String seat_code;
	private int schedule_code;
	private String seat;

	public SeatVO() {
		super();
	}

	public SeatVO(String seat_code, int schedule_code, String seat) {
		super();
		this.seat_code = seat_code;
		this.schedule_code = schedule_code;
		this.seat = seat;
	}

	public String getSeat_code() {
		return seat_code;
	}

	public void setSeat_code(String seat_code) {
		this.seat_code = seat_code;
	}

	public int getSchedule_code() {
		return schedule_code;
	}

	public void setSchedule_code(int schedule_code) {
		this.schedule_code = schedule_code;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

}
