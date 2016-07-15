<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.util.*,pls.*" %> 
<% 
request.setCharacterEncoding("EUC-KR");
%>
<jsp:useBean id="memMgr" class="pls.MemberMgr" />

<!DOCTYPE html>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
</head>
<body>
<br>

	<%@ include file="header.jsp" %>
	
	<%
		String mem_id = request.getParameter("mem_id");
		RegisterBean regBean= memMgr.getMember(mem_id);
	%>
	<center><h1>회원수정</h1></center>
	<br>

		<form name="regForm" class="form-horizontal" action="MemberUpdateProc.jsp" method="post">
			<div class="form-group">
          		<label class="col-sm-3 control-label" for="showname">아이디</label>
        		<div class="col-sm-6">
   					<%=regBean.getMem_id()%>
        		</div>    
        	</div>
        	<div class="form-group">
            	<label class="col-sm-3 control-label" for="showpasswd">비밀번호</label>
         		<div class="col-sm-6">
            	<input class="form-control" name="mem_passwd" type="text" value="<%=regBean.getMem_passwd()%>">
          		</div>
        	</div>
        	<div class="form-group">
            	<label class="col-sm-3 control-label" for="show">이름</label>
         		<div class="col-sm-6">
            	<input class="form-control" name="mem_name" type="text" value="<%=regBean.getMem_name()%>">
          		</div>
        	</div>
        	<div class="form-group">
            	<label class="col-sm-3 control-label" for="showemail">e-mail</label>
         		<div class="col-sm-6">
            	<input class="form-control" name="mem_email" type="text" value="<%=regBean.getMem_email()%>">
          		</div>
        	</div>
        	<div class="form-group">
          	<div class="col-sm-12 text-center">
            	<input class="btn btn-primary" type="submit" value="수정완료">
          	</div>
        	</div>
			<input type="hidden" name="mem_id" value="<%=mem_id%>">
		</form>
	
	<%@ include file="footer.jsp" %>
		
</body>
</html>