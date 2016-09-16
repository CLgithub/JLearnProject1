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
import com.cl.ecps.common.entity.SysUser;
import com.cl.ecps.common.uitl.PageBean;
import com.cl.ecps.shop.service.EbBrandService;

@Controller
@RequestMapping("ebBrandController")
public class EbBrandController {
	
	@Resource
	private EbBrandService ebBrandService;
	
	/**
	 * 查询
	 * @param currentPage
	 * @param pageSize
	 * @param sysUser
	 * @return
	 */
	@RequestMapping("getPBBySearch")
	@ResponseBody
	public Object getPBBySearch(
			@RequestParam(value="currentPage",defaultValue="1")Integer currentPage, 
			@RequestParam(value="pageSize",defaultValue="10")Integer pageSize,
			EbBrand ebBrand){
		return ebBrandService.getUserPBBySearch(currentPage, pageSize, ebBrand);
	}
	
	/**
	 * 新增或修改
	 */
	@RequestMapping("saverOrUpdate")
	@ResponseBody
	public Object saverOrUpdate(EbBrand ebBrand) {
//		System.out.println(ebBrand);
		return ebBrandService.saverOrUpdate(ebBrand);
	}
	
	/**
	 * 根据id删除对应记录
	 * @param ids id用","隔开
	 * @return
	 */
	@RequestMapping("deleteByids")
	@ResponseBody
	public Object deleteByids(@RequestParam(value="ids",defaultValue=",")String ids){
		return ebBrandService.deleteByids(ids);
	}
	
	
}
