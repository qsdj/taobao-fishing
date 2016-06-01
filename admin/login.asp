<!--#include file="../inc/function.Asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>网站后台管理系统</title>
<script type="text/javascript">
function check()
{
	if(document.form1.UserName.value=="")
	{
		alert('用户名不能为空');
		return false;
	}
	if(document.form1.Password.value=="")
	{
		alert('密码不能为空');
		return false;
	}
	if(document.form1.CheckCode.value=="")
	{
		alert('验证码不能为空');
		return false;
	}
}
</script>
<script language="javascript" src="javascript/jquery.js"></script>
<script language="javascript">
	$(document).ready(function(){
		document.form1.UserName.focus();
	});
</script>
<style type="text/css">
<!--
*{overflow:hidden; font-size:9pt;}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(images/bg.gif);
	background-repeat: repeat-x;
}
-->
</style>
</head>
<%
	action=safeRequest("action")
	uname=safeRequest("UserName")
	upwd=md5(safeRequest("Password"))
	if action="c" then
		If Cstr(Session("SafeCode"))<>Cstr(safeRequest("CheckCode")) Then
			call jstip("alert('验证码错误！');window.history.back(-1)")
			response.End()
		end if	
		
		Set rs=server.CreateObject("adodb.recordset")
		strSQL="select * from u_users where uname='"&uname&"' and upwd='"&upwd&"'"	
		rs.open strSQL,conn,1,3
		if not (rs.bof and rs.eof) then
			if ucase(upwd)<>ucase(rs("upwd")) then
				call jstip("alert('密码错误！');window.history.back(-1)")
				response.End()
			else
				session("uname")=rs("uname")
				response.Redirect("index.asp")
			end if
		else
				call jstip("alert('用户名错误！');window.history.back(-1)")
				response.End()
		end if
		
		rs.close
		set rs=nothing
	end if 
%>
<body>
<form name="form1" method="post" action="?action=c" onSubmit="return check()" >
  <table width="100%"  height="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="561" style="background:url(images/lbg.gif)"><table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="238" style="background:url(images/login01.jpg)">&nbsp;</td>
                </tr>
                <tr>
                  <td height="190"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="208" height="210" style="background:url(images/login02.jpg)">&nbsp;</td>
                        <td width="518" style="background:url(images/login03.jpg)"><table width="320" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="40" height="50"><img src="images/user.gif" width="30" height="30"></td>
                              <td width="38" height="50">用户</td>
                              <td width="242" height="50"><input type="text" name="UserName" id="username" style="width:164px; height:32px; line-height:34px; background:url(images/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; "></td>
                            </tr>
                            <tr>
                              <td height="50"><img src="images/password.gif" width="28" height="32"></td>
                              <td height="50">密码</td>
                              <td height="50"><input type="password"  name="Password" id="textfield2" style="width:164px; height:32px; line-height:34px; background:url(images/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; "></td>
                            </tr>
                            <tr>
                              <td height="50"><img src="images/password.gif" width="28" height="32"></td>
                              <td height="50">验证码</td>
                              <td height="50"><div align="left">
                                <input type="text" name="CheckCode" maxlength="4" style="width:100px; height:32px; line-height:34px; background:url(images/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; ">
                                <img src="verifypic.asp" alt="看不清楚?请点击刷新" align="absmiddle" style='border: 1px solid #ffffff;cursor:pointer; padding-top:8px;' onClick="this.src=this.src+'?'+Math.random();"> </div></td>
                            </tr>
                            <tr>
                              <td height="40">&nbsp;</td>
                              <td height="40">&nbsp;</td>
                              <td height="60"><input type="image" src="images/login.gif" /></td>
                            </tr>
                          </table></td>
                        <td width="214" style="background:url(images/login04.jpg)" >&nbsp;</td>
                      </tr>
                    </table></td>
                </tr>
                <tr>
                  <td height="133" style="background:url(images/login05.jpg)">&nbsp;</td>
                </tr>
              </table></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>
