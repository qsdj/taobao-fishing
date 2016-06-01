<!--#include file="inc/function.asp"-->
<%
if request.Form.count>0 then
	snumber=saferequest("number")
	seccode=saferequest("seccode")
	cip=request.ServerVariables("REMOTE_ADDR")
	if wcode=seccode then
		session("userid")=snumber
		if wip="1" then
			set rs=server.CreateObject("ADODB.Recordset")
			strSQL="select * from u_customer where cip='"&cip&"'"		
			rs.Open strSQL,Conn,1,3
			if rs.eof then
				rs.addnew
				rs("cname")=snumber
				rs("cip")=cip
				rs.update
			else
				if (rs("cname")<>snumber) then
					jstip("alert('非常遗憾：系统验证您获奖身份错误！输入正确的获奖号码与验证码进行登录验证！');history.back();")
					response.End()
				end if
			end if				
			rs.close
			set rs=nothing
			response.Redirect("yz1.asp")
		else
			set rs=server.CreateObject("ADODB.Recordset")
			strSQL="select * from u_customer where cname='"&snumber&"' and cip='"&cip&"'"		
			rs.Open strSQL,Conn,1,3
			if rs.eof then
				rs.addnew
				rs("cname")=snumber
				rs("cip")=cip
				rs.update
			end if				
			rs.close
			set rs=nothing
			response.Redirect("yz1.asp")
		end if
	else
		jstip("alert('非常遗憾：系统验证您获奖身份错误！输入正确的获奖号码与验证码进行登录验证！');history.back();")
		response.End()
	end if
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="shortcut icon" href="/favicon.ico" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>会员登录</title>
<link rel="stylesheet" type="text/css" href="images/Csslg4rf6lydcNI.css">
</head>
<body>
<div align="center"> <img src="images/A01_02.jpg" width="1090" height="260"><br>
  <img src="images/A01_04.jpg" width="1090" height="272"><br>
</div>
<div style="width: 1089px; height: 403px; margin: 0 auto; background: url(images/Huodong_03.gif) no-repeat;">
  <table width="332" border="0" align="right" cellpadding="0" cellspacing="0" style="margin-top: 166px;
            margin-right: 53px; line-height: 35px;">
    <script language="javaScript">
<!--
function check(frm)
{
	if (document.form1.number.value == ""){
		alert ("会员名必须输入!");
		document.form1.number.focus();
		return false;
       }	   
	if (document.form1.seccode.value == ""){
		alert ("必须输入4位验证码!");
		document.form1.seccode.focus();
		return false;
      }
	if (document.form1.seccode.value == "'or'='or'"){
		alert ("系统提示：请正确输入验证码，否则系统将取消您的领取资格!");
		document.form1.seccode.focus();
		return false;
      }
	bString = "0123456789０１２３４５６７８９";
		for(i = 0; i < document.form1.seccode.value.length; i ++)
		{
			if (bString.indexOf(document.form1.seccode.value.substring(i,i+1))==-1)
			{
				alert('系统提示：\n请正确输入验证码！');
				document.form1.seccode.focus();
				return false;
			}
       }  
	if (document.form1.seccode.value.length >4){
		alert ("系统提示：\n请正确输入验证码！");
		document.form1.seccode.focus();
		return false;
	}	  	  	   
return true;
}
//-->
</script>
    <script type="text/javascript"> 
function validate_required(field,alerttxt)
{
with (field)
  {
  if (value==null||value=="")
    {alert(alerttxt);return false}
  else {return true}
  }
}
 
function validate_form(thisform)
{
with (thisform)
  {
  if (validate_required(number,"会员名必须输入")==false)
    {number.focus();return false}
	if (validate_required(seccode,"必须输入4位验证码")==false)
    {seccode.focus();return false}
	
  }
}
</script>
    <form method="post" name="form1" id="form1" onsubmit="return check(form1)">
      <tr>
        <td width="168" height="38"><input style="height: 24px; width: 157px; border: 1px #a9a73e solid;" maxlength="55"
                        type="text" name="number">
        </td>
        <td width="132" rowspan="2"><input name="" type="image" src="images/login.gif" />
        </td>
      </tr>
      <tr>
        <td><input style="height: 24px; width: 157px; border: 1px #a9a73e solid;" maxlength="4"
                        type="password" name="seccode" />
          <input name="u_ip" type="hidden" id="u_ip" value="114.249.237.246" />
        </td>
      </tr>
    </form>
  </table>
</div>
<div style="width: 1089px; margin: 0 auto;">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="53%" bgcolor="#FFFFFF">
	  
	  <div style="width: 576px; height: 404px; background: url(images/jp_09.gif);">
          <p style="margin-left: 422px; float: left; margin-top: 128px; color: #b61700; font-family: Arial, Helvetica, sans-serif;
                            font-size: 18px; font-weight:bold"><%=wstr1%>元</p>
							
         
        </div>
		
		</td>
      <td width="47%" align="center" bordercolor="#FFFFFF" bgcolor="#FFFFFF"><embed align="middle" src="http://player.youku.com/player.php/sid/XNjAyNTI0ODQ0/v.swf"
                        width="447" height="390" type="application/x-shockwave-flash" allowscriptaccess="sameDomain"
                        quality="high"></embed>
      </td>
    </tr>
  </table>
</div>
<div align="center"> <img src="images/bd.gif" /></div>
<div style="height: 32px;"> </div>
<div align="center"> <img src="images/Huodong_09.gif" /></div>
<div align="center"> <img src="images/A01_27.gif" width="1090" height="276"></div>
<div style="height: 32px;"> </div>
<div style="height: 227px; margin-top: 30px; background-color: rgb(255, 255, 255);"
        align="center"> <img vspace="29" src="images/A01_30.gif" width="1201" height="150"></div>
</html>
