package qqzone.database.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Java连接DB，实现DB先关操作工具类
 * 	JDBC - Java Data Base Connectivity
 * 		1: 加入数据库驱动jar包   copy至WEB-INF下的lib中
 * 		2: 获取数据库链接
 * 		3: 获取语句处理
 * 		4: 实现数据ARUD操作
 * 		5: 关闭数据库相关操作
 */
public class DBUtil {
	
	private static Connection con;
	private static PreparedStatement pstmt;
	private static ResultSet rs;
	
	/**
	 * 获取数据库链接
	 */
	private static void getConnection() {
		try {
			//加载数据库驱动程序类
			Class.forName("com.mysql.jdbc.Driver");
			//获取数据库链接
			con = DriverManager.getConnection("jdbc:mysql://192.168.23.2:3306/zone", "wb", "1234");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 获取语句处理 PreparedStatement
	 */
	public static PreparedStatement getPstmt(String sql) {
		getConnection();
		try {
			pstmt = con.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pstmt;
	}
	
	/**
	 * 实现数据库更新操作
	 * 	insert、update、delete
	 */
	public static void update() {
		try {
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 实现数据库查询操作
	 * 	select
	 */
	public static ResultSet query() {
		try {
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	/**
	 * 关闭数据库相关操作
	 */
	public static void allClose() {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}
