<%@ page contentType="text/html;charset=EUC-KR" pageEncoding="EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="RoomMgr" class="pls.RoomMgr" />
<jsp:useBean id="regBean" class="pls.RoomBean" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = RoomMgr.insertRoom(regBean);
%>

<%
if(flag){
%>
		<script>
		alert("���������� ����Ͽ����ϴ�");
		location.href="room.jsp";
		</script>
<%
	}else{
%>
		<script>
		alert("��ϵ��� ������ �߻��Ͽ����ϴ�.");
		history.back();
		</script>

<%
	  }
%>
