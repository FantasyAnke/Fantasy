package com.lzp.moviedb.entity;

/**
 * 排片
 * 
 *
 */
public class Piece {

	private Integer msId;
	private String msBeginTime;
	private String msEndTime;
	private Integer movieId;
	private Integer filmId;
	private String halfTime;
	private Integer mhId;

	public Integer getMhId() {
		return mhId;
	}

	public void setMhId(Integer mhId) {
		this.mhId = mhId;
	}

	public String getHalfTime() {
		return halfTime;
	}

	public void setHalfTime(String halfTime) {
		this.halfTime = halfTime;
	}

	public Integer getMsId() {
		return msId;
	}

	public void setMsId(Integer msId) {
		this.msId = msId;
	}

	public String getMsBeginTime() {
		return msBeginTime;
	}

	public void setMsBeginTime(String msBeginTime) {
		this.msBeginTime = msBeginTime;
	}

	public String getMsEndTime() {
		return msEndTime;
	}

	public void setMsEndTime(String msEndTime) {
		this.msEndTime = msEndTime;
	}

	public Integer getMovieId() {
		return movieId;
	}

	public void setMovieId(Integer movieId) {
		this.movieId = movieId;
	}

	public Integer getFilmId() {
		return filmId;
	}

	public void setFilmId(Integer filmId) {
		this.filmId = filmId;
	}

}
