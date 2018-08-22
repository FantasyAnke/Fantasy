package com.lzp.moviedb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.lzp.moviedb.entity.Moviedb;

@Component
@Mapper
public interface MovieDao {
	// 影片和该影片的影院
	@Select("select * from movie m INNER JOIN film f on m.movieId=f.movieid join movieschedule ms on f.filmId = ms.filmId where movieDBId=#{movieDBId} and ms.msBeginTime > SYSDATE()")
	public List<Map<String, Object>> findmovie(Moviedb entity);

	// 选座购票页面
	@Select("select * from movie m INNER JOIN film f on m.movieId=f.movieid  where f.movieDBId=#{movieDBId} and m.movieId=#{movieId}")
	public List<Map<String, Object>> findaddress(Moviedb entity);

	// 影讯购票
	@Select("select * from moviehall h INNER JOIN film f on f.filmId=h.filmid INNER JOIN movieSchedule m on f.filmId=m.filmid INNER JOIN moviedb db on f.movieDBId=db.movieDBId where f.movieDBId=5 and m.movieId=1")
	public List<Map<String, Object>> findshadow(Moviedb entity);

}
