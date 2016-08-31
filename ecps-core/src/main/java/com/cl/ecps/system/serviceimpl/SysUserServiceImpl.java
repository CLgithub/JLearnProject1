package com.cl.ecps.system.serviceimpl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.mapperbase.BaseMapper;
import com.cl.ecps.common.servicebase.BaseServiceImpl;
import com.cl.ecps.system.service.SysUserService;

@Service
public class SysUserServiceImpl extends BaseServiceImpl<SysUser> implements SysUserService {

	@Resource(name = "sysUserMapper")
	public void setBaseMapper(BaseMapper<SysUser> baseMapper) {
		super.setBaseMapper(baseMapper);
	}

	
}
