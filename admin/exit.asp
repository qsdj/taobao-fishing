<%
	session("uname")=""
	response.Write("<script language='javascript'>")
	response.Write("if (top.location !== self.location) {")
	response.Write("top.location=self.location;")
	response.Write("}")
	response.Write("</script>")
	response.Write("<script language='javascript'>window.location.href='login.asp'</script>")		
	response.End()	
%>