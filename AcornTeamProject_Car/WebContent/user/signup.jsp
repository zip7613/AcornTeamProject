<%@page import="test.user.dao.UserDao"%>
<%@page import="test.user.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String country=request.getParameter("country");
	String email=request.getParameter("email");
	
	UserDto dto=new UserDto();
	dto.setId(id);
	dto.setPwd(pwd);
	dto.setCountry(country);
	dto.setEmail(email);
	
	boolean isSuccess=UserDao.getInstance().insert(dto);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/user/signup.jsp</title>
</head>
<body>
<% if(isSuccess){%>
	<p><strong><%=id %></strong> 회원님 가입되었습니다. <a href="loginform.jsp">로그인 하러가기</a></p>
<%}else{ %>
	<p> 가입이 실패 했습니다. <a href="signupform.jsp">다시 시도</a></p>
<%} %>
</body>
</html>