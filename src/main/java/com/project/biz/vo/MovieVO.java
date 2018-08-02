package com.project.biz.vo;

import java.sql.Date;

public class MovieVO {
	private int movie_number;
	private String title;
	private String sub_title;
	private String director;
	private String actors;
	private String genre;
	private String rating;
	private String contents;
	private Date release_date;
	private int running_time;
	private String poster;

	public MovieVO() {
		super();
	}

	public MovieVO(int movie_number, String title, String sub_title, String director, String actors, String genre,
			String rating, String contents, Date release_date, int running_time, String poster) {
		super();
		this.movie_number = movie_number;
		this.title = title;
		this.sub_title = sub_title;
		this.director = director;
		this.actors = actors;
		this.genre = genre;
		this.rating = rating;
		this.contents = contents;
		this.release_date = release_date;
		this.running_time = running_time;
		this.poster = poster;
	}

	public int getMovie_number() {
		return movie_number;
	}

	public void setMovie_number(int movie_number) {
		this.movie_number = movie_number;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSub_title() {
		return sub_title;
	}

	public void setSub_title(String sub_title) {
		this.sub_title = sub_title;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getActors() {
		return actors;
	}

	public void setActors(String actors) {
		this.actors = actors;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getRelease_date() {
		return release_date;
	}

	public void setRelease_date(Date release_date) {
		this.release_date = release_date;
	}

	public int getRunning_time() {
		return running_time;
	}

	public void setRunning_time(int running_time) {
		this.running_time = running_time;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}
	
	@Override
	public String toString() {
		return "MovieVO [movie_number=" + movie_number + ", title=" + title + ", sub_title=" + sub_title + ", director="
				+ director + ", actors=" + actors + ", genre=" + genre + ", rating=" + rating + ", contents=" + contents
				+ ", release_date=" + release_date + ", running_time=" + running_time + ", poster=" + poster + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((actors == null) ? 0 : actors.hashCode());
		result = prime * result + ((contents == null) ? 0 : contents.hashCode());
		result = prime * result + ((director == null) ? 0 : director.hashCode());
		result = prime * result + ((genre == null) ? 0 : genre.hashCode());
		result = prime * result + movie_number;
		result = prime * result + ((poster == null) ? 0 : poster.hashCode());
		result = prime * result + ((rating == null) ? 0 : rating.hashCode());
		result = prime * result + ((release_date == null) ? 0 : release_date.hashCode());
		result = prime * result + running_time;
		result = prime * result + ((sub_title == null) ? 0 : sub_title.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
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
		MovieVO other = (MovieVO) obj;
		if (actors == null) {
			if (other.actors != null)
				return false;
		} else if (!actors.equals(other.actors))
			return false;
		if (contents == null) {
			if (other.contents != null)
				return false;
		} else if (!contents.equals(other.contents))
			return false;
		if (director == null) {
			if (other.director != null)
				return false;
		} else if (!director.equals(other.director))
			return false;
		if (genre == null) {
			if (other.genre != null)
				return false;
		} else if (!genre.equals(other.genre))
			return false;
		if (movie_number != other.movie_number)
			return false;
		if (poster == null) {
			if (other.poster != null)
				return false;
		} else if (!poster.equals(other.poster))
			return false;
		if (rating == null) {
			if (other.rating != null)
				return false;
		} else if (!rating.equals(other.rating))
			return false;
		if (release_date == null) {
			if (other.release_date != null)
				return false;
		} else if (!release_date.equals(other.release_date))
			return false;
		if (running_time != other.running_time)
			return false;
		if (sub_title == null) {
			if (other.sub_title != null)
				return false;
		} else if (!sub_title.equals(other.sub_title))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}
	
	
}
