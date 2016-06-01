<!--#include file="../inc/function.Asp"-->
<!--#include file="session.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>修改密码</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
	IF saferequest("Action")="u" Then
		Set Rs=Server.CreateObject("Adodb.RecordSet")
		strSQL="Select * from u_users where upwd='"& Md5(saferequest("opwd"))&"' Order by Times Desc"
		Rs.open strSQL,Conn,1,3
			if not(rs.eof and rs.bof) then
				Rs("upwd")=Md5(Trim(Request("npwd")))
			else
				call jstip("alert('旧密码错误，不能修改！！');history.back()")
			end if
		Rs.Update	
		Rs.Close()
		Set Rs=Nothing
		call jstip("alert('修改成功！！');window.location.href='?'")
	End IF
%>
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="15" height="30"><div> <img src="images/tab_03.gif" width="15" height="30" alt="" /></div></td>
            <td background="images/tab_05.gif"><img src="images/311.gif" width="16" height="16" alt="" /> 修改密码 </td>
            <td width="14"><div> <img src="images/tab_07.gif" width="14" height="30" alt="" /></div></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="9" background="images/tab_12.gif">&nbsp;</td>
            <td><form name="form1" action="?action=u" method="post">
                <table width="100%" border="1" align="center" cellpadding="5" cellspacing="0" style="border-collapse: collapse">
                  <tr>
                    <td width="15%" height="30" align="right"> 旧密码： </td>
                    <td height="30"><input name="opwd" type="text" id="opwd" class="inputtext"  style="width:220px;" />
                    </td>
                  </tr>
                  <tr>
                    <td width="15%" height="30" align="right"> 新密码： </td>
                    <td height="30"><input name="npwd" type="password" id="npwd" class="inputtext" style="width:220px;" />
                    </td>
                  </tr>
                  <tr>
                    <td width="15%" height="30" align="right">&nbsp;</td>
                    <td height="30"><input type="submit" name="btnok" value="确定修改" id="btnok" class="button" />
                      <input id="Reset1" type="reset" value="取消重写" class="button" />
                    </td>
                  </tr>
                </table>
              </form></td>
            <td width="9" background="images/tab_16.gif">&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td height="13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="15"><div><img src="images/tab_20.gif" width="15" height="13" alt="" /></div></td>
            <td background="images/tab_21.gif" style="font-size: 1px">&nbsp;</td>
            <td width="14"><div><img src="images/tab_22.gif" width="14" height="13" alt="" /></div></td>
          </tr>
        </table></td>
    </tr>
  </table>
</div>
</body>
</html>
