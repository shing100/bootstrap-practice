<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

		<!-- �������� �� ��Ʈ ���� -->
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
		<jsp:include page="header.jsp" flush="false"></jsp:include>
	</div>

		<div class="container">

			<div class="row">

				<div class="col-sm-10 col-sm-push-2">
		
					<div>
						<center>���ǻ��� ����</center><br>
						<form class="form-horizontal" method="post">
						<div class="form-group">
						<input class="form-control" name="mem_id" type="text" placeholder="���̵�">
						</div>
						<div class="form-group">
						<input class="form-control" name="mem_email" type="email" placeholder="�̸���">
						</div>
						<div class="form-group">
						<textArea class="form-control" name="mem_QnA" type="textbox" placeholder="���ǻ���" rows="8"></textArea>
						</div>
						</form>
					</div>
				</div>

				<div class="col-sm-2 col-sm-pull-10" id="sidebar" role="navigation">
					<div class="list-group">
						<a href="#" class="list-group-item">�� �� �� ��</a>
						<a href="#" class="list-group-item">Q & A</a>
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