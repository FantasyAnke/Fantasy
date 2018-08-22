package com.lzp.moviedb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;

import com.lzp.moviedb.entity.Pay;
import com.lzp.moviedb.entity.Piece;

@Component
@Mapper
public interface PieceDao {

	@Select("select * from movieschedule ms join film f on ms.filmId = f.filmId join moviedb md on f.moviedbId = md.moviedbId join movie m on ms.movieId = m.movieId join moviehall mh on ms.mhid = mh.mhId join movieseat mse on mh.mhId = mse.mhId where ms.msid = #{msId} and ms.movieId = #{movieId}")
	public List<Map<String, Object>> findAllByPiece(Piece entity);

	@Update("update booking set orderStatus = 1 where bookNumber = #{bookNumber}")
	public void ZFSuccess(Pay entity);

	@Delete("delete from booking where bookNumber = #{bookNumber}")
	public void ZFFailed(Pay entity);

}
