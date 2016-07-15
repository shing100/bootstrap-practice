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
		alert("성공적으로 등록하였습니다");
		location.href="room.jsp";
		</script>
<%
	}else{
%>
		<script>
		alert("등록도중 에러가 발생하였습니다.");
		history.back();
		</script>

<%
	  }
%>
