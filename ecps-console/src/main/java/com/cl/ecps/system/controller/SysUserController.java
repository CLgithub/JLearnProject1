package com.cl.ecps.system.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.uitl.PageBean;
import com.cl.ecps.system.service.SysUserService;

@Controller
@RequestMapping("sysUserController")
public class SysUserController {
	
	@Resource
	private SysUserService sysUserService;
	
	
	/**
	 * 查询用户
	 */
	@RequestMapping("getPBBySearch")
	@ResponseBody
	public Object getPBBySearch(
			@RequestParam(value="currentPage",defaultValue="1")Integer currentPage, 
			@RequestParam(value="pageSize",defaultValue="10")Integer pageSize,
			SysUser sysUser){
//		System.out.println(sysUser);
		return sysUserService.getUserPBBySearch(currentPage, pageSize, sysUser);
	}
	
	/**
	 * 新增或修改用户，id为null则新增，否则为修改
	 * @author L
	 * @date 2016年9月12日
	 * @param sysUser
	 * @return
	 */
	@RequestMapping("saverOrUpdate")
	@ResponseBody
	public Object saverOrUpdate(SysUser sysUser){
//		System.out.println(sysUser);
//		return null;
		return sysUserService.saverOrUpdate(sysUser);
	}
	
	/**
	 * 根据id删除对应记录
	 * @param ids id用","隔开
	 * @return
	 */
	@RequestMapping("deleteByids")
	@ResponseBody
	public Object deleteByids(@RequestParam(value="ids",defaultValue=",")String ids){
		return sysUserService.deleteByids(ids);
	}
}
