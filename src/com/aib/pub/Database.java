package com.aib.pub;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
	public static String driver="com.mysql.jdbc.Driver";
	public static String url="jdbc:mysql://localhost:3306/web";
	public static String username="root";
	public static String password="root";
	public static Connection conn=null;
	
	private Database(){
		
	}
	
	public static Connection getcConnection(){
		if(conn == null){
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url,username,password);
				System.out.println("数据库连接成功");
			} catch (Exception e) {
				System.out.println("数据库连接失败");
				e.printStackTrace();
			}
		}
		return conn;
	}
	public static void main(String[] args) {//测试数据库是否连接成功
		System.err.println(getcConnection());
	}

}
