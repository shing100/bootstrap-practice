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
	<center><h1>���ǵ��</h1></center>
	<br>
	<div class="container">
	<form class="form-horizontal" action="roomInsertProc.jsp" method="post">
		<div class="form-group">
				<label for="InputEmail1">���ǹ�ȣ</label>
				<input type="text" class="form-control" name="num" placeholder="���ǹ�ȣ�� �Է��ϼ���">
		</div>
	<div class="form-group">
			<label for="InputPassword1">�����̸�</label>
			<input type="text" class="form-control" name="name" placeholder="�����̸��� �Է��ϼ���">
	</div>
	<div class="form-group">
			<label for="InputPassword1">���Ǽ����ο�</label>
			<input type="text" class="form-control" name="size" placeholder="�����ִ���� �ο��� �Է��ϼ���">
	</div>
	<div class="form-group">
			<label for="InputPassword1">���Ǽ���</label>
			<textArea type="text" class="form-control" name="roomdata" placeholder="���Ǽ����� �Է��ϼ���" rows="8"></textArea>
	</div>
		<div class="form-group">
			<label for="InputFile">���� ���ε�</label>
			<input type="text" class="form-control" name="picture" placeholder="���ε��� �̹��������̸��� �Է��ϼ��� ex)img.jpg">
		<p class="help-block">img������ ���ε� �ؾ��մϴ�.</p>
	</div>
	<div class="form-group">
		<button type="submit" class="btn btn-default">����ϱ�</button>
		</div>
	</form>
	</div>
	<br>
	<footer>
		<%@ include file="footer.jsp" %>
	</footer>
		
</body>
</html>