package com.cl.ecps.system.service;

import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.servicebase.BaseService;
import com.cl.ecps.common.uitl.PageBean;

public interface SysUserService extends BaseService<SysUser> {

	/**
	 * 根据条件分页查看用户
	 * @author L
	 * @date 2016年9月2日
	 * @param currentPage 第几页
	 * @param pageSize 每页多少条
	 * @return pageBean
	 */
	PageBean getUserPBBySearch(int currentPage, int pageSize, SysUser sysUser);

}
