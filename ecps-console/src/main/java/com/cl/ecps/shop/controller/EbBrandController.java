package com.cl.ecps.shop.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cl.ecps.common.entity.EbBrand;
import com.cl.ecps.common.uitl.PageBean;
import com.cl.ecps.shop.service.EbBrandService;

@Controller
@RequestMapping("ebBrandController")
public class EbBrandController {
	
	@Resource
	private EbBrandService ebBrandService;
	
	@RequestMapping("toEbBrandList")
	public String toEbBrandList(
			Model model,
			@RequestParam(value="currentPage",defaultValue="1")Integer currentPage, 
			@RequestParam(value="pageSize",defaultValue="10")Integer pageSize,
			EbBrand ebBrand
		){
		PageBean pageBean = ebBrandService.getEbBrandPBbySearch(currentPage, pageSize, ebBrand);
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("ebBrand", ebBrand);
		return "/shop/ebBrandList";
	}

}
