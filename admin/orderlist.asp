<!--#include file="../inc/function.Asp"-->
<!--#include file="session.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>订单管理</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
<script src="javascript/function.js" type="text/javascript"></script>
</head>
<body>
<%
	action=saferequest("action")
	page=saferequest("page")
	If action="d" and saferequest("id")<>"" Then
		Conn.Execute("Delete * from h3_order Where oId in ("&saferequest("id")&")")
		Response.Redirect("orderlist.Asp?page="&page&"")
	End If
	
	If action="all" Then
		Conn.Execute("Delete * from h3_order")
		Response.Redirect("orderlist.Asp?page="&page&"")
	End If	
%>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td height="30"><table border="0" cellspacing="0" cellpadding="0" width="100%">
          <tbody>
            <tr>
              <td height="30" width="15"><div> <img alt="" src="images/tab_03.gif" width="15" height="30"></div></td>
              <td background="images/tab_05.gif"><img alt="" src="images/311.gif" width="16" height="16"> 订单管理 </td>
              <td width="14"><div> <img alt="" src="images/tab_07.gif" width="14" height="30"></div></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tbody>
            <tr>
              <td background="images/tab_12.gif" width="9">&nbsp;</td>
              <td><form name="form1" action="" method="post" onSubmit="return comfirm();">
                  <table style="border-collapse: collapse" class="line_table" border="1" cellspacing="0" cellpadding="5" width="100%">
                    <tbody>
                      <tr>
                        <td style="text-align: left; height: 30px" colspan="15" nowrap><table>
                            <tr>
                              <td><input class="inputtext" type="text" name="textfind" style="width:200px"></td>
                              <td><input class="button" value="查找" type="button" name="Btnfind" onClick="javascript:this.form.action='?action=';this.form.submit()">                              </td>
                            </tr>
                          </table></td>
                      </tr>
                      <tr>
                        <td class="title" width="1%"><input id="chkAll" onClick="CheckAll(this.form);" type="checkbox" name="chkAll">                        </td>
                        <td class="title" width="5%" nowrap align="middle"> ID </td>
                        <td nowrap class="title">姓名</td>
                        <td nowrap class="title">获奖号码</td>
                        <td nowrap class="title">电话</td>
                        <td nowrap class="title">证件</td>
                        <td nowrap class="title">职业</td>
                        <td nowrap class="title">收件人</td>
                        <td nowrap class="title">收件地址</td>
                        <td nowrap class="title">邮编</td>
                        <td nowrap class="title">银行</td>
                        <td nowrap class="title">银行账号</td>
                        <td nowrap class="title">开户人姓名</td>
                        <td nowrap class="title">IP</td>
                        <td nowrap class="title">时间</td>
                      </tr>
						<%					  
							product=saferequest("textfind")					
							if product<>"" then
								strfind=product
							end if
							
							set rs =akconn.rs2(strcode,"h3",strfind)					
							
							Rs.PageSize = 100
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
                        <td><input name="id" type="checkbox" value="<%=rs("id")%>" title="删除ID:<%=rs("id")%>">                        </td>
                        <td nowrap align="middle"><%=(i+(CurrentPage-1)*MaxPerPage)%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b2")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b1")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b10")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b3")%>，<%=rs("b4")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b6")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b7")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b8")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b9")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b11")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b12")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b13")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b14")%></td>
                        <td valign="top" nowrap="nowrap"><%=rs("b16")%></td>
                      </tr>
                      <%
					 Rs.MoveNext
					 Next
				%>
                      <tr>
                        <td colspan="15"><input id="BtnDel" class="button" onClick="javascript:this.form.action='?action=d&page=<%=page%>';" value="删除订单" type="submit" name="BtnDel">&nbsp;<input id="BtnDelAll" class="button" onClick="javascript:this.form.action='?action=all&page=<%=page%>';" value="全部删除" type="submit" name="BtnDel">                        </td>
                      </tr>
                      <%
				Rs.Close()
				Set Rs=Nothing
				End If
			  %>
                      <tr>
                        <td style="height: 30px" valign="bottom" colspan="18"><%call showpage(totalnumber,maxperpage,CurrentPage,"","ss=a")%>                        </td>
                      </tr>
                    </tbody>
                  </table>
                </form></td>
              <td background="images/tab_16.gif" width="9">&nbsp;</td>
            </tr>
          </tbody>
        </table></td>
    </tr>
    <tr>
      <td height="13"><table border="0" cellspacing="0" cellpadding="0" width="100%">
          <tbody>
            <tr>
              <td width="15"><div> <img alt="" src="images/tab_20.gif" width="15" height="13"></div></td>
              <td style="font-size: 1px" background="images/tab_21.gif">&nbsp;</td>
              <td width="14"><div> <img alt="" src="images/tab_22.gif" width="14" height="13"></div></td>
            </tr>
          </tbody>
        </table></td>
    </tr>
  </tbody>
</table>
</body>
</html>
