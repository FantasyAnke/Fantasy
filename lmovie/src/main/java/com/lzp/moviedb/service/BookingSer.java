package com.lzp.moviedb.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzp.moviedb.dao.BookingDao;
import com.lzp.moviedb.entity.BookIng;

@Service
public class BookingSer {
	@Autowired
	BookingDao dao;

	public List<Map<String, Object>> findbooking(BookIng entity) {
		return dao.findbooking(entity);

	}

	public List<BookIng> findBookIngByMsId(BookIng entity) {
		return dao.findBookIngByMsId(entity);
	}

	public List<BookIng> findByBookNumber(BookIng entity) {
		return dao.findByBookNumber(entity);
	}

	public void delByBookNumber(BookIng entity) {
		dao.delByBookNumber(entity);
	}

	public void insert(BookIng entity) {
		dao.insert(entity);
	}

	public List<Map<String, Object>> findMapByBookNumber(BookIng bookIng) {
		return dao.findMapByBookNumber(bookIng);
	}
}
