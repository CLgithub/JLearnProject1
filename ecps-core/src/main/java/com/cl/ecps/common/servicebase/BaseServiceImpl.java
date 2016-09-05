package com.cl.ecps.common.servicebase;

import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import com.cl.ecps.common.mapperbase.BaseMapper;
import com.cl.ecps.common.uitl.PageBean;

public abstract class BaseServiceImpl<T> implements BaseService<T> {

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

	
	public PageBean getPageBean(int currentPage, int pageSize, T t) {
		Integer total = baseMapper.getAllRow(t);
		List<Map<?, ?>> rows = baseMapper.getTListBySearch(PageBean.countOffset(pageSize, currentPage), pageSize, t);
		PageBean pageBean = new PageBean();
		pageBean.setTotal(total);
		pageBean.setRows(rows);
		pageBean.setTotalPage(PageBean.countTatalPage(pageSize, total));
		pageBean.setCurrentPage(currentPage);
		pageBean.setPageSize(pageSize);
		return pageBean;
	}

}
