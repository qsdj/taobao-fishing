<!--#include file="inc/function.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>获奖通知</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="images/CssupbQpduIml8J.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="images/jquery-1.6.2.min.js"></script>
<script type="text/javascript"> 
var intDiff = parseInt(7200);//倒计时总秒数量
function timer(intDiff){
	window.setInterval(function(){
	var day=0,
		hour=0,
		minute=0,
		second=0;//时间默认值		
	if(intDiff > 0){
		day = Math.floor(intDiff / (60 * 60 * 24));
		hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
		minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
		second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
	}
	if (minute <= 9) minute = '0' + minute;
	if (second <= 9) second = '0' + second;
	$('#day_show').html(day+"天");
	$('#hour_show').html('<s id="h"></s>'+hour+'时');
	$('#minute_show').html('<s></s>'+minute+'分');
	$('#second_show').html('<s></s>'+second+'秒');
	intDiff--;
	}, 1000);
} 
 
$(function(){
	timer(intDiff);
});	
</script>
<style type="text/css">
        #Layer1
        {
            z-index: 1;
            width: 495px;
            position: absolute;
            height: 171px;
        }
        .STYLE1
        {
            font-size: 14px;
        }
        .STYLE37
        {
            font-size: 12px;
            color: #990000;
        }
    </style>
<meta content="MSHTML 6.00.3790.5246" name="GENERATOR">
</head>
<body>
<div align="center"> <img height="260" src="images/A01_02.jpg" width="1090"><br>
  <img height="272" src="images/A01_04.jpg" width="1090"><br>
</div>
<div align="center"> <img src="images/Note_03.gif"></div>
<div style="background: #ffffff; margin: 0px auto; width: 1089px; height: 900px">
  <div style="background: url(images/Note_07.gif) no-repeat; float: left; margin-left: 26px;
            width: 531px; height: 285px">
    <div style="height: 43px"> </div>
    <div style="font-size: 30px; margin-left: 230px; color: #b61700; font-family: '微软雅黑',yahei"> <%=session("userid")%>&nbsp;</div>
    <div style="height: 48px">&nbsp;</div>
    <div style="font-size: 18px; margin-left: 360px; color: #b61700; font-family: '微软雅黑',yahei">￥<%=wstr1%>元 </div>
  </div>
  <div style="float: left; width: auto">
    <div id="Layer1">
      <div class="time-item" style="font-size: 24px; margin-left: 250px; padding-top: 120px;
                    font-family: '微软雅黑',yahei"> <span id="day_show">0天</span> <span id="hour_show">0时</span> <span id="minute_show"> 0分</span> <span id="second_show">0秒</span> </div>
    </div>
    <img src="images/Note_08.gif" usemap="#Map" border="0">
    <map id="Map" name="Map">
      <area shape="RECT" target="_self" coords="25,202,245,256" href="index4.asp">
      <area shape="RECT" target="_self" coords="276,203,497,257" href="xianchang.asp">
    </map>
  </div>
  <div class="clear" style="margin: 0px auto; width: 95%; border-bottom: #cccccc 1px dotted;
            height: 10px"> </div>
  <div>
    <p style="float: left; background-image: url(images/Note_11.gif); margin-left: 10px;
                width: 531px; padding-top: 232px; height: 195px"> <span style="font-weight: bold; margin-left: 135px; color: #b61700; font-family: '微软雅黑',yahei"> ￥<%=wstr1%>元</span> </p>
  </div>
  <div style="float: left">
    <div style="padding-top: 15px"> <img src="images/Note_12.gif"></div>
    <div align="right">
      <object type="application/x-shockwave-flash" data="http://static.youku.com/v1.0.0385/v/swf/loader.swf" width="444" height="334" id="movie_player">
        <param name="allowFullScreen" value="true" />
        <param name="allowscriptaccess" value="always" />
        <param name="flashvars" value="VideoIDS=XMTcyOTU3NDky&amp;ShowId=0&amp;category=105&amp;Cp=0&amp;Light=on&amp;THX=off&amp;unCookie=0&amp;frame=0&amp;pvid=1386083997291PmC&amp;uepflag=0&amp;Tid=0&amp;isAutoPlay=false&amp;Version=/v1.0.0910&amp;show_ce=0&amp;winType=interior&amp;embedid=AjQzMjM5MzczAnd3dy5zb2t1LmNvbQIvc2VhcmNoX3ZpZGVvL3FfJUU4JThCJUI5JUU2JTlFJTlDJUU3JTk0JUI1JUU4JTg0JTkxJUU1JUI5JUJGJUU1JTkxJThB&amp;vext=bc%3D%26pid%3D1386083997291PmC%26unCookie%3D0%26frame%3D0%26type%3D0%26svt%3D0%26emb%3DAjQzMjM5MzczAnd3dy5zb2t1LmNvbQIvc2VhcmNoX3ZpZGVvL3FfJUU4JThCJUI5JUU2JTlFJTlDJUU3JTk0JUI1JUU4JTg0JTkxJUU1JUI5JUJGJUU1JTkxJThB%26dn%3D%E7%BD%91%E9%A1%B5%26hwc%3D1%26mtype%3Doth" />
        <param name="movie" value="http://static.youku.com/v1.0.0385/v/swf/loader.swf" />
      </object>
    </div>
  </div>
  <div class="clear"> </div>
  <div class="bk" style="background-image: url(images/Note_15.gif); background-repeat: no-repeat;
            height: 105px">
    <p style="padding-left: 260px; font-size: 20px; color: red; padding-top: 80px"> <%=wtel%></p>
  </div>
</div>
<div align="center"> <img src="images/bd.gif"></div>
<div style="height: 32px"> </div>
<div align="center"> <img height="551" src="images/Note_18.gif" width="1089"></div>
<div style="height: 32px"> </div>
<div style="margin-top: 30px; height: 227px; background-color: #ffffff" align="center"> <img src="images/A01_30.gif" vspace="29"></div>
</body>
</html>
