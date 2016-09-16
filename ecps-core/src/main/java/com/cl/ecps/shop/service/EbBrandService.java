package com.cl.ecps.shop.service;

import com.cl.ecps.common.entity.EbBrand;
import com.cl.ecps.common.servicebase.BaseService;
import com.cl.ecps.common.uitl.PageBean;

public interface EbBrandService extends BaseService<EbBrand> {
	

	/**
	 * 根据条件分页查看
	 * @param currentPage
	 * @param pageSize
	 * @param ebBrand
	 * @return
	 */
	PageBean getUserPBBySearch(Integer currentPage, Integer pageSize, EbBrand ebBrand);

	/**
	 * 新增或修改
	 * @param ebBrand
	 * @return
	 * @author L
	 * @date 2016年9月16日
	 */
	boolean saverOrUpdate(EbBrand ebBrand);

	/**
	 * 删除对应id记录
	 * @param ids
	 * @return
	 * @author L
	 * @date 2016年9月16日
	 */
	boolean deleteByids(String ids);
}
