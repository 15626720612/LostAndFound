package com.aib.pub;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateUtils {
	static SessionFactory sessionFactory;  
	public static Session openSession(){
		if(sessionFactory==null){
			 StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
			.configure() // configures settings from hibernate.cfg.xml
			.build();
			 sessionFactory = new MetadataSources( registry ).buildMetadata().buildSessionFactory();
		}
		System.out.println(sessionFactory);
		return sessionFactory.openSession();
	}
	public static void main(String[] args){
		System.out.println(HibernateUtils.openSession());
	}
}
