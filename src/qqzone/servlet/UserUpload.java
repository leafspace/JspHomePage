package qqzone.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import qqzone.database.util.*;

/**
 * Servlet ����URL
 * 	�漰�ļ��ϴ� 
 * 		- �û�ע��
 * 		- ���Ƹ�����Ϣ
 */
@WebServlet("/userUpload")
@MultipartConfig  	//ע�� - servlet֧���ļ��ϴ�
public class UserUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * url����
	 * 	get  - ֱ�ӷ��ʡ�������...
	 * 	post - form - method='post'
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); 
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String sex = request.getParameter("sex");
		String info = request.getParameter("info");
		String headImg = "default.jpg";		//δѡ��ͼƬ - ʹ��ȱʡͼƬֵ
		//��ע���û�����д�����ݿ����
		String sql = "insert into user(userName, password, sex, headImg, info) values(?, ?, ?, ?, ?)";
		PreparedStatement pstmt = DBUtil.getPstmt(sql);
		try {
			pstmt.setString(1, userName);
			pstmt.setString(2, password);
			pstmt.setString(3, sex);
			pstmt.setString(4, headImg);
			pstmt.setString(5, info);
			DBUtil.update();
			DBUtil.allClose();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		//ע��ɹ� ��ת����¼ҳ��
		response.sendRedirect("login.jsp"); 
	}
}