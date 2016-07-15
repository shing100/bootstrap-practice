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

		<!-- ����� �� ������ ���� -->
		<link rel="shortcut icon" href="assets/ico/favicon.png" />
		<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-144-precomposed.png" />

		<!-- bootstrap -->
		<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />

		<!-- ������� �� ��Ʈ ���� -->
		<link rel="stylesheet" type="text/css" href="assets/css/nanumfont.css" />

		<!-- ������ ���� �������� ���� ��� -->
		<!-- <link rel="stylesheet" href="assets/css/non-responsive.css" /> -->

		<!-- IE8 ���� ���� ���� -->
		<!--[if lt IE 9]>
		<script type="text/javascript" src="assets/js/html5shiv.js"></script>
		<script type="text/javascript" src="assets/js/respond.min.js"></script>
		<![endif]-->

		<!-- IE10 ������ �� ���� ���� -->
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
					<!-- ĳ���� ���� ���� -->
					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- ���� ��ġ ǥ�� -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>

						<!-- ���� ���� -->
						<div class="carousel-inner">
							<!-- �׸� (1) -->
							<div class="item active">
								<img src="img/room1.jpg" alt="�����̴�(1)">
								<div class="container">
									<div class="carousel-caption">
										<h1>������� �ŷ���</h1>
										<p>ROOM 1</p>
										<p><a href="#" class="btn btn-sm btn-primary">�����ϱ�</a></p>
									</div>
								</div>
							</div>

							<!-- �׸� (2) -->
							<div class="item">
								<img src="img/room2.jpg" alt="�����̴�(2)">
								<div class="container">
									<div class="carousel-caption">
										<h1>����Ƣ��</h1>
										<p>ROOM 2</p>
										<p><a href="#" class="btn btn-sm btn-primary">�����ϱ�</a></p>
									</div>
								</div>
							</div>

							<!-- �׸� (3) -->
							<div class="item">
								<img src="img/room3.jpg" alt="�����̴�(3)">
								<div class="container">
									<div class="carousel-caption">
										<h1>��ε� �����ϴ�</h1>
										<p>ROOM 3</p>
										<p><a href="#" class="btn btn-sm btn-primary">�����ϱ�</a></p>
									</div>
								</div>
							</div>
						</div>
						<!-- // ���뿵�� ���� -->

						<!-- �̵� ��ư -->
						<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"> <span class="icon-prev"></span> </a>
						<a class="right carousel-control" href="#carousel-example-generic" data-slide="next"> <span class="icon-next"></span> </a>
					</div>
					<!-- ĳ���� ���� �� -->
					<div class="row">
					<%Vector vResult= RoomMgr.getRoomList();%>
	
						<%
						for(int i=0; i<vResult.size(); i++){
						RoomBean Room = (RoomBean)vResult.get(i);
						%>
						<div class="col-sm-6 col-md-4">
							<!-- �Խù� �ϳ� ���� -->
							<div class="thumbnail">
								<img alt="��ƽ ������ - my wish list" src="img/<%=Room.getPicture()%>" width="300" height="300">
								<div class="caption">
									<h3><%=Room.getSize()%></h3>
									<p>
										<%=Room.getName()%>
									</p>
									<p>
										<a href="#" class="btn btn-primary"><i class="glyphicon glyphicon-heart"></i> ���ƿ�</a>
										<a href="#" class="btn btn-warning"><i class="glyphicon glyphicon-pencil"></i> ���۾���</a>
									</p>
								</div>
							</div>
							<!-- �Խù� �ϳ� �� -->
						</div>
						<%}%>
					</div>
				</div><!--/span-->

				<div class="col-sm-2 col-sm-pull-10" id="sidebar" role="navigation">
					<div class="list-group">
						<a href="room.jsp" class="list-group-item">ROOM</a>
						<a href="reservation.jsp" class="list-group-item">���� ����</a>
						<a href="resercheck.jsp" class="list-group-item">���� Ȯ��</a>
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