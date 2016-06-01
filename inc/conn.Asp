<!--#include file="Md5.asp"-->
<%
	Response.Addheader "Content-Type","text/html; charset=gb2312"
	
	Response.addHeader "P3P","CP=CAO PSA OUR"
		
	strcode="5ayaGbDaLaCaYaHcadRb3albibTaCaRaXafdMdSawbqbsb7a"
	
	Set akconn = Server.CreateObject("ss.clslib")
	
	set conn =akconn.conn1(strcode)	
%>
<!--#include file="config.asp"-->