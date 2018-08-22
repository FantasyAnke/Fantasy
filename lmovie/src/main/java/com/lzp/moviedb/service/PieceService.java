package com.lzp.moviedb.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lzp.moviedb.dao.PieceDao;
import com.lzp.moviedb.entity.Pay;
import com.lzp.moviedb.entity.Piece;

@Service
public class PieceService {

	@Autowired
	PieceDao dao;

	public List<Map<String, Object>> findAllByPiece(Piece entity) {
		return dao.findAllByPiece(entity);
	}

	public void ZFSuccess(Pay entity) {
		dao.ZFSuccess(entity);
	}

	public void ZFFailed(Pay entity) {
		dao.ZFFailed(entity);
	}

}
