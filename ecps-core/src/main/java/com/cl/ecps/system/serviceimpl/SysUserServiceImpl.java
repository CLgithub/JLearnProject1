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
		return this.getPageBean(currentPage, pageSize, sysUser);
	}

}
