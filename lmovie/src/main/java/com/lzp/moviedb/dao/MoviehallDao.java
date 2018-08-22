package com.lzp.moviedb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.lzp.moviedb.entity.Moviedb;

@Component
@Mapper
public interface  MoviehallDao {
	
	@Select("select * from moviehall h"
			+ " INNER JOIN film f on f.filmId=h.filmid "
			+ "INNER JOIN movieSchedule m on f.filmId=m.filmid"
			+ " where f.movieDBId=#{movieDBId} and m.movieId=#{movieId}")
	public List<Map<String,Object>> findMoviehall(Moviedb entity);
}
