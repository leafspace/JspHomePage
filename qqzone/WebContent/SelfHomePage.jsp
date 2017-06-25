<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script type="text/javascript" src="js/work.js"></script>
		<link rel="stylesheet" href="assets/css/style.css">
		<link rel="stylesheet" type="text/css" href="css/homepage.css">
		<link rel="icon" type="image/x-ico" href="img/title.ico">
		<title>leafSpace homepage</title>
	</head>
	<body>
		<div id="background">
			<div id="top">
				<div id="logo">
					<a href=""><img src="img/logo.png" style="left:0;top:0"></a>
				</div>
				<div id="toolbar">
					<ul>
						<li style="width: 100px"><img src="img/self.png" width="20px" height="20px"><a href="">个人中心</a></li>
						<li style="width: 100px"><img src="img/home.png" width="20px" height="20px"><a href="">我的主页</a></li>
						<li style="width: 70px"><img src="img/friend.png" width="20px" height="20px"><a href="">好友</a></li>
						<li style="width: 70px"><img src="img/game.png" width="20px" height="20px"><a href="">游戏</a></li>
						<li style="width: 70px"><img src="img/play.png" width="20px" height="20px"><a href="">装扮</a></li>
					</ul>
				</div>
				<div id="media">
					<audio controls="controls" autoplay="true" loop = "10">
				        <source src="music/不说再见.mp3" type="audio/mp3" />
				        <source src="music/不说再见.ogg" type="audio/ogg" />
				        <embed height="100" width="100" src="music/不说再见.mp3" loop ="0"/>
			     	</audio>
				</div>
				<div id="search">
					<input type="text" name="search" placeholder="查找" style="width: 60px">
				</div>
				<div id="myinfo">
					<a href="">
						<img src="img/head.png" width="20px" height="20px">
						<font color="white" size="2" style="padding-top: -10px">逃不掉的阎王庙</font>
					</a>
				</div>
				<div id="signout">
					<a href="login.jsp">
						<img src="img/signout.png" width="20px" height="20px">
						<font color="white" size="2" style="padding-top: -10px">退出</font>
					</a>
				</div>
				<div id="setmenu">
					<a href="">
						<img src="img/setmenu.png" width="20px" height="20px">
						<font color="white" size="2" style="padding-top: -10px">设置</font>
					</a>
				</div>
			</div>
			<div id="website">
				<img src="img/background.jpg" width="100%" height="100%" style="z-index:-100; position:fixed; left:0; top:0; repeat: no-repeat;">
				<div id="maintoplist">
					<div id="head">
						<img src="img/toolhead.png" width="140px" height="140px" border="2" style="border-color: white; box-shadow: 10px 10px 5px #888888;">
					</div>
					<div id="maintoolbar">
						<div id="maintoolbartop">
							<span><font color="#55aaa6" size="5">跑不掉的阎王庙</font></span>
						</div>
						<div id="maintoolbarcenter">
							<img src="img/diamend.png" width="70px" height="70px" style="float: left">
							<div id="maintoolbarcenterspeed">
								<span><font color="#8c4300" style="text-shadow: 1px 2px 3px #ff891e;">成长值999 成长速度99点/天</font></span>
								<img src="img/leverlist2.png" width="150px" height="20px" style="margin-top: 0px;">
								<span><font size="2" style="text-shadow: 1px 1px 1px #000000;">进度：100%</font></span>
							</div>
						</div>
						<div id="maintoolbarbottom">
							<ul>
								<li><a href="">主页</a></li>
								<li><a href="">日志</a></li>
								<li><a href="">相册</a></li>
								<li><a href="">留言板</a></li>
								<li><a href="">说说</a></li>
								<li><a href="">个人档</a></li>
								<li><a href="">音乐</a></li>
								<li><a href="">时光轴</a></li>
								<li><a href="">更多</a></li>
							</ul>
						</div>
					</div>
					<div id="flash">
						<!-- <object type="application/x-shockwave-flash" data="flash/swallow.swf" width="115" height="38">
				          <param name="quality" value="high" />
				          <param name="wmode" value="opaque" />
				          <param name="swfversion" value="8.0.35.0" />
			            </object> -->
			            
			            <object> 
							<param value="flash/wallow.swf" name="movie"> 
							<param value="high" name="quality"> 
							<param value="transparent" name="wmode"> 
							<param value="exactfit" name="SCALE"> 
							<embed wmode="transparent" width="200px" height="150px" type="application/x-shockwave-flash" quality="high" src="flash/swallow.swf"> 
						</object>
					</div>
				</div>
				<div id="box">
					<div id="boxtool">
						<ul>
							<li><img src="toolimg/1.png"><a href=""><span>好友动态</span></a></li>
							<li><img src="toolimg/2.png"><a href=""><span>特别关心</span></a></li>
							<li><img src="toolimg/3.png"><a href=""><span>与我相关</span></a></li>
							<li><img src="toolimg/4.png"><a href=""><span>视频广场</span></a></li>
							<li><img src="toolimg/5.png"><a href=""><span>那年今日</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>游戏应用</span></a></li>
							<li><img src="toolimg/7.png"><a href=""><span>我的收藏</span></a></li>
							<li><img src="toolimg/8.png"><a href=""><span>微云备份</span></a></li>
							<li><img src="toolimg/9.png"><a href=""><span>企鹅FM</span></a></li>
							<li><img src="toolimg/10.png"><a href=""><span>QQ阅读</span></a></li>
							<li><img src="toolimg/11.png"><a href=""><span>实名朋友</span></a></li>
							<li><img src="toolimg/12.png"><a href=""><span>认证空间</span></a></li>
							<li><img src="toolimg/13.png"><a href=""><span>QQ演出</span></a></li>
							<li><img src="toolimg/10.png"><a href=""><span>吃喝玩乐</span></a></li>
						</ul>
						
						<ul>
							<li><img src="toolimg/6.png"><a href=""><span>周杰伦带你飞</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>QQ情侣</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>礼物</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>QQ农场</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>青云志</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>生死阻击OL</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>驯龙消消乐</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>QQ牧场</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>焚天之怒</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>积分商城</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>每日抽奖</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>更多游戏应用</span></a></li>
							<li><img src="toolimg/6.png"><a href=""><span>魔法王座</span></a></li>
						</ul>
						
					</div>
					
					<div id="boxmessage">
						<div id="picturebox">
							<div id="jquery-script-menu"> </div>
							<div class="slider">
								<div class="slider-container">
								    <div class="slider-wrapper">
								      <div class="slide"> <img src="assets/img/img1.jpg" alt="jQuery Slider with CSS Transitions"> </div>
								      <div class="slide"> <img src="assets/img/img2.jpg" alt="jQuery Slider with CSS Transitions"> </div>
								      <div class="slide"> <img src="assets/img/img3.jpg" alt="jQuery Slider with CSS Transitions"> </div>
								      <div class="slide"> <img src="assets/img/img4.jpg" alt="jQuery Slider with CSS Transitions"> </div>
								  	</div>
							  	</div>
							</div>
						</div>
						<div id="messagebox">
							<div id="messageinputbox">
								<textarea name="info" style="width: 98%; height: 92%">说点儿什么吧</textarea>
							</div>
							<div id="messagephoto">
								<img src="img/camera.png" width="55px" height="55px" style="margin-top: 18px;">
							</div>
							<div id="messageflag">
								<img src="img/flag.png" width="75px" height="75px" style="margin-left: -8px; margin-top: 10px;">
							</div>
							<div id="messageinteresting">
								<font size="4" face="幼圆" color="white"><span>提<br>交</span></font>
							</div>
						</div>
						<div id="messageboxlist" style="margin-top: 10px;">
							<div id="messageboxlisttop">
								<div id="messageboxlisttopimg"><img src="headimg/1.jpg"></div>
								<div id="messageboxlisttoptex">This is a good day. My family out fun.</div>
							</div>
							<div id="messageboxlistcenter">
								<ul>
									<li>
										<div style="float:left; margin-left: 10px;">
											<img src="messagetool/3.png">
										</div>
										<div style="float:right; margin-right: 10px;">
											评论
										</div>
									</li>
									<li>
										<div style="float:left; margin-left: 10px;">
											<img src="messagetool/2.png">
										</div>
										<div style="float:right; margin-right: 10px;">
											转发
										</div>
									</li>
									<li>
										<div style="float:left; margin-left: 15px;">
											<img src="messagetool/1.png">
										</div>
										<div style="float:right; margin-right: 15px;">
											赞
										</div>
									</li>
									<li>
										<div style="float:left; margin-left: 10px;">
											<img src="messagetool/4.png">
										</div>
										<div style="float:right; margin-right: 10px;">
											收藏
										</div>
									</li>
								</ul>
							</div>
							<div id="messageboxlistbotton">
								<textarea name="info" style="width: 98%; height: 45%; margin-left: 4px;">评论一下</textarea>
								<button style="margin-left: 90%">评论</button>
							</div>
						</div>
					</div>
					
					<div id="boxplug">
						<div id="signinbox">
							<div id="siboxtime">
								<font size="4" color="white"><span id="siboxtimeweek">周一¸</span></font>
								<font size="4" color="white"><span id="siboxtimeday">01.01</span></font>
							</div>
							<div id="siboxcounter" onclick="Signature(this)"><font size="6" face="幼圆" color="white"><span id="siboxtext">签到</span></font></div>
						</div>
						
						<div id="guanggao1"></div>
						<div id="hotinfo">
							<h4 style="margin: 10px;">最近在看</h4>
							<ul>
								<li>
									<div id="hotinfopic">
										<img src="img/hotinfo1.jpg">
									</div>
									<div id="hotinfot">
										<a href=""><font size="2" face="幼圆" color="white"><span>张继科马龙玩疯狂猜词， 被他们萌到了吗</span></font></a>
									</div>
								</li>
								
								<li>
									<div id="hotinfopic">
										<img src="img/hotinfo2.jpg">
									</div>
									<div id="hotinfot">
										<a href=""><font size="2" face="幼圆" color="white"><span>最傻萌星座排行榜，你排第几位？</span></font></a>
									</div>
								</li>
								<li>
									<div id="hotinfopic">
										<img src="img/hotinfo3.jpg">
									</div>
									<div id="hotinfot">
										<a href=""><font size="2" face="幼圆" color="white"><span>小鸟云服务器托管,大带宽,低资费</span></font></a>
									</div>
								</li>
							</ul>
						</div>
						
						<div id="careinfo">
							<font size="3" face="幼圆" color="white" style="margin-left:10px;"><span>谁在意我 | 我在意谁</span></font>
							<ul>
								<li>
									<div id="careinfopic"><img src="headimg/1.jpg"></div>
									<div id="careinforight">
										<div id="careinfopercent">98</div>
										<div id="careinfotop"><img src="toolimg/2.png"></div>
										<div id="careinforightspan"><font size="2">艺术系小尼姑苏狸</font></div>
									</div>
								</li>
								<li>
									<div id="careinfopic"><img src="headimg/2.jpg"></div>
									<div id="careinforight">
										<div id="careinfopercent">95</div>
										<div id="careinfotop"><img src="toolimg/2.png"></div>
										<div id="careinforightspan"><font size="2">md5 64bit</font></div>
									</div>
								</li>
								<li>
									<div id="careinfopic"><img src="headimg/3.jpg"></div>
									<div id="careinforight">
										<div id="careinfopercent">90</div>
										<div id="careinfotop"><img src="toolimg/2.png"></div>
										<div id="careinforightspan"><font size="2">不成功不改网名！</font></div>
									</div>
								</li>
							</ul>
						</div>
						<div id="lookinfo">
							<div id="lookinfotop">
								<font size="2" face="幼圆" color="white"><span>谁看过我 | 我看过谁 | 被挡访客</span></font>
							</div>
							<div id="lookinfoguanggao">
								<font size="2" face="幼圆"><span>看看大家都看了什么？开通黄钻可查看300人的访问轨迹。</span></font>
								<img src="img/huangzuan.png" style="margin-top: 10px;">
							</div>
							<div id="lookinfoheadbox">
								<table width="100%" height="100%" style="text-align: center;">
									<tr>
										<td><img src="headimg/1.jpg"></td>
										<td><img src="headimg/2.jpg"></td>
										<td><img src="headimg/3.jpg"></td>
									</tr>
									<tr>
										<td><font size="2">08:58</font></td>
										<td><font size="2">07:25</font></td>
										<td><font size="2">昨天</font></td>
									</tr>
									<tr>
										<td><img src="headimg/3.jpg"></td>
										<td><img src="headimg/4.jpg"></td>
										<td><img src="headimg/5.jpg"></td>
									</tr>
									<tr>
										<td><font size="2">昨天</font></td>
										<td><font size="2">昨天</font></td>
										<td><font size="2">昨天</font></td>
									</tr>
									<tr>
										<td><img src="headimg/5.jpg"></td>
										<td><img src="headimg/2.jpg"></td>
										<td><img src="headimg/1.jpg"></td>
									</tr>
									<tr>
										<td><font size="2">昨天</font></td>
										<td><font size="2">昨天</font></td>
										<td><font size="2">昨天</font></td>
									</tr>
								</table>
							</div>
							<div id="lookinfobotton">
								<hr>
								<table  width="100%" height="100%" style="margin-top: -7px; text-align: center;">
									<tr>
										<td>今日浏览</td>
										<td>总浏览</td>
										<td>被挡访客</td>
									</tr>
									<tr>
										<td>109</td>
										<td>66482</td>
										<td>276</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<br>
			</div>
		</div>
		
		<script src="assets/js/jquery-1.8.3.min.js"></script> 
		<script src="assets/js/slider.js"></script> 
		<script type="text/javascript">
			(function() {
				Slider.init({
					target: $('.slider'),
					time: 6000
				});
			})();
		</script>
		<script src="/gg_bd_ad_720x90-2.js" type="text/javascript"></script>
		<script src="/follow.js" type="text/javascript"></script>
	</body>
</html>