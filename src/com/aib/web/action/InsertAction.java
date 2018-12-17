package com.aib.web.action;

import org.apache.struts2.ServletActionContext;

import com.aib.domain.Goods;
import com.aib.domain.User;
import com.aib.service.GoodsService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class InsertAction extends ActionSupport implements ModelDriven<Goods> {

	public Goods goods = new Goods();

	@Override
	public Goods getModel() {
		return goods;
	}

	// 注入goodsService
	private GoodsService goodsService;

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public String insert() {
//		System.out.println(goods);
		String imgUrl=(String)ServletActionContext.getRequest().getAttribute("imgUrl");
		goods.setImgUrl(imgUrl);
		System.out.println(goods.getImgUrl());
		goodsService.insert(goods);
		return "insert";
	}
}
