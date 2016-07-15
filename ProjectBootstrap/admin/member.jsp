<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, pls.*"%>
<jsp:useBean id="memMgr" class="pls.MemberMgr" />
<script language="JavaScript" src="script.js"></script>
<html lang="ko">
	<head>
		<title>������ ������</title>
	</head>
	<body>
		<div>
			<%@ include file="header.jsp" %>
		</div>
		<%Vector vResult= memMgr.getMemberList();%>
		<div class="container">
			<br>
			<center><h1>ȸ�����</h1></center>
			<br>
			<div class="table-responsive">
  				<table class="table table-bordered">
					<tr>
						<td align="center">ȸ���̸�</td>
						<td align="center">ȸ�����̵�</td>
						<td align="center">ȸ����й�ȣ</td>
						<td align="center">ȸ���̸���</td>
						<td align="center">���</td>
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
											<button class="btn btn-primary" type="submit">�����ϱ�</button>
											</form></td>
						</tr>
						<%}%>
				</table>
			</div>
		</div>
			<!-- Ǫ�� -->
			<div>
				<jsp:include page="footer.jsp" flush="false"></jsp:include>
			</div>
			<!--// Ǫ�� -->
		<!--// ���뿵�� -->


		<!-- Javascript -->
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>