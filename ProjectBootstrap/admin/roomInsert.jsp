<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
request.setCharacterEncoding("EUC-KR");
%>

<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<script language="JavaScript" src="script.js"></script>
</head>
<body>
<br>
	<header>
		<%@ include file="header.jsp" %>
	</header>
	<center><h1>객실등록</h1></center>
	<br>
	<div class="container">
	<form class="form-horizontal" action="roomInsertProc.jsp" method="post">
		<div class="form-group">
				<label for="InputEmail1">객실번호</label>
				<input type="text" class="form-control" name="num" placeholder="객실번호를 입력하세요">
		</div>
	<div class="form-group">
			<label for="InputPassword1">객실이름</label>
			<input type="text" class="form-control" name="name" placeholder="객실이름을 입력하세요">
	</div>
	<div class="form-group">
			<label for="InputPassword1">객실수용인원</label>
			<input type="text" class="form-control" name="size" placeholder="객실최대수용 인원을 입력하세요">
	</div>
	<div class="form-group">
			<label for="InputPassword1">객실설명</label>
			<textArea type="text" class="form-control" name="roomdata" placeholder="객실설명을 입력하세요" rows="8"></textArea>
	</div>
		<div class="form-group">
			<label for="InputFile">파일 업로드</label>
			<input type="text" class="form-control" name="picture" placeholder="업로드한 이미지파일이름을 입력하세요 ex)img.jpg">
		<p class="help-block">img폴더에 업로드 해야합니다.</p>
	</div>
	<div class="form-group">
		<button type="submit" class="btn btn-default">등록하기</button>
		</div>
	</form>
	</div>
	<br>
	<footer>
		<%@ include file="footer.jsp" %>
	</footer>
		
</body>
</html>