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
<title>ȸ������ Ȯ��</title>
<link href="style.css" rel="stylesheet" type="text/css">
<html>
<br><br>
<center>
<%
if(flag){
	  out.println("<b>ȸ�������� ���� �帳�ϴ�.</b><p>");
	  out.println("<a href=index.jsp>�α���</a>");
	}else{
		
		out.println( );
		
	  out.println("<b>�ٽ� �Է��Ͽ� �ֽʽÿ�.</b><p>");
	  out.println("<a href=register.jsp>�ٽ� ����</a>");
	}
%>
</center>
</body>
</html>
