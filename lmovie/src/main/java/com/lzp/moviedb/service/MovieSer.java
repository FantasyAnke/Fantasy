package com.lzp.moviedb.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzp.moviedb.dao.MovieDao;

import com.lzp.moviedb.entity.Moviedb;


@Service
public class MovieSer {
	@Autowired
	MovieDao dao;
	public List<Map<String,Object>> findmovie(Moviedb entity){
		return dao.findmovie(entity);
		
	}
	public List<Map<String,Object>> findaddress(Moviedb entity){
		return dao.findaddress(entity);
		
	}
	public List<Map<String,Object>> findshadow(Moviedb entity){
		return dao.findshadow(entity);
		
	}
	
}
