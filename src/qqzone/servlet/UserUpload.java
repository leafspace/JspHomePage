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
 * Servlet 配置URL
 * 	涉及文件上传 
 * 		- 用户注册
 * 		- 完善个人信息
 */
@WebServlet("/userUpload")
@MultipartConfig  	//注解 - servlet支持文件上传
public class UserUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * url访问
	 * 	get  - 直接访问、超链接...
	 * 	post - form - method='post'
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); 
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String sex = request.getParameter("sex");
		String info = request.getParameter("info");
		String headImg = "default.jpg";		//未选择图片 - 使用缺省图片值
		//把注册用户数据写至数据库表中
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
		//注册成功 跳转至登录页面
		response.sendRedirect("login.jsp"); 
	}
}