<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String url=request.getParameter("url");
	if(url==null){
		String cPath=request.getContextPath();
		url=cPath+"/main.jsp";
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/user/loginform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<style>
body{
	background:url('${pageContext.request.contextPath}/TPimage/join.jpeg')
	no-repeat center fixed;

	background-color:black;
	background-size:cover;
	}
#ch{
	background-color: black;
	width:500px;
	height: 90px;
}
#c{
	background-color: white;
	width: 500px;
	height: 350px;
}
#cf{
	background-color: black;
	width: 500px;
	height: 60px;
}
#loginForm{
	position: absolute;
	top: 50%;
	height: 500px;
	margin-top: -250px;
	left: 50%;
	margin-left: -250px;
}
</style>
</head>
<body>
<div id="loginForm">
<div class="container" id="ch">
<img style="width:280px; height:80px;" src="${pageContext.request.contextPath}/TPimage/mm.PNG"/>
</div>
<div class="container" id="c">
	<div class="container">
	<br />
		<h3>Mercedes me ID 로 로그인</h3>
		<hr />
		<div class="container">
			<form action="login.jsp" method="post">
			<%-- 원래 가려던 목적지 정보를 url 이라는 파라미터 명으로 가지고 간다. --%>
            <input type="hidden" name="url" value="<%=url %>" />

				<div class="form-group">
					<label for="id">아이디</label><br />
					<input type="text" class="form-control" name="id" id="id" />
				</div>
				<div class="form-group">
					<label for="pwd">비밀번호</label><br />
					<input type="password" class="form-control" name="pwd" id="pwd" />
				</div>
				<div class="form-group">
					<button  class="btn btn-primary btn-sm" type="submit">> 로그인</button>
					<br />
				</div>
			</form>
		</div>
	</div>
</div>
	<div align="right" class="container" id="cf">
		<a href="#" style="font-size:12px; color:gray;">액세스 조건</a>
		<span>|</span>
		<a href="#" style="font-size:12px; color:gray;">쿠키</a>
		<span>|</span>
		<a href="#" style="font-size:12px; color:gray;">개인정보 보호</a>
	</div>
</div>
</body>
</html>