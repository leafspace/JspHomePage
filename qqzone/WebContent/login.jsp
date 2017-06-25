<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="css/styles.css">
		<link rel="icon" type="image/x-ico" href="img/title.ico">
		<title>登陆账户</title>
	</head>
	<body>
		<div class="htmleaf-container">
			<div class="wrapper">
				<div class="container">
					<h1>Welcome</h1>
					
					<form class="form" action="authentication.jsp?flag=login" method="post">
						<input name="userName" type="text" placeholder="用户名">
						<input name="password" type="password" placeholder="密码">
						<button type="submit" id="login-button">登陆</button>
					</form>
					<form style="margin-top: -30px;" action="register.jsp">
						<% String info = "";
						   if(request.getAttribute("info") != null) {
							   info = (String)request.getAttribute("info");
						   }
						%>
						<span id="info" style="color: red;"><%=info%>&nbsp;</span>
						<br>
						<button type="botton" id="login-button">注册</button>
					</form>
				</div>
				<ul class="bg-bubbles">
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
		</div>
	</body>
</html>