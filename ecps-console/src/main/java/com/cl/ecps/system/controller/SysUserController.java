package com.cl.ecps.system.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.uitl.PageBean;
import com.cl.ecps.system.service.SysUserService;

@Controller
@RequestMapping("sysUserController")
public class SysUserController {
	
	@Resource
	private SysUserService sysUserService;
	
	/**
	 * 查看用户
	 * @author L
	 * @date 2016年9月2日
	 */
	@RequestMapping("toUserList")
//	@ResponseBody
	public String toUserList(Model model,Integer currentPage, Integer pageSize,SysUser user){
		currentPage=currentPage==null?1:currentPage;
		pageSize=pageSize==null?10:pageSize;
		PageBean pageBean = sysUserService.getUserPBBySearch(currentPage, pageSize, user);
		model.addAttribute("pageBean", pageBean);
		return "/system/userList";
	}
}
