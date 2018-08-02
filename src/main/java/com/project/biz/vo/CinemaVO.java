package com.project.biz.vo;

public class CinemaVO {
	private int cinema_number;
	private String cinema_name;
	private int region_code;
	private String region_name;
	private String map_api;
	private String location;
	private String tel;
	private String transport_bus;
	private String transport_subway;

	public CinemaVO() {
		super();
	}

	public CinemaVO(int cinema_number, String cinema_name, int region_code, String region_name, String map_api,
			String location, String tel, String transport_bus, String transport_subway) {
		super();
		this.cinema_number = cinema_number;
		this.cinema_name = cinema_name;
		this.region_code = region_code;
		this.region_name = region_name;
		this.map_api = map_api;
		this.location = location;
		this.tel = tel;
		this.transport_bus = transport_bus;
		this.transport_subway = transport_subway;
	}

	public int getCinema_number() {
		return cinema_number;
	}

	public void setCinema_number(int cinema_number) {
		this.cinema_number = cinema_number;
	}

	public String getCinema_name() {
		return cinema_name;
	}

	public void setCinema_name(String cinema_name) {
		this.cinema_name = cinema_name;
	}

	public int getRegion_code() {
		return region_code;
	}

	public void setRegion_code(int region_code) {
		this.region_code = region_code;
	}

	public String getRegion_name() {
		return region_name;
	}

	public void setRegion_name(String region_name) {
		this.region_name = region_name;
	}

	public String getMap_api() {
		return map_api;
	}

	public void setMap_api(String map_api) {
		this.map_api = map_api;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getTransport_bus() {
		return transport_bus;
	}

	public void setTransport_bus(String transport_bus) {
		this.transport_bus = transport_bus;
	}

	public String getTransport_subway() {
		return transport_subway;
	}

	public void setTransport_subway(String transport_subway) {
		this.transport_subway = transport_subway;
	}
	
	@Override
	public String toString() {
		return "CinemaVO [cinema_number=" + cinema_number + ", cinema_name=" + cinema_name + ", region_code="
				+ region_code + ", region_name=" + region_name + ", map_api=" + map_api + ", location=" + location
				+ ", tel=" + tel + ", transport_bus=" + transport_bus + ", transport_subway=" + transport_subway + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cinema_name == null) ? 0 : cinema_name.hashCode());
		result = prime * result + cinema_number;
		result = prime * result + ((location == null) ? 0 : location.hashCode());
		result = prime * result + ((map_api == null) ? 0 : map_api.hashCode());
		result = prime * result + region_code;
		result = prime * result + ((region_name == null) ? 0 : region_name.hashCode());
		result = prime * result + ((tel == null) ? 0 : tel.hashCode());
		result = prime * result + ((transport_bus == null) ? 0 : transport_bus.hashCode());
		result = prime * result + ((transport_subway == null) ? 0 : transport_subway.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CinemaVO other = (CinemaVO) obj;
		if (cinema_name == null) {
			if (other.cinema_name != null)
				return false;
		} else if (!cinema_name.equals(other.cinema_name))
			return false;
		if (cinema_number != other.cinema_number)
			return false;
		if (location == null) {
			if (other.location != null)
				return false;
		} else if (!location.equals(other.location))
			return false;
		if (map_api == null) {
			if (other.map_api != null)
				return false;
		} else if (!map_api.equals(other.map_api))
			return false;
		if (region_code != other.region_code)
			return false;
		if (region_name == null) {
			if (other.region_name != null)
				return false;
		} else if (!region_name.equals(other.region_name))
			return false;
		if (tel == null) {
			if (other.tel != null)
				return false;
		} else if (!tel.equals(other.tel))
			return false;
		if (transport_bus == null) {
			if (other.transport_bus != null)
				return false;
		} else if (!transport_bus.equals(other.transport_bus))
			return false;
		if (transport_subway == null) {
			if (other.transport_subway != null)
				return false;
		} else if (!transport_subway.equals(other.transport_subway))
			return false;
		return true;
	}
	
}
