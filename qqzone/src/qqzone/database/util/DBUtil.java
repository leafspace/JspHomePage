package qqzone.database.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Java����DB��ʵ��DB�ȹز���������
 * 	JDBC - Java Data Base Connectivity
 * 		1: �������ݿ�����jar��   copy��WEB-INF�µ�lib��
 * 		2: ��ȡ���ݿ�����
 * 		3: ��ȡ��䴦��
 * 		4: ʵ������ARUD����
 * 		5: �ر����ݿ���ز���
 */
public class DBUtil {
	
	private static Connection con;
	private static PreparedStatement pstmt;
	private static ResultSet rs;
	
	/**
	 * ��ȡ���ݿ�����
	 */
	private static void getConnection() {
		try {
			//�������ݿ�����������
			Class.forName("com.mysql.jdbc.Driver");
			//��ȡ���ݿ�����
			con = DriverManager.getConnection("jdbc:mysql://192.168.23.2:3306/zone", "wb", "1234");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * ��ȡ��䴦�� PreparedStatement
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
	 * ʵ�����ݿ���²���
	 * 	insert��update��delete
	 */
	public static void update() {
		try {
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * ʵ�����ݿ��ѯ����
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
	 * �ر����ݿ���ز���
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
