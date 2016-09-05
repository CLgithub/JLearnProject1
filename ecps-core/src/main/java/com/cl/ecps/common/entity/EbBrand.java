package com.cl.ecps.common.entity;

public class EbBrand extends BaseEntity{
	private Integer brandid;
	private String brandname;
	private String branddesc;
	private String imgs;
	private String website;
	private Integer brandsort;

	public Integer getBrandid() {
		return brandid;
	}

	public void setBrandid(Integer brandid) {
		this.brandid = brandid;
	}

	public String getBrandname() {
		return brandname;
	}

	public void setBrandname(String brandname) {
		this.brandname = brandname == null ? null : brandname.trim();
	}

	public String getBranddesc() {
		return branddesc;
	}

	public void setBranddesc(String branddesc) {
		this.branddesc = branddesc == null ? null : branddesc.trim();
	}

	public String getImgs() {
		return imgs;
	}

	public void setImgs(String imgs) {
		this.imgs = imgs == null ? null : imgs.trim();
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website == null ? null : website.trim();
	}

	public Integer getBrandsort() {
		return brandsort;
	}

	public void setBrandsort(Integer brandsort) {
		this.brandsort = brandsort;
	}
}