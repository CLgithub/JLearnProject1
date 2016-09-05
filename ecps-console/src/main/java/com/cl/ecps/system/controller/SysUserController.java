package com.cl.ecps.system.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String toUserList(Model model,
			@RequestParam(value="currentPage",defaultValue="1")Integer currentPage, 
			@RequestParam(value="pageSize",defaultValue="10")Integer pageSize,
			SysUser user
		){
		System.out.println(currentPage);
		System.out.println(pageSize);
		PageBean pageBean = sysUserService.getUserPBBySearch(currentPage, pageSize, user);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("user",user);
		return "/system/userList";
	}
}
