package com.lzp.base.service;

import java.util.List;

import com.lzp.base.dao.BaseDao;



public abstract class BaseSvr<T>
{
	public abstract BaseDao<T> getDao();
	
	public void insert(T entity)
	{
		getDao().insert(entity);
	}
	public void update(T entity)
	{
		getDao().update(entity);
	}
	public void delete(T entity)
	{
		getDao().delete(entity);
	}
	public List<T> findAll()
	{
		return getDao().findAll();
	}
	public T findOne(T entity)
	{
		return getDao().findOne(entity);
	}
	
	
	
}
