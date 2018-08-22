package com.lzp.moviedb.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzp.moviedb.dao.PlatformDao;
import com.lzp.moviedb.entity.Platform;


@Service
public class PlatformSer {
	@Autowired
	PlatformDao dao;
	
	public Platform Platformlogin(Platform entity){
		return dao.Platformlogin(entity);
	}
	
	public void platformregister(Platform entity){
		dao.platformregister(entity);
	}
}
