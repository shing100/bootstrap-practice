<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<!-- �޴��� -->
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- ����� ������ �޴� �׸��� ���� ���� -->
			<div class="container">
				<!-- �ΰ� ���� -->
				<div class="navbar-header">
					<!-- ������ �޴� ��ư -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!--// ������ �޴� ��ư -->
					<!-- �ΰ� -->
					<a class="navbar-brand" href="index.jsp">PLS HOTEL</a>
					<!--// �ΰ� -->
				</div>
				<!--// �ΰ� ���� -->
				<!-- �޴� ���� -->
				<div class="navbar-collapse collapse">
					<!-- ���θ޴� -->
					<ul class="nav navbar-nav">
						<li>
							<a href="aboutus.jsp">ȣ�ڼҰ�</a>
						</li>
						<li>
							<a href="room.jsp">���ǼҰ�</a>
						</li>
						<li>
							<a href="notice.jsp">��������</a>
						</li>
						<li>
							<a href="contact.jsp">���ǻ���</a>
						</li>
					</ul>
					<!--// ���θ޴� -->
					<!-- �α���(�޴� ����) -->
					<%
						String loginId = (String)session.getAttribute("login");
						boolean login = loginId ==null?false:true;
						Cookie[] cookies =request.getCookies();
						String id="";
						if(cookies != null && cookies.length > 0){
							for(int i=0; i<cookies.length; i++){
								if(cookies[i].getName().equals("SAVEID")){
									id=cookies[i].getValue();
								}
							}
						}
						if(login){
							
						%>	
							<form class="navbar-form navbar-right" action="Logout.jsp" method="post">
								<div class="form-group">
									<li>
										<font color="white" size=3px><%out.print(loginId+"�� ���� ȣ�ڿ� ���Ű��� ȯ���մϴ�.<br>");%></font>
									</li>
								</div>
								<button type="button" onclick="location='Myinfo.jsp'" class="btn btn-success">
									MyInfo
								</button>
								<button type="submit" class="btn btn-warning">
									Logout
								</button>
							</form>
					<%
						}else{
					%>
						<form class="navbar-form navbar-right" action = "LoginProc.jsp" method="post">
							<div class="form-group">
								<input type="text" name="mem_id" placeholder="ID" class="form-control">
							</div>
							<div class="form-group">
								<input type="password" name="mem_passwd" placeholder="Password" class="form-control">
							</div>
							<button type="submit" class="btn btn-success">
								Login
							</button>
							<button type="button" class="btn btn-warning" onclick="location='register.jsp'">
								Join
							</button>
						</form>
					<%
						}
					%>
					<!--// �α���(�޴� ����) -->
				</div>
				<!--// �޴� ���� -->
			</div>
			<!--// ����� ������ �޴� �׸��� ���� ���� -->
		</div>
		<!--// �޴��� -->
</body>
</html>