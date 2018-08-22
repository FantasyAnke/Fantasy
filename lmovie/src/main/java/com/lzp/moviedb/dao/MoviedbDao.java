package com.lzp.moviedb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.lzp.moviedb.entity.Moviedb;
import com.lzp.moviedb.util.PageBean;

@Component
@Mapper
public interface MoviedbDao {
	// 图片上传
	@Insert("insert into moviedb(url) values(#{moviepicture})")
	public void insert(Moviedb entity);

	// 热映查询
	@Select("select * from moviedb where state=1")
	public List<Moviedb> findAll();

	// 即将上映
	@Select("select * from moviedb where state=2")
	public List<Moviedb> findAllByScreen();

	// 选票购座页面影片信息
	@Select("select * from moviedb where movieDBId=#{movieDBId}")
	public List<Moviedb> ChooseTicket(Moviedb entity);

	// 搜索
	@Select(value = "select * from moviedb  where movieDBName like concat('%',#{movieDBName},'%')")
	public List<Map<String, Object>> findSearch(Moviedb entity);

	@Select("select * from movie m INNER JOIN film f on m.movieId=f.movieid where movieDBId=#{movieDBId}")
	public Map<String, Object> findmovieDBId(Integer movieDBId);

	@Select("select * from moviedb where state=1 order by movieReleaseTime desc limit #{begin},#{pageSize} ")
	public List<Map<String, Object>> findhit(PageBean bean);
	// 影片--热映和即将上映---电影库

	@Select("select * from moviedb where state=2 order by movieReleaseTime desc limit #{begin},#{pageSize}")
	public List<Map<String, Object>> findmovie(PageBean bean);

	@Select("select * from moviedb  order by movieReleaseTime desc limit #{begin},#{pageSize}")
	public List<Map<String, Object>> findmovie3(PageBean bean);

	@Select("select count(*) num from moviedb where state=1")
	public Integer count();

	@Select("select count(*) num from moviedb where state=2")
	public Integer count1();

	@Select("select count(*) num from moviedb")
	public Integer count3();

	@Select("select count(*) num sfrom moviedb  where movieDBName like concat('%',#{movieDBName},'%')")
	public Integer count4();

}
