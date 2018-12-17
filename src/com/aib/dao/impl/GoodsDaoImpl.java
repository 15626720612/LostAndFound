package com.aib.dao.impl;

import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.aib.dao.GoodsDao;
import com.aib.domain.Goods;
import com.aib.domain.User;
import com.aib.pub.HibernateUtils;
import com.aib.pub.db.Database;

public class GoodsDaoImpl extends HibernateDaoSupport implements GoodsDao {

	@Override
	// 带条件统计个数的方法
	public Integer findCound(DetachedCriteria detachedCriteria) {
		// select count(*) from xxx where 条件;
		detachedCriteria.setProjection(Projections.rowCount());
		List<Long> list = (List<Long>) this.getHibernateTemplate()
				.findByCriteria(detachedCriteria);
		if (list.size() > 0) {
			return list.get(0).intValue();
		}
		return null;
	}

	@Override
	// 分页查询客户的方法
	public List<Goods> findByPage(DetachedCriteria detachedCriteria,
			Integer begin, Integer pageSize) {
		detachedCriteria.setProjection(null);
		return (List<Goods>) this.getHibernateTemplate().findByCriteria(
				detachedCriteria, begin, pageSize);
	}

	@Override
	public void insert(Goods goods) {

		try {
			// 系统时间
			Date d = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String data = sdf.format(d);

			Connection con = Database.getConnection();
			Statement stmt = con.createStatement();
			String sql = "insert into tb_goods (phone,username,type,category,address,data,lostdata,descriptions,goodsname,imgUrl) value ('"
					+ goods.getPhone()
					+ "','"
					+ goods.getGoodsname()
					+ "','"
					+ goods.getType()
					+ "','"
					+ goods.getCategory()
					+ "','"
					+ goods.getAddress()
					+ "','"
					+ data
					+ "','"
					+ goods.getLostdata()
					+ "','"
					+ goods.getDescriptions()
					+ "','" + goods.getGoodsname() + "','"+goods.getImgUrl()+"')";
			System.out.println(sql);
			stmt.execute(sql);
			con.close();
		} catch (Exception e) {

		}
	}

	public static void main(String[] args) {

		Goods g = new Goods();
		g.setPhone("123456789");
		g.setUsername("123456789");
		g.setGoodsname("123456789");
		g.setType("123456");
		g.setCategory("123456");
		g.setAddress("123456789");
		g.setLostdata("123456789");
		g.setDescriptions("12234564860");
		g.setImgUrl("upload/e03.jpg");
		System.out.println(g);
		GoodsDaoImpl dao = new GoodsDaoImpl();
		dao.insert(g);

	}

	@Override
	public void insert(User user) {
		
	}

}
