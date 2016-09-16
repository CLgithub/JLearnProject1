package com.cl.ecps.shop.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.FlashMap;

import com.cl.ecps.common.entity.EbBrand;
import com.cl.ecps.common.mapper.EbBrandMapper;
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
	
	@Resource
	private EbBrandMapper ebBrandMapper;

	@Override
	public PageBean getUserPBBySearch(Integer currentPage, Integer pageSize, EbBrand ebBrand) {
		PageBean pageBean = this.getPageBean(currentPage, pageSize, ebBrand);
		return pageBean;
	}

	@Override
	public boolean saverOrUpdate(EbBrand ebBrand) {
		if(null==ebBrand.getBrandid()){
			if(ebBrandMapper.insert(ebBrand)==1)
				return true;
			else
				return false;
		}else {
			if(ebBrandMapper.updateByPrimaryKey(ebBrand)==1)
				return true;
			else 
				return false;
		}
	}

	@Override
	public boolean deleteByids(String ids) {
		//删除图片
		
		//删除记录
		return false;
	}
	
}

