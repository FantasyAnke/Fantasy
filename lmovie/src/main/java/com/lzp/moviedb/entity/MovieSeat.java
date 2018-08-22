package com.lzp.moviedb.entity;

public class MovieSeat {
	private Integer movieSeatId;
	private Integer SeatRow;
	private Integer SeatColumn;
	private Integer SeatIsActive;
	private Integer mhId;
	public Integer getMovieSeatId() {
		return movieSeatId;
	}
	public void setMovieSeatId(Integer movieSeatId) {
		this.movieSeatId = movieSeatId;
	}
	public Integer getSeatRow() {
		return SeatRow;
	}
	public void setSeatRow(Integer seatRow) {
		SeatRow = seatRow;
	}
	public Integer getSeatColumn() {
		return SeatColumn;
	}
	public void setSeatColumn(Integer seatColumn) {
		SeatColumn = seatColumn;
	}
	public Integer getSeatIsActive() {
		return SeatIsActive;
	}
	public void setSeatIsActive(Integer seatIsActive) {
		SeatIsActive = seatIsActive;
	}
	public Integer getMhId() {
		return mhId;
	}
	public void setMhId(Integer mhId) {
		this.mhId = mhId;
	}
	
}
