package com.cl.ecps.shop.serviceimpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cl.ecps.common.entity.EbBrand;
import com.cl.ecps.common.mapperbase.BaseMapper;
import com.cl.ecps.common.servicebase.BaseServiceImpl;
import com.cl.ecps.common.uitl.PageBean;
import com.cl.ecps.shop.service.EbBrandService;

@Service("ebBrandService")
public class EbBrandServiceImpl extends BaseServiceImpl<EbBrand> implements EbBrandService {

	@Resource(name="ebBrandMapper")
	public void setBaseMapper(BaseMapper<EbBrand> baseMapper) {
		super.setBaseMapper(baseMapper);
	}

	@Override
	public PageBean getEbBrandPBbySearch(int currentPage, int pageSize, EbBrand ebBrand) {
		return this.getPageBean(currentPage, pageSize, ebBrand);
	}

	

	
}
