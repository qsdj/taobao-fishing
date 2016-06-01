<!--#include file="../inc/function.Asp"-->
<!--#include file="session.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>登陆日志</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<script src="javascript/function.js" type="text/javascript"></script>
</head>
<body>
<%
	action=saferequest("action")
	page=saferequest("page")
	If action="d" and saferequest("Id")<>"" Then		
		Conn.Execute("Delete * from u_login Where Id in ("&saferequest("Id")&")")
		Response.Redirect("log.Asp?page="&page&"")
	End If	
%>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="15" height="30"><div> <img src="images/tab_03.gif" width="15" height="30" alt="" /></div></td>
          <td background="images/tab_05.gif"><img src="images/311.gif" width="16" height="16" alt="" /> 登陆日志 </td>
          <td width="14"><div> <img src="images/tab_07.gif" width="14" height="30" alt="" /></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="9" background="images/tab_12.gif">&nbsp;</td>
          <td><form name="form1" action="" method="post" onSubmit="return comfirm();">
              <table width="100%" border="1" cellpadding="5" cellspacing="0" class="line_table"
                                    style="border-collapse: collapse">
                <tr>
                  <td style="height: 30px; text-align: left" colspan="5" nowrap="nowrap"><input name="textfind" type="text" class="inputtext" />
                    <input class="button" value="查找" type="button" name="Btnfind" onClick="javascript:this.form.action='?action=';this.form.submit()">
                  </td>
                </tr>
                <tr>
                  <td width="1%" class="title"><span style="padding: 0px;
                                                margin: 0px; border: none">
                    <input id="chkAll" type="checkbox" name="chkAll" onclick="CheckAll(this.form);" />
                    </span> </td>
                  <td class="title" nowrap="nowrap" width="5%" align="center"> ID </td>
                  <td class="title" width="70%" nowrap="nowrap"> 描述 </td>
                  <td class="title" nowrap="nowrap"> 登陆时间 </td>
                </tr>
                <%					  
					strfind=saferequest("textfind")					
					if strfind<>"" then
						strsearfind=" and IP like '%"&strfind&"%' or username like '%"+strfind+"%'"
					end if
					
					Set Rs=Server.CreateObject("Adodb.RecordSet")
					Sql="Select * from u_login where 1=1 "&strsearfind&" Order by Times Desc"	
					Rs.PageSize = 13
					Rs.Open sql,conn,1,1
					TotalNumber=Rs.RecordCount
					MaxPerPage=Rs.PageSize
					if totalnumber>0 then
						if not isempty(request("page")) and request("page")<>"" then 
							CurrentPage=Cint(request("page")) 
						else 
							CurrentPage=1 
						end if
						rs.AbsolutePage=CurrentPage
						for i=1 to rs.PageSize	
						if Rs.Eof or rs.Bof then exit for
					%>
                <tr>
                  <td valign="top"><input name="Id" type="checkbox" value="<%=rs("Id")%>" title="删除ID:<%=rs("Id")%>">
                  </td>
                  <td nowrap="nowrap" align="center"><%=rs("id")%></td>
                  <td valign="top"><%=rs("IP")%> <%=rs("username")%> </td>
                  <td valign="top"><%=rs("times")%> </td>
                </tr>
                <%
					 Rs.MoveNext
					 Next
				%>
                <tr>
                  <td colspan="5"><input id="BtnDel" class="button" onClick="javascript:this.form.action='?action=d&page=<%=page%>';" value="删除日志" type="submit" name="BtnDel">
                  </td>
                </tr>
                <tr>
                  <td style="height: 30px;" valign="bottom" colspan="8"><%call showpage(totalnumber,maxperpage,CurrentPage,"","ss=a")%>
                  </td>
                </tr>
                <%
				Rs.Close()
				Set Rs=Nothing
				End If
			  %>
              </table>
            </form></td>
          <td width="9" background="images/tab_16.gif">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="15"><div> <img src="images/tab_20.gif" width="15" height="13" alt="" /></div></td>
          <td background="images/tab_21.gif" style="font-size: 1px">&nbsp;</td>
          <td width="14"><div> <img src="images/tab_22.gif" width="14" height="13" alt="" /></div></td>
        </tr>
      </table></td>
  </tr>
  <% set rs=nothing

%>
</table>
</body>
</html>
