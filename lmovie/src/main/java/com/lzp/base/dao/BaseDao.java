package com.lzp.base.dao;

import java.util.List;

public interface BaseDao<T>
{
	public void insert(T entity);
	public void update(T entity);
	public void delete(T entity);
	public List<T> findAll();
	public T findOne(T entity);
}
