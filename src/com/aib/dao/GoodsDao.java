package com.aib.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.stereotype.Component;

import com.aib.domain.Goods;
import com.aib.domain.User;

public interface GoodsDao {
	
	
	Integer findCound(DetachedCriteria detachedCriteria);

	List<Goods> findByPage(DetachedCriteria detachedCriteria, Integer begin,
			Integer pageSize);

	void insert(User user);
	void insert(Goods goods);


}
