package com.aib.pub;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.net.URLDecoder;
import java.sql.Connection;
import java.sql.Statement;

/**
 *初始化数据库类
 */
public class DBInit {
	@SuppressWarnings("deprecation")
	public static void main(String[] args) throws Exception{
		String classpath=DBInit.class.getResource("").getPath();
		classpath = URLDecoder.decode(classpath);
		File file = new File(classpath+"init.sql");
//		File file = new File(classpath+"sql.txt");
		System.out.println(classpath+"init.sql");
		FileReader fr = new FileReader(file);
		BufferedReader br = new BufferedReader(fr);
		String line = br.readLine();
		Connection con = Database.getcConnection();
		Statement stmt = con.createStatement();
		String sql="";
		while(line!=null){
			sql+=line;
			if(line.endsWith(";")){
				stmt.execute(sql);
				System.out.println("connection success:"+sql);
				sql="";
			}else{
				System.out.println("connection faid:"+sql);
				sql="";
			}
			line = br.readLine();
		}
		con.close();
		br.close();
		/*Class.forName("com.mysql.jdbc.Driver");//加载驱动
		Connection con=DriverManager.getConnection(
			  "jdbc:mysql://localhost/web"
			 ,"root", "root");//创建连接
		if(con==null){
			System.out.println("数据库连接不上！");
		}
		String filePath = DBInit.class.getResource("init.sql").getPath();
		if(filePath==null){
			System.out.println("filePath获取不了");
		}
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
		*/
	}
}
