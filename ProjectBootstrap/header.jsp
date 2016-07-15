<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<!-- 메뉴바 -->
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- 배경을 제외한 메뉴 항목의 영역 제한 -->
			<div class="container">
				<!-- 로고 영역 -->
				<div class="navbar-header">
					<!-- 반응형 메뉴 버튼 -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!--// 반응형 메뉴 버튼 -->
					<!-- 로고 -->
					<a class="navbar-brand" href="index.jsp">PLS HOTEL</a>
					<!--// 로고 -->
				</div>
				<!--// 로고 영역 -->
				<!-- 메뉴 영역 -->
				<div class="navbar-collapse collapse">
					<!-- 메인메뉴 -->
					<ul class="nav navbar-nav">
						<li>
							<a href="aboutus.jsp">호텔소개</a>
						</li>
						<li>
							<a href="room.jsp">객실소개</a>
						</li>
						<li>
							<a href="notice.jsp">공지사항</a>
						</li>
						<li>
							<a href="contact.jsp">문의사항</a>
						</li>
					</ul>
					<!--// 메인메뉴 -->
					<!-- 로그인(메뉴 우측) -->
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
										<font color="white" size=3px><%out.print(loginId+"님 저희 호텔에 오신것을 환영합니다.<br>");%></font>
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
					<!--// 로그인(메뉴 우측) -->
				</div>
				<!--// 메뉴 영역 -->
			</div>
			<!--// 배경을 제외한 메뉴 항목의 영역 제한 -->
		</div>
		<!--// 메뉴바 -->
</body>
</html>