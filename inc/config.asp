<%
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
