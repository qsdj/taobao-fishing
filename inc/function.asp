<!--#include file="conn.asp" -->
<%
function HTMLEncode(fString) 

	fString = replace(fString, ">", ">") 
	fString = replace(fString, "<", "<") 
	fString = Replace(fString, CHR(32), " ") 
	fString = Replace(fString, CHR(13), "") 
	fString = Replace(fString, CHR(10) & CHR(10), "</P><P>") 
	fString = Replace(fString, CHR(10), "<BR>") 
	HTMLEncode = fString

end function

Function saferequest(ParaName) 
	Dim ParaValue 
	ParaValue=trim(Request(ParaName))
	if IsNumeric(ParaValue)  then
	saferequest=ParaValue
exit Function
else
	ParaValuetemp=lcase(ParaValue)
	tempvalue="select|insert|delete|<script|applet|object|'|drop|update|truncate|create|xp_cmdshell|exec|alter|rename|modify"
	temps=split(tempvalue,"|")
	for mycount=0 to ubound(temps)
	if  Instr(ParaValuetemp,temps(mycount)) > 0   and lcase(ParaName)<>"module" then
			Response.Write("<script type='text/javascript'>alert('您提交的内容包含了字符["&temps(mycount)&"],请去除后重新提交或联系我们');history.back()</script>")
			response.end
	end if
next
	saferequest=ParaValue
end if
End function


function jstip(strjs)
	Response.Write("<script type=""text/javascript"">"+strjs+"</script>")
end function

Function showpage(totalnumber,maxperpage,CurrentPage,filename,keyword) 
dim n 
if totalnumber mod maxperpage=0 then 
	n= totalnumber \ maxperpage 
else 
	n= totalnumber \ maxperpage+1 
end if

response.write "<table cellspacing=1 width='100%' border=0 colspan='4'><form method=Post action="""&filename&"?keyword="& keyword &"""><tr><td align=right> " 

if CurrentPage<2 then 
	response.write "共有：<font color=red>"&totalnumber&"</font> 条 首页 上一页 " 
else 
	response.write "共有：<font color=red>"&totalnumber&"</font> 条 <a href="&filename&"?page=1&keyword="& keyword &">首页</a> " 
	response.write "<a href="&filename&"?page="&CurrentPage-1&"&keyword="& keyword &">上一页</a> " 
end if
 
if n-currentpage<1 then 
	response.write "下一页 最后页" 
else 
	response.write "<a href="&filename&"?page="&(CurrentPage+1)&"&keyword="& keyword &">" 
	response.write "下一页</a> <a href="&filename&"?page="&n&"&keyword="& keyword &">最后页</a>" 
end if 

response.write " 页次<strong><font color=red>"&CurrentPage&"</font>/"&n&"</strong>页" 
response.write " <b>"&maxperpage&"</b>条/页 " 

response.Write("转到:")
response.Write("<select name='page' size='1' style='font-size: 9pt' onChange='javascript:submit()'>")

for i = 1 to n
	response.Write("<option value="&i&"  ")
	if CurrentPage=cint(i) then
		response.write "selected" 
	end if
	response.Write(">第"&i&"页</option>") 
next 
response.Write("</select>")
response.write "</td></tr></form></table>" 
End Function 

'''''''''''''''''''''''''''
Function cutstr(Str,StrLen)
	if isnumeric(Strlen)=false then
		StrLen=len(Str)
	end if
	
	if len(Str)>StrLen then
		response.Write left(Str,StrLen)&"..."
	else
		response.Write Str	
	end if
End Function

'添加
function insert(strform,strtable)
	stra=split(strform,"&")
	set rs=server.createObject("adodb.recordset")
	sql="select * from "&strtable&""
	rs.open sql ,conn,1,3	
	rs.addnew						
		for i=0 to ubound(strA)-1
			strb=split(stra(i),"=")
			response.Write strb(0)&","
			rs(""&strb(0)&"")=trim(saferequest(""&strb(0)&""))
		next 
	rs.update()
	rs.close
	set rs=nothing		
end function

'修改
function data(strform,strtable,strwhere)
	stra=split(strform,"&")
	set rs=server.createObject("adodb.recordset")
	sql="select * from "&strtable&" where "&strwhere&""
	rs.open sql ,conn,1,3	
		for i=0 to ubound(strA)-1
			strb=split(stra(i),"=")
			'response.Write strb(0)&","
			rs(""&strb(0)&"")=trim(saferequest(""&strb(0)&""))
		next 
	rs.update()
	rs.close
	set rs=nothing		
end function

function list(id)
	Set Rs=Server.CreateObject("Adodb.RecordSet")
	Sql="Select Content from u_list where id="&id&""
	Rs.open Sql,Conn,1,3	
		If Not(Rs.Eof And Rs.Eof) then	
			list=Rs("Content")
		End If
	Rs.Close()
	Set Rs=Nothing
end function

function title(id)
	Set Rs=Server.CreateObject("Adodb.RecordSet")
	Sql="Select title from u_list where id="&id&""
	Rs.open Sql,Conn,1,3	
		If Not(Rs.Eof And Rs.Eof) then	
			title=Rs("title")
		End If
	Rs.Close()
	Set Rs=Nothing
end function

'获取单个字段值
function getone(sql)
	set rsty=server.createObject("adodb.recordset")	
	rsty.open sql,conn,1,3
	if not(rsty.bof and rsty.eof) then
		getone=rsty(0)
	else
		getone=""
	end if	
	rsty.Close()
	set rsty=Nothing
end function

function getnews(id)
	set rsnews=server.createObject("adodb.recordset")
	sqlty="select ntype from u_ntype where id="& id &" and nvalid=1"	
	rsnews.open sqlty,conn,1,3
	if not(rsnews.bof and rsnews.eof) then
		getnews=rsnews(0)
	else
		getnews="无"
	end if	
	rsnews.Close()
	set rsnews=Nothing
end function

function getpro(id)
	set rspro=server.createObject("adodb.recordset")
	sqlty="select classname from u_ptype where id="& id &""	
	rspro.open sqlty,conn,1,3
	if not(rspro.bof and rspro.eof) then
		getpro=rspro(0)
	else
		getpro="无"
	end if	
	rspro.Close()
	set rspro=Nothing
end function



Function dhtml( strText )
	Dim TAGLIST
	TAGLIST = ";!--;!DOCTYPE;A;ACRONYM;ADDRESS;APPLET;AREA;B;BASE;BASEFONT;" &_
	"BGSOUND;BIG;BLOCKQUOTE;BODY;BR;BUTTON;CAPTION;CENTER;CITE;CODE;IMG;" &_
	"COL;COLGROUP;COMMENT;DD;DEL;DFN;DIR;DIV;DL;DT;EM;EMBED;FIELDSET;" &_
	"FONT;FORM;FRAME;FRAMESET;HEAD;H1;H2;H3;H4;H5;H6;HR;HTML;I;IFRAME;" &_
	"INPUT;INS;ISINDEX;KBD;LABEL;LAYER;LAGEND;LI;LINK;LISTING;MAP;MARQUEE;" &_
	"MENU;META;NOBR;NOFRAMES;NOSCRIPT;OBJECT;OL;OPTION;P;PARAM;PLAINTEXT;" &_
	"PRE;Q;S;SAMP;SCRIPT;SELECT;SMALL;SPAN;STRIKE;STRONG;STYLE;SUB;SUP;" &_
	"TABLE;TBODY;TD;TEXTAREA;TFOOT;TH;THEAD;TITLE;TR;TT;U;UL;VAR;WBR;XMP;"
	
	Const BLOCKTAGLIST = ";APPLET;EMBED;FRAMESET;HEAD;NOFRAMES;NOSCRIPT;OBJECT;SCRIPT;STYLE;"
	
	Dim nPos1
	Dim nPos2
	Dim nPos3
	Dim strResult
	Dim strTagName
	Dim bRemove
	Dim bSearchForBlock
	
	nPos1 = InStr(strText, "<")
	Do While nPos1 > 0
	nPos2 = InStr(nPos1 + 1, strText, ">")
	If nPos2 > 0 Then
	strTagName = Mid(strText, nPos1 + 1, nPos2 - nPos1 - 1)
	strTagName = Replace(Replace(strTagName, vbCr, " "), vbLf, " ")
	
	nPos3 = InStr(strTagName, " ")
	If nPos3 > 0 Then
	strTagName = Left(strTagName, nPos3 - 1)
	End If
	
	If Left(strTagName, 1) = "/" Then
	strTagName = Mid(strTagName, 2)
	bSearchForBlock = False
	Else
	bSearchForBlock = True
	End If
	
	If InStr(1, TAGLIST, ";" & strTagName & ";", vbTextCompare) > 0 Then
	bRemove = True
	If bSearchForBlock Then
	If InStr(1, BLOCKTAGLIST, ";" & strTagName & ";", vbTextCompare) > 0 Then
	nPos2 = Len(strText)
	nPos3 = InStr(nPos1 + 1, strText, "</" & strTagName, vbTextCompare)
	If nPos3 > 0 Then
	nPos3 = InStr(nPos3 + 1, strText, ">")
	End If
	
	If nPos3 > 0 Then
	nPos2 = nPos3
	End If
	End If
	End If
	Else
	bRemove = False
	End If
	
	If bRemove Then
	strResult = strResult & Left(strText, nPos1 - 1)
	strText = Mid(strText, nPos2 + 1)
	Else
	strResult = strResult & Left(strText, nPos1)
	strText = Mid(strText, nPos1 + 1)
	End If
	Else
	strResult = strResult & strText
	strText = ""
	End If
	
	nPos1 = InStr(strText, "<")
	Loop
	strResult = strResult & strText
	strResult=replace(strResult,"&nbsp;","")
	dhtml = strResult
End Function
%>