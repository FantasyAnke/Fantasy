package com.lzp.moviedb.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import com.lzp.moviedb.entity.Platform;

@Component
@Mapper
public interface PlatformDao {
	
	/*@Select("select * from Platform where platformname=#{platformname} and platformpass=#{platformpass} ")
	public List<Map<String,Object>> Platformlogin(@Param("platformname")String platformname,@Param("platformpass")String platformpass);
	*/
	@Select("select * from Platform where platformname=#{platformname} and platformpass=#{platformpass} ")
	public Platform Platformlogin(Platform entity);
	
	
	
	@Insert("insert into platform(platformname,platformpass,phone,number) values(#{platformname},#{platformpass},#{phone},#{number})")
	public void platformregister(Platform entity);
	
}
