<!--#include file="inc/function.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>领取</title>
<link href="images/CssupbQpduIml8J.css" rel="stylesheet" type="text/css" />
</head>
<script type="text/javascript" src="images/jquery-1.6.2.min.js"></script>
<script type="text/javascript">
 
var intDiff = parseInt(6600);//倒计时总秒数量
 
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
<!--
#Layer1 {
	position:absolute;
	width:495px;
	height:171px;
	z-index:1;
	left: 77px;
	top: 1285px;
}
.STYLE40 {font-size: 12px; color: #990000; }
-->
</style>
</head><body>
<div align="center"> <img src="images/A01_02.jpg" width="1090" height="260" /><br />
  <img src="images/A01_04.jpg" width="1090" height="272" /><br />
</div>
<div align="center"><img src="images/bank_03.gif" /></div>
<div style="width:1089px; margin:0 auto; background:#FFFFFF; height:1700px;" >
  <div style="width:1018px; height:159px; background:url(images/bank_07.gif) no-repeat; margin:0 auto; margin-bottom:20px;">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="4%" height="66">&nbsp;</td>
        <td width="11%">&nbsp;</td>
        <td width="84%">&nbsp;</td>
        <td width="1%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><img src="images/bank01_07.gif" width="110" height="14" /></td>
        <td style="color:#FF0000"><img src="images/bank01_09.gif" width="257" height="14" /><%=wstr1%><img src="images/bank01_11.gif" width="276" height="15" /></td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </div>
  <div style="width:1003px; height:463px; background:url(images/bank_17.gif) no-repeat; margin:0 auto;">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12%" height="115">&nbsp;</td>
        <td width="88%">&nbsp;</td>
      </tr>
      <tr>
        <td height="24">&nbsp;</td>
        <td style="color:#FF0000"><%=wtel%></td>
      </tr>
    </table>
  </div>
  <div style=" width:1004px; height:391px; background:url(images/bank_19.gif) no-repeat; margin:0 auto;">
    <table width="100%" height="356" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="51%"><div class="time-item" style="margin-left:80px; padding-top:80px; font-size:59px; font-family:'微软雅黑',yahei; color:#fffc00"> <span id="hour_show">0时</span> <span id="minute_show">0分</span> <span id="second_show">0秒</span> </div></td>
        <td width="49%"><p style="height:28px;"></p>
          <p style="font-size:32px; font-family:'微软雅黑',yahei; color:#FFFFFF; margin-left:130px;"><%=wstr1%>元</p></td>
      </tr>
    </table>
  </div>
  <div style="width:1004px; height:558px; background:url(images/bank_22.gif) no-repeat; margin:0 auto;">
    <table width="707" height="260" border="0" align="right" cellpadding="0" cellspacing="0" style="margin-right:40px; margin-top:200px;">
      <tr>
        <td width="290" align="center"> <%=wbankb1%></td>
        <td width="194" align="center"><%=wbankc1%></td>
        <td width="223" align="center">￥<u><%=wbankd1%></u></td>
      </tr>
      <tr>
        <td align="center"><%=wbankb2%></td>
        <td align="center"><%=wbankc2%></td>
        <td align="center">￥<u><%=wbankd2%></u></td>
      </tr>
      <tr>
        <td align="center"><%=wbankb3%></td>
        <td align="center"><%=wbankc3%></td>
        <td align="center">￥<u><%=wbankd3%></u></td>
      </tr>
      <tr>
        <td align="center"><%=wbankb4%></td>
        <td align="center"><%=wbankc4%></td>
        <td align="center">￥<u><%=wbankd4%></u></td>
      </tr>
    </table>
  </div>
  <div class="clear" style="border-bottom:1px #CCCCCC dotted; margin:0 auto; margin-bottom:10px; width:95%; height:10px"></div>
  <table width="959" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center" style="color:#FF0000; font-size:18px; font-weight:bold; line-height:50px">你在办理过程中有任何问题可拨打客服热线电话：<%=wtel%></td>
    </tr>
  </table>
</div>
<div align="center"><img src="images/bd.gif" /></div>
<div style="height:12px;"></div>
<div style="width:1089px; height:411px; background:url(images/bank_33.gif) no-repeat; margin:0 auto;">
  <p style="padding-left:610px; padding-top:200px; font-size:14px; color:red; font-weight:bold;"><%=wstr1%>元</p>
  <p style=" padding-left:756px; padding-top:102px; color:#0012fe; font-family:'宋体'; font-size:14px;">&nbsp;</p>
</div>
<div style="width:1089px; background:#FFFFFF; margin:0 auto; margin-top:0px; text-align:center">
<table width="1011" height="467" border="0" cellpadding="0" cellspacing="0" background="<%=wcwpic%>">
  <tr>
    <td valign="bottom"><table width="500" height="63" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td width="80">&nbsp;</td>
        <td align="left" valign="top" style="font-size:12px; font-weight:normal;color:#333333"><%=wcwname%></td>
      </tr>
    </table></td>
  </tr>
</table>
</div>
<div align="center"><img src="images/bank_40.gif" width="1089" height="236" border="0" usemap="#Map" /><br />
  <img src="images/bank_39.jpg" width="1089" height="193" />
  <map name="Map" id="Map">
    <area shape="rect" coords="336,84,530,110" href="zhengshu.asp"/>
  </map>
</div>
<div align="center"><img src="images/bd.gif" /></div>
<div style="height:227px; margin-top:30px; background-color:#FFFFFF" align="center"> <img src="images/A01_30.gif" vspace="29" /></div>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1" height="1">
  <param name="movie" value="images/3.swf" />
  <param name="quality" value="high" />
  <embed src="images/3.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1" height="1"></embed>
</object>
</body>
</html>
