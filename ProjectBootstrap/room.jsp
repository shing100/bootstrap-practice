<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, pls.*" %>
<jsp:useBean id="RoomMgr" class="pls.RoomMgr" />
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>PLS HOTEL</title>

		<!-- 모바일 웹 페이지 설정 -->
		<link rel="shortcut icon" href="assets/ico/favicon.png" />
		<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-144-precomposed.png" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />

		<!-- 나눔고딕 웹 폰트 적용 -->
		<link rel="stylesheet" type="text/css" href="assets/css/nanumfont.css" />

		<!-- 반응형 웹을 지원하지 않을 경우 -->
		<!-- <link rel="stylesheet" href="assets/css/non-responsive.css" /> -->

		<!-- IE8 이하 버전 지원 -->
		<!--[if lt IE 9]>
		<script type="text/javascript" src="assets/js/html5shiv.js"></script>
		<script type="text/javascript" src="assets/js/respond.min.js"></script>
		<![endif]-->

		<!-- IE10 반응형 웹 버그 보완 -->
		<!--[if gt IE 9]>
		<link rel="stylesheet" type="text/css" href="assets/css/ie10.css" />
		<script type="text/javascript" src="assets/js/ie10.js"></script>
		<![endif]-->

		<style type="text/css">
			body {
				padding-top: 70px;
			}
			footer {
				padding: 30px 0;
			}

			h2 {
				font-size: 18px;
				font-weight: bold;
				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;
			}

			.carousel-inner > .item > img {
				min-width: 100%;
				height: 300px;
			}
			
			#carousel-example-generic {
				margin-bottom: 30px;
			}
			
			.caption h3 {
				font-size: 18px;
				font-weight: bold;
			}
		</style>
	</head>

	<body>
		<div>
			<jsp:include page="header.jsp" flush="false.jsp"></jsp:include>
		</div>

		<div class="container">

			<div class="row">

				<div class="col-sm-10 col-sm-push-2">
					<!-- 캐러셀 영역 구성 -->
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- 현재 위치 표시 -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>

						<!-- 내용 영역 -->
						<div class="carousel-inner">
							<!-- 항목 (1) -->
							<div class="item active">
								<img src="img/room1.jpg" alt="슬라이더(1)">
								<div class="container">
									<div class="carousel-caption">
										<h1>깔끔함이 매력인</h1>
										<p>ROOM 1</p>
										<p><a href="#" class="btn btn-sm btn-primary">예약하기</a></p>
									</div>
								</div>
							</div>

							<!-- 항목 (2) -->
							<div class="item">
								<img src="img/room2.jpg" alt="슬라이더(2)">
								<div class="container">
									<div class="carousel-caption">
										<h1>톡톡튀는</h1>
										<p>ROOM 2</p>
										<p><a href="#" class="btn btn-sm btn-primary">예약하기</a></p>
									</div>
								</div>
							</div>

							<!-- 항목 (3) -->
							<div class="item">
								<img src="img/room3.jpg" alt="슬라이더(3)">
								<div class="container">
									<div class="carousel-caption">
										<h1>모두들 좋아하는</h1>
										<p>ROOM 3</p>
										<p><a href="#" class="btn btn-sm btn-primary">예약하기</a></p>
									</div>
								</div>
							</div>
						</div>
						<!-- // 내용영역 구성 -->

						<!-- 이동 버튼 -->
						<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"> <span class="icon-prev"></span> </a>
						<a class="right carousel-control" href="#carousel-example-generic" data-slide="next"> <span class="icon-next"></span> </a>
					</div>
					<!-- 캐러셀 영역 끝 -->
					<div class="row">
					<%Vector vResult= RoomMgr.getRoomList();%>
	
						<%
						for(int i=0; i<vResult.size(); i++){
						RoomBean Room = (RoomBean)vResult.get(i);
						%>
						<div class="col-sm-6 col-md-4">
							<!-- 게시물 하나 시작 -->
							<div class="thumbnail">
								<img alt="엔틱 자전거 - my wish list" src="img/<%=Room.getPicture()%>" width="300" height="300">
								<div class="caption">
									<h3><%=Room.getSize()%></h3>
									<p>
										<%=Room.getName()%>
									</p>
									<p>
										<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i> 좋아요</a>
										<a href="#" class="btn btn-warning"><i class="glyphicon glyphicon-pencil"></i> 덧글쓰기</a>
									</p>
								</div>
							</div>
							<!-- 게시물 하나 끝 -->
						</div>
						<%}%>
					</div>
				</div><!--/span-->

				<div class="col-sm-2 col-sm-pull-10" id="sidebar" role="navigation">
					<div class="list-group">
						<a href="room.jsp" class="list-group-item">ROOM</a>
						<a href="reservation.jsp" class="list-group-item">객실 예약</a>
						<a href="resercheck.jsp" class="list-group-item">예약 확인</a>
					</div>
				</div><!--/span-->
			</div><!--/row-->

			<hr>
	<footer>
		<div>
			<jsp:include page="header.jsp" flush="false"></jsp:include>
		</div>
	</footer>

		</div><!--/.container-->

		<!-- Javascript -->
		<script src="assets/js/jquery-1.10.2.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	</body>
</html>