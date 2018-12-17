package com.aib.web.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.aib.domain.Goods;
import com.aib.domain.PageBean;
import com.aib.service.GoodsService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class GoodsAction extends ActionSupport implements ModelDriven<Goods> {
	private Goods goods = new Goods();

	@Override
	public Goods getModel() {
		return goods;
	}

	private GoodsService goodsService;

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	// 使用set方法接收“当前页面”数据
	private Integer currPage = 1;

	public void setCurrPage(Integer currPage) {
		if (currPage == null) {
			currPage = 1;
		}
		this.currPage = currPage;
	}

	// 使用set方法接收“每页显示记录数”数据
	private Integer pageSize = 3;

	public void setPageSize(Integer pageSize) {
		if (pageSize == null) {
			pageSize = 3;
		}
		this.pageSize = pageSize;
	}

	private String type = "found";

	public void setType(String type) {
		this.type = type;
	}

	public String findAllGoods() {
		DetachedCriteria detachedCriteria = DetachedCriteria
				.forClass(Goods.class);
		// 条件查询=============start

		// 条件查询=============end
		PageBean<Goods> pageBean = goodsService.findByPage(detachedCriteria,
				currPage, pageSize);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAllGoods";
	}

	public String findtypeGoods() {
		DetachedCriteria detachedCriteria = DetachedCriteria
				.forClass(Goods.class);
		// 条件查询=============start
		HttpServletRequest request = ServletActionContext.getRequest();
		String type = request.getParameter("type");
		System.out.println(type);
		if (type != null && type.length() > 0) {
			detachedCriteria.add(Restrictions.eq("type", type));
		}
		ActionContext.getContext().getValueStack().push(type);
		HttpSession sesion = request.getSession();
		sesion.setAttribute("type", type);
		System.out.println(sesion.getAttribute("type"));
		// 条件查询=============end
		PageBean<Goods> pageBean = goodsService.findByPage(detachedCriteria,
				currPage, pageSize);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findtypeGoods";
	}

	public String findCategory() {
		DetachedCriteria detachedCriteria = DetachedCriteria
				.forClass(Goods.class);
		// 条件查询=============start
		HttpServletRequest request = ServletActionContext.getRequest();
		String category = request.getParameter("category");
		System.out.println(category);
		detachedCriteria.add(Restrictions.eq("category", category));
		//
		ActionContext.getContext().getValueStack().push(category);
		HttpSession sesion = request.getSession();
		sesion.setAttribute("category", category);
		// 条件查询=============end
		PageBean<Goods> pageBean = goodsService.findByPage(detachedCriteria,
				currPage, pageSize);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findCategory";
	}

}
