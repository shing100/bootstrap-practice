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

			/** 캐러셀의 반응형 기능 */
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
		<div>
			<jsp:include page="header.jsp" flush="false" ></jsp:include>
		</div>

		<!-- 캐러셀 영역 구성 -->
		<div id="carousel-generic" class="carousel slide" data-ride="carousel">
			<!-- 현재 위치 표시 -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-generic" data-slide-to="1"></li>
				<li data-target="#carousel-generic" data-slide-to="2"></li>
			</ol>

			<!-- 내용 영역 -->
			<div class="carousel-inner">
				<!-- 항목 (1) -->
				<div class="item active">
					<img src="img/room1.jpg" alt="슬라이더(1)">
					<div class="container">
						<div class="carousel-caption">
							<h1>깔끔함이 매력적인 </h1>
							<p>
								ROOM 1  입니다.
							</p>
						</div>
					</div>
				</div>

				<!-- 항목 (2) -->
				<div class="item">
					<img src="img/room2.jpg" alt="슬라이더(2)">
					<div class="container">
						<div class="carousel-caption">
							<h1>톡톡튀는 매력이 있는</h1>
							<p>
								ROOM 2 입니다.
							</p>
						</div>
					</div>
				</div>

				<!-- 항목 (3) -->
				<div class="item">
					<img src="img/room3.jpg" alt="슬라이더(3)">
					<div class="container">
						<div class="carousel-caption">
							<h1>남녀노소 좋아하는 방</h1>
							<p>
								ROOM 3 입니다.
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- // 내용영역 -->

			<!-- 이동 버튼 -->
			<a class="left carousel-control" href="#carousel-generic" data-slide="prev"> <span class="icon-prev"></span> </a>
			<a class="right carousel-control" href="#carousel-generic" data-slide="next"> <span class="icon-next"></span> </a>
		</div>
		<!-- 캐러셀 영역 끝 -->
		<div class="container">
			<%Vector vResult= RoomMgr.getRoomList();%>
	
			<% 
				for(int i=vResult.size()-3; i<vResult.size(); i++){
				RoomBean Room = (RoomBean)vResult.get(i);
				if(i % 2 == 0){
			%>
			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-5">
					<img class="img-thumbnail img-responsive" src="img/<%=Room.getPicture()%>" width="500" height="500" />
				</div>
				<div class="col-md-7">
					<h2 class="featurette-heading"><%=Room.getName()%><span class="text-muted">&nbsp 방입니다.</span></h2>
					<p class="lead">
						<%=Room.getRoomdata()%>
					</p>
				</div>
			</div>
			<hr>
			<%}else{%>

			<hr class="featurette-divider">
			
			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading"><%=Room.getName()%><span class="text-muted">&nbsp 방입니다.</span></h2>
					<p class="lead">
						<%=Room.getRoomdata()%>
					</p>
				</div>
				<div class="col-md-5">
					<img class="img-thumbnail img-responsive" src="img/<%=Room.getPicture()%>" width="500" height="500" />
				</div>
			</div>
			<hr>
			<%}
			}%>
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