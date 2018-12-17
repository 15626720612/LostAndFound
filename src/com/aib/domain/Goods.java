package com.aib.domain;

import java.util.Date;

public class Goods {
	private Long id;
	private String username;
	private String phone;
	private String goodsname;
	private String type;
	private String data; // 插入时间
	private String lostdata;// 丢失时间
	private String descriptions;
	private String category;// 分类
	private String address;// 地址
	private String imgUrl;
	
	
	
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	@Override
	public String toString() {
		return "Goods [id=" + id + ", username=" + username + ", phone="
				+ phone + ", goodsname=" + goodsname + ", type=" + type
				+ ", data=" + data + ", lostdata=" + lostdata
				+ ", descriptions=" + descriptions + ", category=" + category
				+ ", address=" + address + "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getLostdata() {
		return lostdata;
	}
	public void setLostdata(String lostdata) {
		this.lostdata = lostdata;
	}
	public String getDescriptions() {
		return descriptions;
	}
	public void setDescriptions(String descriptions) {
		this.descriptions = descriptions;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

}
