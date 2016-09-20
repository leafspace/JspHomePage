<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="icon" type="image/x-ico" href="img/title.ico">
		<link href="css/register.css" rel='stylesheet' type='text/css' />
		<script type="text/javascript" src="js/register.js"></script>
		
		<link href="jquery/jquery.searchableSelect.css" rel="stylesheet" type="text/css">
		<script src="jquery/jquery-1.11.1.min.js"></script>
		<script src="jquery/jquery.searchableSelect.js"></script>
		
		
		<title>注册账户</title>
		<script type="application/x-javascript"> 
			addEventListener("load", function() { 
				setTimeout(hideURLbar, 0); 
			}, false); 
			function hideURLbar(){ 
				window.scrollTo(0,1); 
			} 
		</script>
	</head>
	<body>
		<div class="main">
			<h1><font size="7" color="white">注册账号</font></h1>
			<form action="userUpload" onsubmit="return checkReg(this)">
				<div class="lable">
					<input type="text" name="userName" class="text" value="用户名" onfocus="this.value = '';" onblur="checkName(this)" id="active">
					<div style="width: width: 94%; height: 60px; margin-top: 16px; float: right;">
						<select name="sex">
							<option value="保密">保密</option>
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
					</div>
					<script>
						$(function(){
							$('select').searchableSelect();
						});
					</script>
				</div>
				<div class="clear"></div>
				<div class="lable-2">
					<input type="password" name="password" class="text" value="********" onfocus="this.value = '';" onblur="paswCheck(this)">
					<input type="text" name="info" class="text" value="其余信息" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '其余信息';}">
				</div>
				<div class="clear"></div>
				<div>
					<font color="red" style="text-align: center;"><span id="errorinfo"></span></font>
				</div>
				<div class="submit">
					<input type="submit" onclick="myFunction()" value="注册账号" >
				</div>
				<div class="clear"> </div>
			</form>
		</div>
	</body>
</html>