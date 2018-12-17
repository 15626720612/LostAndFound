package com.aib.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.transaction.annotation.Transactional;

import com.aib.dao.GoodsDao;
import com.aib.domain.Goods;
import com.aib.domain.PageBean;
import com.aib.domain.User;
import com.aib.service.GoodsService;

@Transactional
public class GoodsServiceImpl implements GoodsService {
	private GoodsDao goodsDao;

	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	// 默认分页查询客户的方法
	@Override
	public PageBean<Goods> findByPage(DetachedCriteria detachedCriteria,
			Integer currPage, Integer pageSize) {
		PageBean<Goods> pageBean = new PageBean<Goods>();
		// 封装当前页面：
		pageBean.setCurrPage(currPage);
		// 封装每页显示记录数：
		pageBean.setPageSize(pageSize);
		// 封装总记录数
		Integer totalCount = goodsDao.findCound(detachedCriteria);
		pageBean.setTotalCount(totalCount);
		// 封装总页数
		Double tc = totalCount.doubleValue();
		Double num = Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		// 封装每页显示数据的集合
		Integer begin = (currPage - 1) * pageSize;
		List<Goods> list = goodsDao.findByPage(detachedCriteria, begin,
				pageSize);
		pageBean.setList(list);
		return pageBean;
	}


	@Override
	public void insert(User user) {
		goodsDao.insert(user);
	}
	
	@Override
	public void insert(Goods goods) {
		goodsDao.insert(goods);
	}

}
