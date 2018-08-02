package com.project.biz.vo;

public class ReservationVO {
	private String reservation_code;
	private String seat_code;
	private String id;
	private int price;

	public ReservationVO() {
		super();
	}

	public ReservationVO(String reservation_code, String seat_code, String id, int price) {
		super();
		this.reservation_code = reservation_code;
		this.seat_code = seat_code;
		this.id = id;
		this.price = price;
	}

	public String getReservation_code() {
		return reservation_code;
	}

	public void setReservation_code(String reservation_code) {
		this.reservation_code = reservation_code;
	}

	public String getSeat_code() {
		return seat_code;
	}

	public void setSeat_code(String seat_code) {
		this.seat_code = seat_code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
