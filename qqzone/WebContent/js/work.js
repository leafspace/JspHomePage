window.setInterval("InitWebsite()", 1000);

function InitWebsite(){
	var now = new Date();
	var weekday = new Array(7);
	weekday[0]="周日";
	weekday[1]="周一";
	weekday[2]="周二";
	weekday[3]="周三";
	weekday[4]="周四";
	weekday[5]="周五";
	weekday[6]="周六";
	document.getElementById("siboxtimeweek").innerHTML = weekday[now.getDay()];
	var date = "";
	if((now.getMonth() + 1)<10){
		date += "0";
	}
	date += (now.getMonth() + 1);
	date += "."
	if((now.getDate())<10){
		date += "0";
	}
	date += (now.getDate());
	
	document.getElementById("siboxtimeday").innerHTML = date;
}

function Signature(tempObject){
	//1.文字改为已签到
	document.getElementById("siboxtext").innerHTML = "已签到";
	//2.数据库改数值
}
