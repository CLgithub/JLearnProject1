package com.cl.ecps.common.entity;

import java.util.Date;

public class EbItem extends BaseEntity{
    private Long itemid;
    private String itemname;
    private String itemno;
    private Long brandid;
    private Long catid;
    private Long tagimgid;
    private Short tagimg;
    private Short isnew;
    private Short isgood;
    private Short ishot;
    private String promotion;
    private Short auditstatus;
    private Short showstatus;
    private String imgs;
    private String keywords;
    private String pagedesc;
    private Date onsaletime;
    private Date checktime;
    private Date updatetime;
    private Long updateuserid;
    private Date createtime;
    private Long checkeruserid;
    private String fullpathdeploy;
    private String fullpathdeployoffer;
    private Long originalitemid;
    private Short laststatus;
    private Long merchantid;
    private Long itemsort;
    private Long sales;
    private Long createuserid;
    private Short simlevel;
    private String giftdesc;
    private String giftimg;
    private String giftshowtype;
    private String imgsize1;
    
    
    public Long getItemid() {
        return itemid;
    }

    public void setItemid(Long itemid) {
        this.itemid = itemid;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname == null ? null : itemname.trim();
    }

    public String getItemno() {
        return itemno;
    }

    public void setItemno(String itemno) {
        this.itemno = itemno == null ? null : itemno.trim();
    }

    public Long getBrandid() {
        return brandid;
    }

    public void setBrandid(Long brandid) {
        this.brandid = brandid;
    }

    public Long getCatid() {
        return catid;
    }

    public void setCatid(Long catid) {
        this.catid = catid;
    }

    public Long getTagimgid() {
        return tagimgid;
    }

    public void setTagimgid(Long tagimgid) {
        this.tagimgid = tagimgid;
    }

    public Short getTagimg() {
        return tagimg;
    }

    public void setTagimg(Short tagimg) {
        this.tagimg = tagimg;
    }

    public Short getIsnew() {
        return isnew;
    }

    public void setIsnew(Short isnew) {
        this.isnew = isnew;
    }

    public Short getIsgood() {
        return isgood;
    }

    public void setIsgood(Short isgood) {
        this.isgood = isgood;
    }

    public Short getIshot() {
        return ishot;
    }

    public void setIshot(Short ishot) {
        this.ishot = ishot;
    }

    public String getPromotion() {
        return promotion;
    }

    public void setPromotion(String promotion) {
        this.promotion = promotion == null ? null : promotion.trim();
    }

    public Short getAuditstatus() {
        return auditstatus;
    }

    public void setAuditstatus(Short auditstatus) {
        this.auditstatus = auditstatus;
    }

    public Short getShowstatus() {
        return showstatus;
    }

    public void setShowstatus(Short showstatus) {
        this.showstatus = showstatus;
    }

    public String getImgs() {
        return imgs;
    }

    public void setImgs(String imgs) {
        this.imgs = imgs == null ? null : imgs.trim();
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords == null ? null : keywords.trim();
    }

    public String getPagedesc() {
        return pagedesc;
    }

    public void setPagedesc(String pagedesc) {
        this.pagedesc = pagedesc == null ? null : pagedesc.trim();
    }

    public Date getOnsaletime() {
        return onsaletime;
    }

    public void setOnsaletime(Date onsaletime) {
        this.onsaletime = onsaletime;
    }

    public Date getChecktime() {
        return checktime;
    }

    public void setChecktime(Date checktime) {
        this.checktime = checktime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public Long getUpdateuserid() {
        return updateuserid;
    }

    public void setUpdateuserid(Long updateuserid) {
        this.updateuserid = updateuserid;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Long getCheckeruserid() {
        return checkeruserid;
    }

    public void setCheckeruserid(Long checkeruserid) {
        this.checkeruserid = checkeruserid;
    }

    public String getFullpathdeploy() {
        return fullpathdeploy;
    }

    public void setFullpathdeploy(String fullpathdeploy) {
        this.fullpathdeploy = fullpathdeploy == null ? null : fullpathdeploy.trim();
    }

    public String getFullpathdeployoffer() {
        return fullpathdeployoffer;
    }

    public void setFullpathdeployoffer(String fullpathdeployoffer) {
        this.fullpathdeployoffer = fullpathdeployoffer == null ? null : fullpathdeployoffer.trim();
    }

    public Long getOriginalitemid() {
        return originalitemid;
    }

    public void setOriginalitemid(Long originalitemid) {
        this.originalitemid = originalitemid;
    }

    public Short getLaststatus() {
        return laststatus;
    }

    public void setLaststatus(Short laststatus) {
        this.laststatus = laststatus;
    }

    public Long getMerchantid() {
        return merchantid;
    }

    public void setMerchantid(Long merchantid) {
        this.merchantid = merchantid;
    }

    public Long getItemsort() {
        return itemsort;
    }

    public void setItemsort(Long itemsort) {
        this.itemsort = itemsort;
    }

    public Long getSales() {
        return sales;
    }

    public void setSales(Long sales) {
        this.sales = sales;
    }

    public Long getCreateuserid() {
        return createuserid;
    }

    public void setCreateuserid(Long createuserid) {
        this.createuserid = createuserid;
    }

    public Short getSimlevel() {
        return simlevel;
    }

    public void setSimlevel(Short simlevel) {
        this.simlevel = simlevel;
    }

    public String getGiftdesc() {
        return giftdesc;
    }

    public void setGiftdesc(String giftdesc) {
        this.giftdesc = giftdesc == null ? null : giftdesc.trim();
    }

    public String getGiftimg() {
        return giftimg;
    }

    public void setGiftimg(String giftimg) {
        this.giftimg = giftimg == null ? null : giftimg.trim();
    }

    public String getGiftshowtype() {
        return giftshowtype;
    }

    public void setGiftshowtype(String giftshowtype) {
        this.giftshowtype = giftshowtype == null ? null : giftshowtype.trim();
    }

    public String getImgsize1() {
        return imgsize1;
    }

    public void setImgsize1(String imgsize1) {
        this.imgsize1 = imgsize1 == null ? null : imgsize1.trim();
    }
}