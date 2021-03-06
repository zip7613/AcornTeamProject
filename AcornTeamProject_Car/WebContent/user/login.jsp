<%@page import="test.user.dao.UserDao"%>
<%@page import="test.user.dto.UserDto"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인후 가야하는 목적지 정보
	String url=request.getParameter("url");
	//목적지 정보도 미리 인코딩 해 놓는다.
	String encodedUrl=URLEncoder.encode(url);
	//1. 폼전송되는 로그인 아이디와 비밀번호를 읽어온다.
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	//2. DB 에 실제로 존재하는지 (유효한 정보인지) 확인한다.
	UserDto dto=new UserDto();
	dto.setId(id);
	dto.setPwd(pwd);
	boolean isValid=UserDao.getInstance().isValid(dto);
	//3. 유효한 정보이면 로그인 처리를 하고 응답 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/user/login.jsp</title>
</head>
<body>
<%if(isValid){ 
	//로그인 처리를 한다. 
	session.setAttribute("id", id);%>

	<script>
	alert("로그인 되었습니다.");
	location.href="<%=url %>";
	</script>
<%}else{ %>
	<script>
	alert("아이디 혹은 비밀번호가 틀려요!");
	location.href="loginform.jsp?url=<%=encodedUrl %>";
	</script>

<%} %>
</body>
</html>