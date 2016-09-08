package com.cl.ecps.common.mapper;

import org.apache.ibatis.annotations.Param;

import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.mapperbase.BaseMapper;

public interface SysUserMapper extends BaseMapper<SysUser> {

	/**
	 * 登录
	 * @author L
	 * @date 2016年9月8日
	 * @param loginName
	 * @param password
	 */
	SysUser findUser(@Param("loginName") String loginName, @Param("password") String password);


}