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

	/**
	 * 检测loginName是否可用，
	 * @param loginname
	 * @param id
	 * @return sysUser不可用,null可用
	 */
	SysUser checkLoginName(SysUser sysUser);

	/**
	 * 根据ids删除对应记录
	 * @param ids
	 * @return 成功true，失败false
	 */
	boolean deleteByids(@Param("ids")String ids);
	

}