package com.vivebest.erp.utils;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * 数据库连接工具
 * @author 阿强
 * @version 1.0
 * 2015年10月12日1:27:09
 *
 */
public class DBConnection {
	private static String dbClassName = "com.mysql.jdbc.Driver"; // 定义保存数据库驱动的变量
	private static String dbUrl = "jdbc:mysql://localhost:3306/bankERP?user=root&password=123456&useUnicode=true";
	public static Connection openDB()
	{
		Connection con=null;
		try {
			Class.forName(dbClassName); // 装载数据库驱动
			con = DriverManager.getConnection(dbUrl); // 建立与数据库URL中定义的数据库的连接\
			return con; // 返回数据库连接对象
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		if (con == null) {
			System.err
					.println("警告: DbConnectionManager.getConnection() 获得数据库链接失败.\r\n\r\n链接类型:"
							+ dbClassName + "\r\n链接位置:" + dbUrl); // 在控制台上输出提示信息
		}
		return con; // 返回数据库连接对象
	}
	public static void main(String[] args) {
		openDB();
	}
}
