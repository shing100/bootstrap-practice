<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, pls.*"%>
<jsp:useBean id="RoomMgr" class="pls.RoomMgr" />
<!DOCTYPE html>
<html lang="ko">
	<head>
		<title>������ ������</title>
	</head>

	<body>
		<div>
			<%@ include file="header.jsp" %>
		</div>
		<%Vector vResult= RoomMgr.getRoomList();%>
		<div class="container">
		<br>
		<center><h1>���ǰ���</h1></center>
		<br>
			<div class="table-responsive">
  				<table class="table table-bordered">
					<tr>
						<td align="center">���ǹ�ȣ</td>
						<td align="center">�����̸�</td>
						<td align="center">���Ǽ����ο�</td>
						<td align="center">����</td>
						<td align="center">�̹����̸�</td>
					</tr>
				<%
					for(int i=0; i<vResult.size(); i++){
					RoomBean Room = (RoomBean)vResult.get(i);
				%>
					<tr> 
					<td align="center"><%=Room.getNum()%></a></td>
					<td align="center"><%=Room.getName()%></td>
					<td align="center"><%=Room.getSize()%></td>
					<td align="center"><%=Room.getRoomdata()%></td>
					<td align="center"><%=Room.getPicture()%></td>
					</tr>
				<%}%>
				</table>
			</div>
			<center><input class="btn btn-primary" type="button" onclick="location.href='roomInsert.jsp'" value="����ϱ�"></center>
			<br>
		</div>
			<!-- Ǫ�� -->
			<div>
				<jsp:include page="footer.jsp" flush="false"></jsp:include>
			</div>
			<!--// Ǫ�� -->
		</div>
		<!--// ���뿵�� -->

		<!-- Javascript -->
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>