package com.cl.ecps.common.mapperbase;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;

public interface BaseMapper<T> {
	
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
	 * 查询满足条件的记录条数
	 * @param t 条件封装
	 * @return 记录条数
	 */
	Integer getAllRow(@Param("t")T t);

	/**
	 * 查询满足条件的记录
	 * @param pageSize 
	 * @param i 
	 * @return
	 */
	List<Map<?, ?>> getTListBySearch(@Param("beginIndex")Integer beginIndex,@Param("len")Integer len, @Param("t")T t);
}
