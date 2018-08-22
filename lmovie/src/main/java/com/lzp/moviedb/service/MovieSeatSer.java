package com.lzp.moviedb.service;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzp.moviedb.dao.MovieSeatDao;

@Service
public class MovieSeatSer {
	@Autowired
	MovieSeatDao dao;
	
	public Map<String,Object> findmovieseat(Integer mhid){
		return dao.findmovieseat(mhid);
		
	}
	
}
