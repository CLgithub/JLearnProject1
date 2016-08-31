package com.cl.ecps.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/SysUserController")
public class SysUserController {
	
	@RequestMapping("/toItemIndex.do")
	public String toItemIndex(){
		return "item/index";
	}
}
