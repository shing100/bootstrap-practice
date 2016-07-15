<%@ page contentType="text/html;charset=EUC-KR"%>
<% 
request.setCharacterEncoding("euc-kr");
%>
<jsp:useBean id="memMgr" class="pls.MemberMgr" />
<jsp:useBean id="regBean" class="pls.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = memMgr.memberInsert(regBean);
%>

<html>
<head>
<title>회원가입 확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<html>
<br><br>
<center>
<%
if(flag){
	  out.println("<b>회원가입을 축하 드립니다.</b><p>");
	  out.println("<a href=index.jsp>로그인</a>");
	}else{
		
		out.println( );
		
	  out.println("<b>다시 입력하여 주십시오.</b><p>");
	  out.println("<a href=register.jsp>다시 가입</a>");
	}
%>
</center>
</body>
</html>
