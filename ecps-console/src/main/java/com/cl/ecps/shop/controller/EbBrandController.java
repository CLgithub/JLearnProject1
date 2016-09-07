package com.cl.ecps.shop.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cl.ecps.common.entity.EbBrand;
import com.cl.ecps.common.uitl.PageBean;
import com.cl.ecps.shop.service.EbBrandService;

@Controller
@RequestMapping("ebBrandController")
public class EbBrandController {
	
	@Resource
	private EbBrandService ebBrandService;
	
	//到达列表页
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
	
	
	//到达添加页
	@RequestMapping("toAddbrand")
	public String toAddbrand(){
		return "/shop/addBrand";
	}
	
	@RequestMapping("addBrand")
	public void addBrand(EbBrand ebBrand,HttpServletRequest request,HttpServletResponse response) throws IOException{
		System.out.println(ebBrand);
		ebBrandService.insertSelective(ebBrand);
		response.sendRedirect(request.getServletContext().getContextPath()+"/ebBrandController/toEbBrandList.action");
	}
	
	
}
