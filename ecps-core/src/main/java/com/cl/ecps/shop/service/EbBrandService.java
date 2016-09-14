package com.cl.ecps.shop.service;

import com.cl.ecps.common.entity.EbBrand;
import com.cl.ecps.common.servicebase.BaseService;
import com.cl.ecps.common.uitl.PageBean;

public interface EbBrandService extends BaseService<EbBrand> {
	
	/**
	 * 根据条件查询商品品牌
	 * @author L
	 * @date 2016年9月5日
	 * @param currentPage 第几页
	 * @param pageSize 每页多少条
	 * @param ebBrand 查询条件封装
	 * @return
	 */
	PageBean getEbBrandPBbySearch(int currentPage, int pageSize, EbBrand ebBrand);

	/**
	 * 根据条件分页查看
	 * @param currentPage
	 * @param pageSize
	 * @param ebBrand
	 * @return
	 */
	PageBean getUserPBBySearch(Integer currentPage, Integer pageSize, EbBrand ebBrand);
}
