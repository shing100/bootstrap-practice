<%@ page contentType="text/html;charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="memMgr" class="pls.MemberMgr" />
<jsp:useBean id="regBean" class="pls.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = memMgr.memberUpdate(regBean);
%>

<%
if(flag){
%>
		<script>
		alert("���������� �����Ͽ����ϴ�");
		location.href="member.jsp";
		</script>
<%
	}else{
%>
		<script>
		alert("�������� ������ �߻��Ͽ����ϴ�.");
		history.back();
		</script>

<%
	  }
%>
