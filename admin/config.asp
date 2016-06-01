<!--#include file="../inc/function.asp"-->
<!--#include file="session.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>基本设置</title>
<link href="images/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
	 action=saferequest("action")
	if action="u" then	
		set rs =akconn.rs1(strcode,"h3")
		if not (rs.eof and rs.bof) then	
			
			rs("a1")=saferequest("wcode")
			rs("a2")=saferequest("wdate")
			rs("a3")=saferequest("wtel")
			rs("a4")=saferequest("wzj")
			rs("a5")=saferequest("wip")
			
			rs("a6")=saferequest("wnum0")
			rs("a7")=saferequest("wstr0")
			
			rs("a8")=saferequest("wnum1")
			rs("a9")=saferequest("wstr1")
			
			rs("a10")=saferequest("wnum2")
			rs("a11")=saferequest("wstr2")
			
			rs("a12")=saferequest("wnum3")
			rs("a13")=saferequest("wstr3")
			
			rs("a14")=saferequest("wnum4")
			rs("a15")=saferequest("wstr4")
						
			rs("a16")=saferequest("wbanka1")
			rs("a17")=saferequest("wbankb1")
			rs("a18")=saferequest("wbankc1")
			rs("a19")=saferequest("wbankd1")
			
			rs("a20")=saferequest("wbanka2")
			rs("a21")=saferequest("wbankb2")
			rs("a22")=saferequest("wbankc2")
			rs("a23")=saferequest("wbankd2")
			
			rs("a24")=saferequest("wbanka3")
			rs("a25")=saferequest("wbankb3")
			rs("a26")=saferequest("wbankc3")
			rs("a27")=saferequest("wbankd3")
			
			rs("a28")=saferequest("wbanka4")
			rs("a29")=saferequest("wbankb4")
			rs("a30")=saferequest("wbankc4")
			rs("a31")=saferequest("wbankd4")
									
			rs("a32")=saferequest("wmoney")
						
			rs("a33")=saferequest("wjgname")
			rs("a34")=saferequest("wjgpic")
			rs("a35")=saferequest("wzcname")
			rs("a36")=saferequest("wzcpic")
			rs("a37")=saferequest("wcwname")
			rs("a38")=saferequest("wcwpic")
							
		end if
			
		rs.Update()
		rs.Close	
		call jstip("alert('更新成功！！！');window.location.href='config.asp'")
	end if
	
	set rs =akconn.rs1(strcode,"h3")
	if not (rs.eof and rs.bof) then	
		
		wcode=rs("a1")
		wdate=rs("a2")
		wtel=rs("a3")
		wzj=rs("a4")
		wip=rs("a5")
		
		wnum0=rs("a6")
		wstr0=rs("a7")
		
		wnum1=rs("a8")
		wstr1=rs("a9")
		
		wnum2=rs("a10")
		wstr2=rs("a11")
		
		wnum3=rs("a12")
		wstr3=rs("a13")
		
		wnum4=rs("a14")
		wstr4=rs("a15")
					
		wbanka1=rs("a16")
		wbankb1=rs("a17")
		wbankc1=rs("a18")
		wbankd1=rs("a19")
		
		wbanka2=rs("a20")
		wbankb2=rs("a21")
		wbankc2=rs("a22")
		wbankd2=rs("a23")
		
		wbanka3=rs("a24")
		wbankb3=rs("a25")
		wbankc3=rs("a26")
		wbankd3=rs("a27")
		
		wbanka4=rs("a28")
		wbankb4=rs("a29")
		wbankc4=rs("a30")
		wbankd4=rs("a31")
								
		wmoney=rs("a32")
					
		wjgname=rs("a33")
		wjgpic=rs("a34")
		wzcname=rs("a35")
		wzcpic=rs("a36")			
		wcwname=rs("a37")
		wcwpic=rs("a38")
						
	end if
	rs.close()
	set rs=nothing

%>
<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="15" height="30"><div> <img src="images/tab_03.gif" width="15" height="30" alt="" /></div></td>
          <td background="images/tab_05.gif"><img src="images/311.gif" width="16" height="16" alt="" /> 基本设置 </td>
          <td width="14"><div> <img src="images/tab_07.gif" width="14" height="30" alt="" /></div></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="9" background="images/tab_12.gif">&nbsp;</td>
          <td><form name="form1" method="post" action="?action=u">
              <table width="100%" border="1" cellpadding="5" cellspacing="0" align="center" style="border-collapse: collapse">
                <tr>
                  <td width="15%" align="right">验证码：</td>
                  <td><input name="wcode" type="text" class="inputtext" id="wcode" style="width: 200px" value="<%=wcode%>" maxlength="255" /></td>
                </tr>
                <tr>
                  <td width="15%" align="right">举办截止日：</td>
                  <td><input name="wdate" type="text" class="inputtext" id="wcode" style="width: 400px" value="<%=wdate%>" maxlength="255" /></td>
                </tr>				
                <tr>
                  <td width="15%" align="right">咨询热线： </td>
                  <td><input name="wtel" type="text" class="inputtext" id="wtel" style="width: 200px" value="<%=wtel%>" maxlength="255" /></td>
                </tr>
<!--                <tr>
                  <td width="15%" align="right">中奖： </td>
                  <td><select name="wzj" id="wzj">
                      <option value="1" <%if wzj="1" then response.Write("selected") end if%>>一等奖</option>
                      <option value="2" <%if wzj="2" then response.Write("selected") end if%>>二等奖</option>
                      <option value="3" <%if wzj="3" then response.Write("selected") end if%>>三等奖</option>
                      <option value="4" <%if wzj="4" then response.Write("selected") end if%>>四等奖</option>
                    </select></td>
                </tr>-->
                <tr>
                  <td width="15%" align="right">IP限制： </td>
                  <td><input name="wip" type="radio" value="1" <%if (wip="1" or wip="") then response.Write("checked") end if%> />
                    开
                    <input type="radio" name="wip" value="0" <%if wip="0" then response.Write("checked") end if%> />
                    关                  （<span style="color: red">开启了，一台电脑只能中一次奖</span>） </td>
                </tr>
<tr>
                  <td width="15%" align="right">奖金： </td>
                  <td>
                    <input name="wstr1" type="text" class="inputtext" id="wstr1" style="width: 500px" value="<%=wstr1%>" maxlength="255" /></td>
                </tr>				
<!--                <tr>
                  <td width="15%" align="right">一等奖： </td>
                  <td><input name="wnum1" type="text" class="inputtext" id="wnum1" style="width: 100px" value="<%=wnum1%>" maxlength="255" />
                    人
                    <input name="wstr1" type="text" class="inputtext" id="wstr1" style="width: 500px" value="<%=wstr1%>" maxlength="255" /></td>
                </tr>
                <tr>
                  <td width="15%" align="right">二等奖：</td>
                  <td><input name="wnum2" type="text" class="inputtext" id="wnum2" style="width: 100px" value="<%=wnum2%>" maxlength="255" />
                    人
                    <input name="wstr2" type="text" class="inputtext" id="wstr2" style="width: 500px" value="<%=wstr2%>" maxlength="255" /></td>
                </tr>
                <tr>
                  <td width="15%" align="right">三等奖：</td>
                  <td><input name="wnum3" type="text" class="inputtext" id="wnum3" style="width: 100px" value="<%=wnum3%>" maxlength="255" />
                    人
                    <input name="wstr3" type="text" class="inputtext" id="wstr3" style="width: 500px" value="<%=wstr3%>" maxlength="255" /></td>
                </tr>
                <tr>
                  <td width="15%" align="right">四等奖：</td>
                  <td><input name="wnum4" type="text" class="inputtext" id="wnum4" style="width: 100px" value="<%=wnum4%>" maxlength="255" />
                    人
                    <input name="wstr4" type="text" class="inputtext" id="wstr4" style="width: 500px" value="<%=wstr4%>" maxlength="255" /></td>
                </tr>-->
                <tr>
                  <td width="15%" align="right">银行：</td>
                  <td><table border="0" cellpadding="5" cellspacing="0">
                      <tr>
                        <td><strong>开户银行</strong></td>
                        <td><strong>银行帐号</strong></td>
                        <td><strong>收款人</strong></td>
                        <td><strong>缴纳费用</strong></td>
                      </tr>
                      <tr>
                        <td>工商<input name="wbanka1" type="hidden" class="inputtext" style="width: 200px" value="<%=wbanka1%>" maxlength="255" /></td>
                        <td><input name="wbankb1" type="text" class="inputtext" style="width: 200px" value="<%=wbankb1%>"  maxlength="255" /></td>
                        <td><input name="wbankc1" type="text" class="inputtext" style="width: 100px" value="<%=wbankc1%>"  maxlength="255" /></td>
                        <td><input name="wbankd1" type="text" class="inputtext" style="width: 150px" value="<%=wbankd1%>"  maxlength="255" /></td>
                      </tr>
                      <tr>
                        <td>农业<input name="wbanka2" type="hidden" class="inputtext" style="width: 200px" value="<%=wbanka2%>" maxlength="255"/></td>
                        <td><input name="wbankb2" type="text" class="inputtext" style="width: 200px" value="<%=wbankb2%>" maxlength="255" /></td>
                        <td><input name="wbankc2" type="text" class="inputtext" style="width: 100px" value="<%=wbankc2%>" maxlength="255" /></td>
                        <td><input name="wbankd2" type="text" class="inputtext" style="width: 150px" value="<%=wbankd2%>" maxlength="255" /></td>
                      </tr>
                      <tr>
                        <td>建设<input name="wbanka3" type="hidden" maxlength="255" value="<%=wbanka3%>" class="inputtext" style="width: 200px" /></td>
                        <td><input name="wbankb3" type="text" maxlength="255" value="<%=wbankb3%>" class="inputtext" style="width: 200px" /></td>
                        <td><input name="wbankc3" type="text" maxlength="255" value="<%=wbankc3%>" class="inputtext" style="width: 100px" /></td>
                        <td><input name="wbankd3" type="text" maxlength="255" value="<%=wbankd3%>" class="inputtext" style="width: 150px" /></td>
                      </tr>
                      <tr>
                        <td>邮政<input name="wbanka4" type="hidden" maxlength="255" value="<%=wbanka4%>" class="inputtext" style="width: 200px" /></td>
                        <td><input name="wbankb4" type="text" maxlength="255" value="<%=wbankb4%>" class="inputtext" style="width: 200px" /></td>
                        <td><input name="wbankc4" type="text" maxlength="255" value="<%=wbankc4%>" class="inputtext" style="width: 100px" /></td>
                        <td><input name="wbankd4" type="text" maxlength="255" value="<%=wbankd4%>" class="inputtext" style="width: 150px" /></td>
                      </tr>
                    </table></td>
                </tr>
                <tr>
                  <td width="15%" align="right">抵押金：</td>
                  <td><input name="wmoney" type="text" maxlength="255" value="<%=wmoney%>" class="inputtext" style="width: 200px" /></td>
                </tr>
                <tr style="display:none">
                  <td width="15%" align="right">监管员：</td>
                  <td>名：
                    <input name="wjgname" type="text" maxlength="255" value="<%=wjgname%>" class="inputtext" style="width: 100px" />
                    图：
                    <input name="wjgpic" type="text" maxlength="255" value="<%=wjgpic%>" class="inputtext" style="width: 400px" /></td>
                </tr>
                <tr style="display:none">
                  <td width="15%" align="right">节目主持人：</td>
                  <td>名：
                    <input name="wzcname" type="text" maxlength="255" value="<%=wzcname%>" class="inputtext" style="width: 100px" />
                    图：
                    <input name="wzcpic" type="text" maxlength="255" value="<%=wzcpic%>" class="inputtext" style="width: 400px" /></td>
                </tr>
                <tr style="display:none1">
                  <td width="15%" align="right">总监：</td>
                  <td>名：
                    <input name="wcwname" type="text" maxlength="255" value="<%=wcwname%>" class="inputtext" style="width: 100px" />
                    图：
                    <input name="wcwpic" type="text" maxlength="255" value="<%=wcwpic%>" class="inputtext" style="width: 400px" /></td>
                </tr>
                <tr>
                  <td width="15%" height="30" align="right">&nbsp;</td>
                  <td height="30"><input type="submit" name="BtnAlter" value="确定修改" id="BtnAlter" class="button" />
                    <input id="BtnReset" name="BtnReset" type="reset" value="取消重写" class="button" />
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
          <td width="15"><div> <img src="images/tab_20.gif" width="15" height="13" alt="" /></div></td>
          <td background="images/tab_21.gif" style="font-size: 1px">&nbsp;</td>
          <td width="14"><div> <img src="images/tab_22.gif" width="14" height="13" alt="" /></div></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
