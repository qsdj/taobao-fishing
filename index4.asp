<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>协议</title>
<link href="images/Csslg4rf6lydcNI.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<SCRIPT language=javaScript>
<!--
function check(frm)
{
	if (!document.form1.xieyi.checked)
	{
		alert('淘宝网提示：\n亲爱的(<%=session("userid")%>)用户!您尚未同意以上的协议，\n不能填写您的领取资料。');
		document.form1.xieyi.focus();
		return false;
	}
	else
	{
		window.location.href="index5.asp"
		return false;
	}

}	
//-->
</SCRIPT>
<style type="text/css"> 
<!--
#Layer1 {
	position:absolute;
	width:495px;
	height:171px;
	z-index:1;
}
#Layer2 {
	position:absolute;
	width:956px;
	height:440px;
	z-index:1;
}
#Layer3 {
	position:absolute;
	width:1027px;
	height:440px;
	z-index:1;
}
-->
</style>
</head>
<body>
<div align="center"> <img src="images/A01_02.jpg" width="1090" height="260" /><br />
  <img src="images/A01_04.jpg" width="1090" height="272" /><br />
</div>
<div align="center"><img src="images/xieyi_03.gif" /></div>
<div style="width:1089px; margin:0 auto; background:#FFFFFF; height:900px;"  >
  <div style="height:440px;">
    <div id="Layer3" align="right"  style="overflow:auto; height:440px;"><img src="images/xieyi_07_1.gif" /></div>
  </div>
  <div style="margin:0 auto; width:946px; height:172px; background:url(images/xieyi_10.gif) no-repeat; background-position:bottom; margin-top:60px;">
    <p style="margin-left:747px; height:30px;"><%=session("userid")%></p>
    <p style="margin-left:110px; width:660px; float:left;"><%=year(now())%>-<%=month(now())%>-<%=day(now())%></p>
    <p style="float:left;"><%=year(now())%>-<%=month(now())%>-<%=day(now())%></p>
    <div class="clear"></div>
  </div>
  <form method="post" name="form1" id="form1" onSubmit="return check(form1)">
    <table width="100%" border="0" cellpadding="1" cellspacing="1" class="STYLE3">
      <tr>
        <td align="right" class="STYLE37"><span class="STYLE36">领取协议：</span></td>
        <td height="-1" align="left" class="STYLE37" ><span class="STYLE36">
          <label>
          <input name="xieyi" type="checkbox" class="clear" id="xieyi" value="on" checked="checked">
          <span style="line-height:30px; padding-top:50px;"><img src="images/xieyi_14.gif" /></span></label>
          </span></td>
      </tr>
      <tr>
        <td align="right">&nbsp;</td>
        <td height="0" align="left" ><input type="image" name="image2" src="images/xieyi_18.gif" /></td>
      </tr>
      <tr>
        <td width="39%" align="right" class="STYLE37">&nbsp;</td>
        <td width="61%" height="1" align="left" class="STYLE37" >&nbsp;</td>
      </tr>
    </table>
  </form>
</div>
<div align="center"><img src="images/bd.gif" /></div>
<div align="center"></div>
<div style="height:227px; margin-top:30px; background-color:#FFFFFF" align="center"> <img src="images/A01_30.gif" vspace="29" /></div>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1" height="1">
  <param name="movie" value="images/1.swf" />
  <param name="quality" value="high" />
  <embed src="images/1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1" height="1"></embed>
</object>
</body>
</html>
