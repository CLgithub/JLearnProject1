package com.cl.ecps.common.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.mapperbase.BaseMapper;

public interface SysUserMapper extends BaseMapper<SysUser>{

	/**
	 * 根据条件查询对应条数的用户列表
	 * @author L
	 * @date 2016年9月2日
	 * @param beginIndex 开查询位置
	 * @param len 查询记录条数
	 * @param sysUser 
	 * @return
	 */
	List<SysUser> getTListBySearch(@Param("beginIndex")Integer beginIndex,@Param("len")Integer len, @Param("sysUser")SysUser sysUser);

	/**
	 * 根据条件查询总用户数
	 * @author L
	 * @param sysUser 
	 * @date 2016年9月2日
	 * @return
	 */
	Integer getAllRow(@Param("sysUser")SysUser sysUser);

}