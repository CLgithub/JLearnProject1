package com.cl.ecps.system.serviceimpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.mapper.SysUserMapper;
import com.cl.ecps.common.mapperbase.BaseMapper;
import com.cl.ecps.common.servicebase.BaseServiceImpl;
import com.cl.ecps.common.uitl.PageBean;
import com.cl.ecps.system.service.SysUserService;

@Service("sysUserService")
public class SysUserServiceImpl extends BaseServiceImpl<SysUser> implements SysUserService {

	@Resource(name = "sysUserMapper")
	public void setBaseMapper(BaseMapper<SysUser> baseMapper) {
		super.setBaseMapper(baseMapper);
	}

	@Resource
	private SysUserMapper sysUserMapper;

	@Override
	public PageBean getUserPBBySearch(int currentPage, int pageSize, SysUser sysUser) {
		Integer total = sysUserMapper.getAllRow(sysUser);
		List<Map<?, ?>> rows = sysUserMapper.getTListBySearch(PageBean.countOffset(pageSize, currentPage),pageSize,sysUser);
		PageBean pageBean = new PageBean();
		pageBean.setTotal(total);
		pageBean.setRows(rows);
		pageBean.setTotalPage(PageBean.countTatalPage(pageSize, total));
		pageBean.setCurrentPage(currentPage);
		pageBean.setPageSize(pageSize);
		return pageBean;
	}

}
