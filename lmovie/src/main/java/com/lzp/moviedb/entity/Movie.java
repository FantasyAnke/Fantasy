package com.lzp.moviedb.entity;

public class Movie {
	private Integer movieId;
	private String movieName;
	private String movieAddress;
	private String moviePhone;
	private String moviePhoto;
	private Integer movieDBId;
	
	
	
	public Integer getMovieDBId() {
		return movieDBId;
	}
	public void setMovieDBId(Integer movieDBId) {
		this.movieDBId = movieDBId;
	}
	public Integer getMovieId() {
		return movieId;
	}
	public void setMovieId(Integer movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getMovieAddress() {
		return movieAddress;
	}
	public void setMovieAddress(String movieAddress) {
		this.movieAddress = movieAddress;
	}
	public String getMoviePhone() {
		return moviePhone;
	}
	public void setMoviePhone(String moviePhone) {
		this.moviePhone = moviePhone;
	}
	public String getMoviePhoto() {
		return moviePhoto;
	}
	public void setMoviePhoto(String moviePhoto) {
		this.moviePhoto = moviePhoto;
	}
	

}
