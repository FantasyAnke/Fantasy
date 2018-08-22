package com.lzp.moviedb.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzp.moviedb.dao.MoviehallDao;
import com.lzp.moviedb.entity.Moviedb;

@Service
public class MoviehallSer {
	
	@Autowired
	MoviehallDao dao;
	
	public List<Map<String,Object>> findMoviehall(Moviedb entity){
		return dao.findMoviehall(entity);
		
	}

	
}
