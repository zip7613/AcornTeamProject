<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container" style="margin-left:70px;">
	<h1 style="margin:0px;"><img src="${pageContext.request.contextPath}/images/black_icon.jpg" style="width:90px;"/>Mercedes-Benz</h1>
</div>
    
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/main.jsp">Benz-KOR</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="container collapse navbar-collapse " id="navbarNavDropdown ">
    <ul class="navbar-nav row " >   
      <li class="nav-item active col-2">
        <a class="nav-link " href="#">모델 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item col-2">
        <a class="nav-link" href="#">전시장</a>
      </li>
      <li class="nav-item col-2">
        <a class="nav-link" href="#">정비소</a>
      </li>
      <li class="nav-item col-2" >
        <a class="nav-link" href="#" style="
    height: 50px;
    width: 100px;">자유게시판</a>
      </li>
      <li class="nav-item dropdown col-2">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">차량 구입&견적</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">구매</a>
          <a class="dropdown-item" href="#">견적</a>
          <a class="dropdown-item" href="#">악세서리 shop</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/file/list.jsp">가격표</a>
        </div>
      </li>
    </ul>
  </div>
</nav>