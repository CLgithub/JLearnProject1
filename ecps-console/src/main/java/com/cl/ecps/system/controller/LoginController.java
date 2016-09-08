package com.cl.ecps.system.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.system.service.SysUserService;

@Controller
@RequestMapping("loginController")
public class LoginController {

	@Resource
	private SysUserService sysUserService;

	/**
	 * 用户登录
	 * @author L
	 * @date 2015-11-20
	 * @return true：登录成功，false：登录失败
	 */
	@RequestMapping("doLogin")
	@ResponseBody
	public Object doLogin(HttpServletRequest request, HttpServletResponse response) {
		String loginName = request.getParameter("userName");
		String password = request.getParameter("password");
		SysUser sysUser = sysUserService.doLogin(loginName, password);
		System.out.println(sysUser);
		if (sysUser == null) {
			return false;
		} else {
			request.getSession().setAttribute("sysUser", sysUser);
			return true;
		}
	}


	/**
	 * 用户注销
	 * @author L
	 * @date 2015年11月27日
	 * @return true：注销成功，false：注销失败
	 */
	@RequestMapping(value = "doLogout")
	@ResponseBody
	public Object doLogout(HttpServletRequest request) {
		try {
			request.getSession().setAttribute("sysUser", null);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
}
