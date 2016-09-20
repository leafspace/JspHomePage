<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="qqzone.database.util.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>data handle</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");                           //防止中文参数乱码
			String flag = request.getParameter("flag");
			if("login".equals(flag)) {                                       //依据flag - 实现不同的用户操作
				//获取form表单中数据
				String userName = request.getParameter("userName");
				String password = request.getParameter("password");
				
				//DB - 数据验证    -  工具类
				String sql = "select userName, password from user where userName = ?"; //参数数据使用 ? 
				PreparedStatement pstmt = DBUtil.getPstmt(sql);		         //获取语句处理(包含获取连接)
				//设置sql语句中?的参数数据    pstmt.setType(index, value)	 index - 1开始
				pstmt.setString(1, userName);
				//执行sql语句操作
				ResultSet rs = DBUtil.query();
				boolean truth = false;                                       //登录状态
				//结果集处理
				if(rs.next()) {	                                             //获取下一行数据    rs.getType(index|列名)
					//执行  说明用户已查询到数据 
					if(rs.getString(2).equals(password)) {
						truth = true;
					}
				} 
				DBUtil.allClose();                                           //关闭数据库相关操作
				
				//依据数据处理 - 登录成功|失败
				if(truth) {
					//登录成功 - 用户名  session
					session.setAttribute("userName", userName);
					request.getRequestDispatcher("SelfHomePage.jsp")
							.forward(request, response);
				} else {
					//传递错误信息至页面 - 只有下一个页面需要 	request.setAttribute("name", value)
					request.setAttribute("info", "用户名或密码错误");
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			} else if("reg".equals(flag)) { 
				
			}
		%>
	</body>
</html>