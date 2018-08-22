package com.lzp.base.web;

import org.springframework.ui.Model;

public abstract class BaseWeb<T>
{
	public abstract String insert(T entity);
	public abstract String delete(T entity);
	public abstract String update(T entity);
	public abstract String findAll(Model model);
	public abstract String findOne(T entity,Model model);
}
