<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, pls.*"%>
<jsp:useBean id="RoomMgr" class="pls.RoomMgr" />
<!DOCTYPE html>
<html lang="ko">
	<head>
		<title>관리자 페이지</title>
	</head>

	<body>
		<div>
			<%@ include file="header.jsp" %>
		</div>
		<%Vector vResult= RoomMgr.getRoomList();%>
		<div class="container">
		<br>
		<center><h1>객실관리</h1></center>
		<br>
			<div class="table-responsive">
  				<table class="table table-bordered">
					<tr>
						<td align="center">객실번호</td>
						<td align="center">객실이름</td>
						<td align="center">객실수용인원</td>
						<td align="center">내용</td>
						<td align="center">이미지이름</td>
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
			<center><input class="btn btn-primary" type="button" onclick="location.href='roomInsert.jsp'" value="등록하기"></center>
			<br>
		</div>
			<!-- 푸터 -->
			<div>
				<jsp:include page="footer.jsp" flush="false"></jsp:include>
			</div>
			<!--// 푸터 -->
		</div>
		<!--// 내용영역 -->

		<!-- Javascript -->
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>