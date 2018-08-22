package com.lzp.moviedb.entity;

import org.springframework.web.multipart.MultipartFile;

public class Moviedb {
	private Integer movieDBId;
	private String movieDBName;
	private String director;
	private String star;
	private String movieType;
	private String region;
	private String language;
	private String mins;
	private Double movieDBPrice;
	private String url;
	private String movieReleaseTime;
	private String movieplot;
	private Integer state;
	private Integer movieId;

	public Integer getMovieId() {
		return movieId;
	}

	public void setMovieId(Integer movieId) {
		this.movieId = movieId;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getMovieReleaseTime() {
		return movieReleaseTime;
	}

	public void setMovieReleaseTime(String movieReleaseTime) {
		this.movieReleaseTime = movieReleaseTime;
	}

	public String getMovieplot() {
		return movieplot;
	}

	public void setMovieplot(String movieplot) {
		this.movieplot = movieplot;
	}

	private MultipartFile img;

	public MultipartFile getImg() {
		return img;
	}

	public void setImg(MultipartFile img) {
		this.img = img;
	}

	public Integer getMovieDBId() {
		return movieDBId;
	}

	public void setMovieDBId(Integer movieDBId) {
		this.movieDBId = movieDBId;
	}

	public String getMovieDBName() {
		return movieDBName;
	}

	public void setMovieDBName(String movieDBName) {
		this.movieDBName = movieDBName;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public String getMovieType() {
		return movieType;
	}

	public void setMovieType(String movieType) {
		this.movieType = movieType;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getMins() {
		return mins;
	}

	public void setMins(String mins) {
		this.mins = mins;
	}

	public double getMovieDBPrice() {
		return movieDBPrice;
	}

	public void setMovieDBPrice(double movieDBPrice) {
		this.movieDBPrice = movieDBPrice;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public void setMovieDBPrice(Double movieDBPrice) {
		this.movieDBPrice = movieDBPrice;
	}

}
