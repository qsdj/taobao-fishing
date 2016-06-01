<!--#include file="session.asp"-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE></TITLE>
<META content="text/html; charset=gb2312" http-equiv=Content-Type>
<LINK 
rel=stylesheet type=text/css href="images/base.css">
<SCRIPT language=javascript>
var preFrameW = '206,*';
var FrameHide = 0;
var curStyle = 1;
var totalItem = 9;
function ChangeMenu(way){
var addwidth = 10;
var fcol = top.document.all.btFrame.cols;
if(way==1) addwidth = 10;
else if(way==-1) addwidth = -10;
else if(way==0){
if(FrameHide == 0){
preFrameW = top.document.all.btFrame.cols;
top.document.all.btFrame.cols = '0,*';
FrameHide = 1;
return;
}else{
top.document.all.btFrame.cols = preFrameW;
FrameHide = 0;
return;
}
}
fcols = fcol.split(',');
fcols[0] = parseInt(fcols[0]) + addwidth;
top.document.all.btFrame.cols = fcols[0]+',*';
}
</SCRIPT>
<STYLE type=text/css>
BODY {
	PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px
}
</STYLE>
<META name=GENERATOR content="MSHTML 8.00.6001.19412">
</HEAD>
<BODY bgColor=#ffffff>
<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" 
background=images/topbg.gif>
  <TBODY>
    <TR>
      <TD height=30 width="20%"><IMG src="images/logo.gif" width=181 
      height=30></TD>
      <TD>&nbsp;</TD>
      <TD vAlign=bottom noWrap align=right><TABLE border=0 cellSpacing=0 cellPadding=0 width=750>
          <TBODY>
            <TR>
              <TD style="LINE-HEIGHT: 26px; PADDING-RIGHT: 10px" height=26 
          align=right><A href="javascript:ChangeMenu(-1);"><IMG border=0 
            vspace=5 align=absMiddle src="images/arrl.gif" width=5 
            height=8></A>
                </DD>
                <A href="javascript:ChangeMenu(0);"><IMG border=0 
            vspace=3 align=absMiddle src="images/arrfc.gif" width=12 
            height=12></A><A href="javascript:ChangeMenu(1);"><IMG border=0 
            vspace=5 align=absMiddle src="images/arrr.gif" width=5 
            height=8></A> 您好：<SPAN class=username><%=session("uname")%></SPAN>，欢迎使用后台管理系统！ [<A 
            href="../index.asp" target=_blank>网站主页</A>] 
                [<A href="alterpwd.asp" 
            target=main>修改密码</A>] [<A 
            href="exit.asp" 
            target=main>注销退出</A>]&nbsp; </TD>
            </TR>
          </TBODY>
        </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>
</BODY>
</HTML>
