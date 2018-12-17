package com.aib.pub;
import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class DBInit2 {
	public static void main(String[] args) throws Exception{
		Class.forName("com.mysql.jdbc.Driver");//加载驱动
		Connection con
	   =DriverManager.getConnection(
			  "jdbc:mysql://localhost/web"
			 ,"root", "root");//创建连接
		String filePath = DBInit2.class.getResource("init2.sql").getPath();
		FileReader fr=new FileReader(filePath);
		BufferedReader br=new BufferedReader(fr);
		String sql=br.readLine();
		Statement stmt=con.createStatement();//执行sql
		while(sql!=null&&!sql.isEmpty()){
			if(sql.endsWith(";")){
				stmt.execute(sql);
				System.out.println(sql);
				sql="";
			}
			sql+=br.readLine().trim();
		}
		fr.close();
		con.close();
		System.out.println("done");
	}

}
