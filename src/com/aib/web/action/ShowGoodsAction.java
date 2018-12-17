package com.aib.web.action;

import java.util.Map;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import com.opensymphony.xwork2.ActionContext;

import com.aib.domain.Goods;
import com.aib.domain.PageBean;
import com.aib.service.GoodsService;
import com.opensymphony.xwork2.ActionContext;

public class ShowGoodsAction {
	private String indexId;
	private int currPage=1;
	private int pageSize=1;
	private Goods goods = new Goods();
	private GoodsService goodsService;
	
	public String showGoods(){
		System.out.println(indexId);
		if(indexId!=null){
			
			Long idL = Long.parseLong(indexId);//转换成Long
			
			DetachedCriteria detachedCriteria = DetachedCriteria
					.forClass(Goods.class);
			// 条件查询=============start
			detachedCriteria.add(Restrictions.eq("id", idL));
			// 条件查询=============end
			PageBean<Goods> pageBean = goodsService.findByPage(detachedCriteria,
					currPage, pageSize);
			ActionContext.getContext().getValueStack().push(pageBean);
			
			goods=pageBean.getList().get(0);//将从数据库中找出来一的信息复制给goods;
			System.out.println(goods.getGoodsname());
			ActionContext context= ActionContext.getContext();
	        Map session = (Map)context.getSession();
	        session.put("goods", goods);
	        
			return "show";
		}else{
			return "error";
		}
		
	}
	public String getIndexId() {
		return indexId;
	}
	public void setIndexId(String indexId) {
		this.indexId = indexId;
	}
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public GoodsService getGoodsService() {
		return goodsService;
	}
	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}
}
