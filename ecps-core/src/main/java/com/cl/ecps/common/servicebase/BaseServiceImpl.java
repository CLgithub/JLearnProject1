package com.cl.ecps.common.servicebase;

import java.lang.reflect.ParameterizedType;
import javax.annotation.Resource;
import com.cl.ecps.common.mapperbase.BaseMapper;

public class BaseServiceImpl<T> implements BaseService<T> {

	private BaseMapper<T> baseMapper;

	@Resource
	public void setBaseMapper(BaseMapper<T> baseMapper) {
		this.baseMapper = baseMapper;
	}

	private Class<T> clazz;

	public BaseServiceImpl() {
		ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
		this.clazz = (Class<T>) type.getActualTypeArguments()[0];
	}

	public int insert(T t) {
		return baseMapper.insert(t);
	}

	public int insertSelective(T t) {
		return baseMapper.insertSelective(t);
	}

	public int deleteByPrimaryKey(Integer id) {
		return baseMapper.deleteByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(T t) {
		return baseMapper.updateByPrimaryKeySelective(t);
	}

	public int updateByPrimaryKey(T t) {
		return baseMapper.updateByPrimaryKey(t);
	}

	public T selectByPrimaryKey(Integer id) {
		return baseMapper.selectByPrimaryKey(id);
	}

}
