function checkName(name) {
	var userName = name.value;
	//非空
	if(userName != "") {
		//对其格式验证
		var nameReg = /^[\w]{6,18}$/;
		if(nameReg.test(userName)) {
			/*
			 * 数据验证 - ajax - DB
			 * 	 Asynchronous JavaScript and XML（异步的 JavaScript 和 XML）
			 * 	 XMLHttpRequest 是 AJAX 的基础
			 */
			var xmlhttp;
			if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp=new XMLHttpRequest();
			} else {// code for IE6, IE5
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
			
			//发送请求至后端 - 并传递参数数据
			xmlhttp.open("GET","UserDao.jsp?flag=checkName&userName=" + userName,true);
			xmlhttp.send();

			//接收后端所验证结果
			xmlhttp.onreadystatechange=function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					//alert(xmlhttp.responseText);		//text   XML-JSON
					if(xmlhttp.responseText == "true") {
						name.style.backgroundColor = "white";
						nameFlag = true;
					} else {
						document.getElementById("errorinfo").innerHTML = "用户名已被注册!";
						name.style.backgroundColor = "red";
						nameFlag = false;
					}
				}
			}
		} else {
			document.getElementById("errorinfo").innerHTML = "用户名格式错误!";
			name.style.backgroundColor = "red";
			nameFlag = false;
		}
	} else {
		document.getElementById("errorinfo").innerHTML = "用户名不可不填!";
		name.style.backgroundColor = "LightPink";
		nameFlag = false;
		name.value = '用户名';
	}
}

function paswCheck(pasw) {
	var password = pasw.value;
	//非空
	if(password != "") {
		//对其格式验证
		var paswReg = /^.{6,18}$/;
		if(paswReg.test(password)) {
			pasw.style.backgroundColor = "white";
			paswFlag = true;
		} else {
			document.getElementById("errorinfo").innerHTML = "密码不少于6~18位!";
			pasw.style.backgroundColor = "red";
			paswFlag = false;
		}
	} else {
		document.getElementById("errorinfo").innerHTML = "密码不可为空!";
		pasw.style.backgroundColor = "red";
		paswFlag = false;
		pasw.value = '********';
	}
}

var nameFlag = false;
var paswFlag = false;
//submit整体表单提交事件
function checkReg(regForm) {
	if(!nameFlag) {
		checkName(regForm.userName);
	}
	if(!paswFlag) {
		paswCheck(regForm.password);
	}
	return nameFlag && paswFlag;
}

