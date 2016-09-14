package com.cl.ecps.common.servicebase;

import com.cl.ecps.common.uitl.PageBean;

public interface BaseService<T> {

	/**
	 * 增
	 */
	int insert(T t);

	/**
	 * 增，参数可以不全
	 */
	int insertSelective(T t);

	/**
	 * 删
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * 改,参数可以不全
	 */
	int updateByPrimaryKeySelective(T t);

	/**
	 * 改
	 */
	int updateByPrimaryKey(T t);

	/**
	 * 根据id查询单个实体
	 */
	T selectByPrimaryKey(Integer id);
	

	/**
	 * 得到pageBean
	 * @param currentPage 第几页
	 * @param pageSize 每页多少条记录
	 * @param t 条件封装
	 * @return pageBean
	 */
	PageBean getPageBean(int currentPage, int pageSize, T t);



}
