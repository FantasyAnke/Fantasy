package com.lzp.moviedb.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzp.moviedb.dao.MoviedbDao;
import com.lzp.moviedb.entity.Moviedb;
import com.lzp.moviedb.util.PageBean;

@Service
public class MoviedbSer {
	@Autowired
	MoviedbDao dao;
	
	public void insert(Moviedb entity){
		dao.insert(entity);
	}
	public List<Moviedb> findAll(){
		return dao.findAll();
		
	}
	public List<Moviedb> findAllByScreen(){
		return dao.findAllByScreen();
		
	}
	public List<Moviedb> ChooseTicket(Moviedb entity){
		return dao.ChooseTicket(entity);
	}
	
	public  List<Map<String,Object>> findmovie(PageBean bean){
		return dao.findmovie(bean);
		
	}
	public Integer count(){
		return dao.count();
	}
	public Integer count1(){
		return dao.count1();
	}
	public Integer count3(){
		return dao.count3();
	}
	public Integer count4(){
		return dao.count4();
	}
	public  List<Map<String,Object>> findmovie3(PageBean bean){
		return dao.findmovie3(bean);
		
	}
	
	public List<Map<String,Object>>findhit(PageBean bean){
		return dao.findhit(bean);
	}
	/*public List<Moviedb> findSearch(Moviedb entity){
		return dao.findSearch(entity);
		
	}*/
	public List<Map<String, Object>> findSearch(Moviedb entity) {
		return dao.findSearch(entity);
	}
	public Map<String,Object> findmovieDBId(Integer movieDBId){
		return dao.findmovieDBId(movieDBId);
	}
	
	
}
