package com.aib.service;

import org.hibernate.criterion.DetachedCriteria;

import com.aib.domain.Goods;
import com.aib.domain.PageBean;
import com.aib.domain.User;

public interface GoodsService {

	PageBean<Goods> findByPage(DetachedCriteria detachedCriteria,
			Integer currPage, Integer pageSize);

	void insert(User user);
	void insert(Goods goods);

}
