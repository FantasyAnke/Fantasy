package com.lzp.moviedb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Component
@Mapper
public interface MovieSeatDao {
	
	@Select("select * from movieseat where mhid=#{mhid}")
	public Map<String,Object> findmovieseat(Integer mhid);
	
	/*@Select("select * from menu m LEFT JOIN foodtype ft on ft.ft_id=m.ft_id where ft.ft_id=#{ft_id}")
	public List<Map<String, Object>> findMenu(Integer ft_id);*/
	

}
