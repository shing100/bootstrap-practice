<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="memMgr" class="pls.MemberMgr" />
<%
	String mem_id = request.getParameter("mem_id");
	String mem_passwd = request.getParameter("mem_passwd");
	boolean loginCheck = memMgr.loginCheck(mem_id,mem_passwd); 
%>
<%
   if(loginCheck){
	  session.setAttribute("login",mem_id);
	  response.sendRedirect("index.jsp");
   }else{
      response.sendRedirect("LogError.jsp");
   }
%>

