package com.cl.ecps.system.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.system.service.SysUserService;

@Controller
@RequestMapping("SysUserController")
public class SysUserController {
	
	@Resource
	private SysUserService sysUserService;
	
	@RequestMapping("toItemIndex")
	@ResponseBody
	public Object toItemIndex(){
		SysUser sysUser = sysUserService.selectByPrimaryKey(23);
		return sysUser;
	}
}
