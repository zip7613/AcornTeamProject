<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<style>
	#imgDiv img {
		width: 100%;
		height: auto;
		position: absolute;
	}
	
	#imgDiv > #back {
		opacity: 0;
		transition: opacity 1s
	}
	
	#imgDiv:hover > #back {
		opacity: 1;
	}

</style>
</head>
<body>
<div id="imgDiv" onclick="location.href='${pageContext.request.contextPath}/main.jsp'" style="cursor:pointer;">

	<img id="front" src="${pageContext.request.contextPath}/TPimage/front.jpg">
	<img id="back" src="${pageContext.request.contextPath}/TPimage/back.jpg">
</div>
</body>
</html>