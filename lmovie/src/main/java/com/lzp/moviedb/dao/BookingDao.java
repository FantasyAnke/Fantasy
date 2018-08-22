package com.lzp.moviedb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.lzp.moviedb.entity.BookIng;

@Component
@Mapper
public interface BookingDao {

	@Select("select movieDBName, movieName,msendtime,mhName,seatNumber,orderStatus,price,filmprice from booking b "
			+ "INNER JOIN movieschedule ms on ms.msid=b.msid " + "INNER JOIN moviehall mh on mh.mhid=ms.mhid "
			+ "INNER JOIN film f on f.filmId=mh.filmid " + "INNER JOIN movieDB mdb on mdb.moviedbid=f.movieDBId "
			+ "INNER JOIN movie m  on b.movieid=m.movieId where customerId=#{customerId}")
	public List<Map<String, Object>> findbooking(BookIng entity);

	@Insert("INSERT INTO `movie`.`booking` (`bookNumber`, `seatNumber`, `customerId`, `orderTime`, `msid`, `price`, `movieId`) VALUES (#{bookNumber}, #{seatNumber}, #{customerId}, #{orderTime}, #{msid}, #{price}, #{movieId})")
	public void insert(BookIng entity);

	@Select("select * from booking where msId = #{msid}")
	public List<BookIng> findBookIngByMsId(BookIng entity);

	@Select("select * from booking where bookNumber = #{bookNumber} and orderStatus = 0 ")
	public List<BookIng> findByBookNumber(BookIng entity);

	@Select("delete from booking where bookNumber = #{bookNumber} ")
	public void delByBookNumber(BookIng entity);

	@Select("select * from booking b join movieschedule ms on b.msid = ms.msid join moviehall mh on ms.mhid = mh.mhid join film f on ms.filmid = f.filmid join moviedb md on f.moviedbid = md.moviedbid join movie m on ms.movieid = m.movieid where b.bookNumber = #{bookNumber}")
	public List<Map<String, Object>> findMapByBookNumber(BookIng bookIng);

}
