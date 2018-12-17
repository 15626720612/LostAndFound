package com.aib.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.aib.dao.UserDao;
import com.aib.domain.User;
import com.aib.pub.HibernateUtils;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	// 注册
	@Override
	public void save(User user) {
		this.getHibernateTemplate().save(user);
	}

	// 登录
	@Override
	public User login(User user) {
		List<User> list = (List<User>) this.getHibernateTemplate().find(
				"from User where username = ? and password = ?",
				user.getUsername(), user.getPassword());
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	// 修改密码
	@Override
	public void changePWD(User user, User loginUser) {
		Session session = HibernateUtils.openSession();
		Transaction tx = session.beginTransaction();
		String sql = "update User u set u.password=? where u.username=?";
		Query query = session.createQuery(sql);
		query.setString(0, user.getPassword());
		query.setString(1, loginUser.getUsername());
		query.executeUpdate();
		tx.commit();
		session.close();

	}

	// 修改资料
	@Override
	public void changeInfo(User user, User loginUser) {
		System.out.println("UserDaoImpl的changeInfo方法执行了。。。。");
		Session session = HibernateUtils.openSession();
		Transaction tx = session.beginTransaction();
		String sql = "update User u set u.uname=?,u.password_prompt=?,u.id_number=?,u.sex=?,u.code_address=? where u.username=?";
		Query query = session.createQuery(sql);
		query.setString(0, user.getUname());
		query.setString(1, user.getPassword_prompt());
		query.setString(2, user.getId_number());
		query.setString(3, user.getSex());
		query.setString(4, user.getCode_address());
		query.setString(5, loginUser.getUsername());
		query.executeUpdate();
		tx.commit();
		session.close();
	}

	@Override
	public User findByUsername(String username) {
		String hql = "from User where username=?";
		List<User> list = (List<User>) this.getHibernateTemplate().find(hql,
				username);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;

	}

}
