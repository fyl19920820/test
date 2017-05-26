package com.itheima.domain;

import java.util.Date;

public class Product {
	/**
	 * `pid` VARCHAR(32) NOT NULL,
	  `pname` VARCHAR(50) DEFAULT NULL,		#商品名称
	  `market_price` DOUBLE DEFAULT NULL,	#市场价格
	  `shop_price` DOUBLE DEFAULT NULL,		#商城价
	  `pimage` VARCHAR(200) DEFAULT NULL,	#商品图片路径
	  `pdate` DATE DEFAULT NULL,			#上架时间
	  `is_hot` INT(11) DEFAULT NULL,		#是否热门：0=不热门,1=热门
	  `pdesc` VARCHAR(255) DEFAULT NULL,	#商品描述
	  `pflag` INT(11) DEFAULT 0,			#商品标记：0=未下架(默认值),1=已经下架
	  `cid` VARCHAR(32) DEFAULT NULL,		#分类id
	 */
	
	
	private String pid;
	private String pname;
	private String shop_price;
	private String pdesc;
	private String pimage;
	private Date pdate;
	//使用分类对象
	private String cid;
	
	public Date getPdate() {
		return pdate;
	}


	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}


	public String getPid() {
		return pid;
	}
	
	
	public String getPimage() {
		return pimage;
	}


	public void setPimage(String pimage) {
		this.pimage = pimage;
	}


	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getShop_price() {
		return shop_price;
	}
	public void setShop_price(String shop_price) {
		this.shop_price = shop_price;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	
	
	
}
