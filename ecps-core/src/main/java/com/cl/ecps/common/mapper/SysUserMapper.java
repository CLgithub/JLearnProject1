package com.cl.ecps.common.mapper;

import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.mapperbase.BaseMapper;

public interface SysUserMapper extends BaseMapper<SysUser>{
	
	SysUser selectByPrimaryKey(Integer id);
    
}