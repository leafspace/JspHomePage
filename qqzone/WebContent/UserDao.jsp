<%@page import="java.io.PrintWriter"%>
<%@page import="qqzone.database.util.DBUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
	<head>
		<title>实现数据处理</title>
	</head>
	<body>
		<!-- JSP 9内置对象
				request		请求
				response	回复
				session 	会话 - 跨页面数据处理
				...
		-->
		<%-- 
			/** 文档注释  */
			/* 多行注释 */
			//scriptlet标记 - 定义Java语句 
			
			<%= 表达式标记- 显示数据 %>
		--%>
		<!-- 用户相关操作 -->
		<%
			request.setCharacterEncoding("UTF-8");		//防止中文参数乱码
			//request.getParameter("name");  获取参数数据
			String flag = request.getParameter("flag");
			//依据flag - 实现不同的用户操作
			if("login".equals(flag)) { 
				//获取form表单中数据
				String userName = request.getParameter("userName");
				String password = request.getParameter("password");
				//out.print(userName + "\t" + password);
				
				//DB - 数据验证    -  工具类
				//先定义出执行SQL语句
				String sql = "select userName, password, headImg from user where userName = ?";	//参数数据使用 ? 
				PreparedStatement pstmt = DBUtil.getPstmt(sql);		//获取语句处理(包含获取连接)
				//设置sql语句中?的参数数据    pstmt.setType(index, value)	 index - 1开始
				pstmt.setString(1, userName);
				//执行sql语句操作
				ResultSet rs = DBUtil.query();
				boolean truth = false;		//登录状态
				String headImg = "";
				//结果集处理
				if(rs.next()) {		//获取下一行数据		rs.getType(index|列名)
					//执行  说明用户已查询到数据 
					if(rs.getString(2).equals(password)) {
						headImg = rs.getString(3);
						truth = true;
					}
				} 
				DBUtil.allClose();	//关闭数据库相关操作
				
				//依据数据处理 - 登录成功|失败
				if(truth) {
					//登录成功 - 用户名  session - session传递数据 两中页面跳转均可 
					session.setAttribute("userName", userName);
					session.setAttribute("headImg", headImg);
					
					//request.getRequestDispatcher("/zone.jsp").forward(request, response);
					//sendRedirect重定向 
					response.sendRedirect(this.getServletContext().getContextPath() + "FeelDao.jsp?flag=zone");
				} else {
					//传递错误信息至页面 - 只有下一个页面需要 	request.setAttribute("name", value) + 必须结合forward请求转发
					request.setAttribute("info", "用户名或密码错误!");
					request.getRequestDispatcher("login.jsp")
						   .forward(request, response);
				}
			} else if("reg".equals(flag)) { 
				//文件上传操作 - servlet3.0技术  - 定义Servlet实现文件上传 查看 UserUpload.java
			} else if("checkName".equals(flag)) {
				String userName = request.getParameter("userName");
				String sql = "select userName from user where userName = ?";
				PreparedStatement pstmt = DBUtil.getPstmt(sql);
				pstmt.setString(1, userName);
				ResultSet rs = DBUtil.query();
				boolean truth = true;		//用户名未被注册
				if(rs.next()) {
					truth = false;	//数据库查询到记录 用户名已被注册
				} 
				DBUtil.allClose();	
				
				//PrintWriter写字符传递至response回应
				PrintWriter pw = response.getWriter();
				pw.print(truth);
				pw.close();
			} else if("logout".equals(flag)) {
				/*
				 * 用户注销 
				 *	 session - 清除数据
				 */
				session.invalidate();
				response.sendRedirect("login.jsp");
			} else if("checkPasw".equals(flag)) {
				String oldPassword = request.getParameter("oldPassword");
				//已登录状态 - session-userName
				String userName = (String)session.getAttribute("userName");
				String sql = "select password from user where userName = ?";
				PreparedStatement pstmt = DBUtil.getPstmt(sql);
				pstmt.setString(1, userName);
				ResultSet rs = DBUtil.query();
				boolean truth = false;		
				if(rs.next()) {		
					if(rs.getString(1).equals(oldPassword)) {
						truth = true;	
					}
				} 
				DBUtil.allClose();	
				
				//PrintWriter写字符传递至response回应
				PrintWriter pw = response.getWriter();
				pw.print(truth);
				pw.close();
			} else if("up".equals(flag)) {
				String newPassword = request.getParameter("newpassword");
				//已登录状态 - session-userName
				String userName = (String)session.getAttribute("userName");
				String sql = "update user set password = ? where userName = ?";
				PreparedStatement pstmt = DBUtil.getPstmt(sql);
				pstmt.setString(1, newPassword);
				pstmt.setString(2, userName);
				DBUtil.update();
				DBUtil.allClose();
				response.sendRedirect("SelfHomePage.jsp");
			} else if("getUser".equals(flag)) {
				//已登录状态 - session-userName
				String userName = (String)session.getAttribute("userName");
				String sql = "select sex, headImg, info from user where userName = ?";
				PreparedStatement pstmt = DBUtil.getPstmt(sql);
				pstmt.setString(1, userName);
				ResultSet rs = DBUtil.query();
				String[] userInfo = new String[3];
				if(rs.next()) {	
					userInfo[0] = rs.getString(1);
					userInfo[1] = rs.getString(2);
					userInfo[2] = rs.getString(3);
				}
				DBUtil.allClose();
				
				request.setAttribute("userInfo", userInfo);
			}
		%>
	</body>
</html>