<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
    String admin_id = (String)session.getAttribute("adminKey");

	if(admin_id == null) {
		response.sendRedirect("index.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>������ ������</title>

		<!-- ����� �� ������ ���� -->
		<link rel="shortcut icon" href="../assets/ico/favicon.png" />
		<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-144-precomposed.png" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css" />

		<!-- ������� �� ��Ʈ ���� -->
		<link rel="stylesheet" type="text/css" href="../assets/css/nanumfont.css" />
		<style type="text/css">
			body {
				padding-top: 50px;
				padding-bottom: 20px;
			}

			.carousel {
				height: 500px;
				margin-bottom: 60px;
			}

			.carousel-inner > .item > img {
				min-width: 100%;
				height: 500px;
			}

			.carousel-inner .carousel-caption {
				padding-left: 30px;
				padding-right: 30px;
				background-color: rgba(0,0,0,0.5) !important;
			}

			/** ĳ������ ������ ��� */
			@media (min-width: 768px) {
				.carousel-caption p {
					margin-bottom: 20px;
					font-size: 21px;
					line-height: 1.4;
				}
			}
		</style>
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
					<a class="navbar-brand" href="index.jsp">������������</a>
					<!--// �ΰ� -->
				</div>
				<!--// �ΰ� ���� -->
				<!-- �޴� ���� -->
				<div class="navbar-collapse collapse">
					<!-- ���θ޴� -->
					<ul class="nav navbar-nav">
						<li>
							<a href="member.jsp">ȸ������</a>
						</li>
						<li>
							<a href="room.jsp">���ǰ���</a>
						</li>
					</ul>
					<!--// ���θ޴� -->
					<!-- �α���(�޴� ����) -->
					<%
						String loginId = (String)session.getAttribute("adminKey");
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
							<form class="navbar-form navbar-right" action="AdminLogout.jsp" method="post">
								<div class="form-group">
									<li>
										<font color="white" size=3px><%out.print(loginId+"�� ȯ���մϴ�.<br>");%></font>
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
						<form class="navbar-form navbar-right" action = "AdminLoginProc.jsp" method="post">
							<div class="form-group">
								<input type="text" name="admin_id" placeholder="ID" class="form-control">
							</div>
							<div class="form-group">
								<input type="password" name="admin_passwd" placeholder="Password" class="form-control">
							</div>
							<button type="submit" class="btn btn-success">
								Login
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