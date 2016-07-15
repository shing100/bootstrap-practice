<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, pls.*"%>
<jsp:useBean id="memMgr" class="pls.MemberMgr" />
<script language="JavaScript" src="script.js"></script>
<html lang="ko">
	<head>
		<title>관리자 페이지</title>
	</head>
	<body>
		<div>
			<%@ include file="header.jsp" %>
		</div>
		<%Vector vResult= memMgr.getMemberList();%>
		<div class="container">
			<br>
			<center><h1>회원목록</h1></center>
			<br>
			<div class="table-responsive">
  				<table class="table table-bordered">
					<tr>
						<td align="center">회원이름</td>
						<td align="center">회원아이디</td>
						<td align="center">회원비밀번호</td>
						<td align="center">회원이메일</td>
						<td align="center">비고</td>
					</tr>
					<%
						for(int i=0; i<vResult.size(); i++){
						RegisterBean regBean = (RegisterBean)vResult.get(i);
					%>
						<tr> 
						<td align="center"><%=regBean.getMem_name()%></td>
						<td align="center"><%=regBean.getMem_id()%></td>
						<td align="center"><%=regBean.getMem_passwd()%></td>
						<td align="center"><%=regBean.getMem_email()%></td>
						<td align="center"><form name="Update" method="post" action="MemberUpdate.jsp">
											<input type=hidden name="mem_id" value="<%=regBean.getMem_id()%>">
											<button class="btn btn-primary" type="submit">수정하기</button>
											</form></td>
						</tr>
						<%}%>
				</table>
			</div>
		</div>
			<!-- 푸터 -->
			<div>
				<jsp:include page="footer.jsp" flush="false"></jsp:include>
			</div>
			<!--// 푸터 -->
		<!--// 내용영역 -->


		<!-- Javascript -->
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>