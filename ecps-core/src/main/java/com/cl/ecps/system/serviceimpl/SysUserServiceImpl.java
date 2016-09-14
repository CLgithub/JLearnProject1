package com.cl.ecps.system.serviceimpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.mapper.SysUserMapper;
import com.cl.ecps.common.mapperbase.BaseMapper;
import com.cl.ecps.common.servicebase.BaseServiceImpl;
import com.cl.ecps.common.uitl.Constant;
import com.cl.ecps.common.uitl.DataUtil;
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

	@Override
	public SysUser doLogin(String loginName, String password) {
		return sysUserMapper.findUser(loginName,password);
	}

	@Override
	public boolean saverOrUpdate(SysUser sysUser) {
		SysUser user=sysUserMapper.checkLoginName(sysUser);
		if(null==user){
			if(null==sysUser.getId()){
				sysUser.setPassword(DataUtil.md5(Constant.INITPASSWORD));
				if(sysUserMapper.insert(sysUser)==1)
					return true;
				else
					return false;
			}else {
				sysUser.setPassword(this.selectByPrimaryKey(sysUser.getId()).getPassword());
				if (sysUserMapper.updateByPrimaryKey(sysUser) == 1)
					return true;
				else
					return false;
			}
		}else{
			return false;
		}
	}

	@Override
	public boolean deleteByids(String ids) {
		ids=ids.substring(0, ids.length()-1);
		return sysUserMapper.deleteByids(ids);
	}

}
