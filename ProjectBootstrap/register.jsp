<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>회원가입</title>
	<script language="JavaScript" src="script.js"></script>
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
    <!-- Custom style -->
    <link rel="stylesheet" href="assets/css/style.css" media="screen" title="no title" charset="utf-8">

  </head>
  <body>

    	<h1><center>&nbsp회원가입 &nbsp<small>PLS HOTEL</small></center></h1>
        <form name="regForm" class="form-horizontal" action="MemberInsert.jsp" method="post">
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputEmail">아이디</label>
        <fieldset class="ui-grid-c">
        <div class="col-sm-8 text-left">
         	<span><input class="form-control1" name="mem_id" type="text" placeholder="아이디">
        	</span>
        	<span><button class="btn btn-primary1" type="button" onClick="idCheck(this.form.mem_id.value)">중복확인<i class="fa fa-check spaceLeft"></i></button>        
			</span>
        </div>
        </fieldset>
        </div>
        <div class="form-group">
          <label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>
        <div class="col-sm-6">
          <input class="form-control" name="mem_passwd" type="password" placeholder="비밀번호">
        <p class="help-block">* 어렵게 만들어 주세요</p>
        </div>
        </div>
          <div class="form-group">
              <label class="col-sm-3 control-label" for="inputPasswordCheck">비밀번호 확인</label>
             <div class="col-sm-6">
              <input class="form-control" name="mem_repasswd"  type="password" placeholder="비밀번호 확인">
                <p class="help-block">이 부분을 입력하세요</p>
             </div>
          </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputName">이 름 </label>
          <div class="col-sm-6">
            <input class="form-control" name="mem_name" type="text" placeholder="이 름">
          </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label" for="inputaddress">주 소 </label>
          <div class="col-sm-6">
            <input class="form-control" name="mem_email" type="text" placeholder="주 소">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12 text-center">
            <input class="btn btn-primary" type="submit" value="등 록" onclick="inputCheck()"></i>
            <button class="btn btn-danger" type="button" onclick="location='index.jsp'">취 소</button>
          </div>
        </div>
       </form>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
