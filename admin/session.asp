<%
	if session("uname")="" then
		response.Write("<script language='javascript'>")
		response.Write("if (top.location !== self.location) {")
		response.Write("top.location=self.location;")
		response.Write("}")
		response.Write("else{")
		response.Write("alert('µÇÂ¼³¬Ê±£¬ÇëÖØÐÂµÇÂ¼£¡');window.location.href='login.asp'")
		response.Write("}")
		response.Write("</script>")		
		response.end()	
	end if
%>
