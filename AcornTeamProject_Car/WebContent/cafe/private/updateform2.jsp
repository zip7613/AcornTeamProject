<%@page import="test.cafe.dao.CafeDao"%>
<%@page import="test.cafe.dto.CafeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 파라미터로 전달되는 수정할 글번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 글정보를 얻어온다.
	CafeDto dto=CafeDao.getInstance().getData(num);
	//3. 글 수정 폼을 응답한다.
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#content{
		width: 768px;
		height: 300px;
	}
</style>
</head>
<body>
<div class="container">
	<h1>글 수정 양식 입니다.</h1>
	<form action="update2.jsp" method="post">
		<input type="hidden" name="num" value="<%=num %>"/>
		<div>
			<label for="num">글번호</label>
			<input type="text" id="num" value="<%=num %>" disabled/>
		</div>
		<div>
			<label for="title">제목</label>
			<input type="text" id="title" name="title" 
				value="<%=dto.getTitle() %>"/>
		</div>
		<div>
			<label for="content">내용</label>
			<textarea name="content" id="content" disabled>
				<%=dto.getContent() %>
			</textarea>
		</div>
		<div>
			<label for="coment">답글</label>
			<textarea name="coment" id="coment">
				<%=dto.getComent() %>
			</textarea>
		</div>
		<button type="submit" href="update2.jsp">수정확인</button>
		<button type="reset">취소</button>
	</form>
</div>

</body>
</html>