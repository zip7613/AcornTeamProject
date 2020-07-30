<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/js/jquery-3.5.1.js" />
<!-- 아이콘 링크 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>/main.jsp</title>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<style>
	body{
		background-color:black;
	}
	h1{
		color:white;
	}
	
    .carousel-inner{
    width: 1500px;

    margin: auto;
  }

</style>
</head>
<body>
<%
	//id 라는 키값으로 세션에 저장된 문자열이 있는지 읽어와 본다.
	String id=(String)session.getAttribute("id");
%>
	<%if(id != null){ %>
		<p>
			<a href="user/private/info.jsp" style="color:white;"><%=id %>님 로그인중...</a> 
			<a href="user/logout.jsp">로그 아웃</a>
		</p>
	<%} %>
<div align="right">
<a class="btn btn-primary" href="user/signupform.jsp" role="button">>Mercedes me 회원가입</a>
</div>	   



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
</nav>   <!-- 메인 슬라이드 -->

<div class="justify-content-center">
	<div class="col">
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
    			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		    	<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
		<div class="carousel-inner">
    		<div class="carousel-item active">
    			<img src="${pageContext.request.contextPath}/images/2020E-Class.png" class="d-block w-100" alt="...">
    		</div>
    		<div class="carousel-item">
    			<img src="${pageContext.request.contextPath}/images/Join.png" class="d-block w-100" alt="...">
    		</div>
    		<div class="carousel-item">
    			<img src="${pageContext.request.contextPath}/images/girl.jpeg" class="d-block w-100" alt="...">
    		</div>
  		</div>
  	<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    	<span class="sr-only">Previous</span>
  	</a>
  	<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
    	<span class="sr-only">Next</span>
  	</a>
  		</div>
  	</div>
</div>

<div style="margin:0px 180px;"></br>
	<p style="font-size:18px; color:white;">           Home</p>
	<hr width = "10%" color = "white" align="left">
	<div class="row">
		<p style="font-size:32px; color:white;">Mercedes-Benz와 나</p>


		<p style="font-size:18px; color:white;">사용자 메뉴에 오신 것을 환영합니다.

		귀하의 Mercedes-Benz, 이용 가능한 서비스 및 기타 다양한 사항을 사용자 메뉴에서 디지털로 이용하거나 확인할 수 있습니다.</p></br></br></br>

		<p style="font-size:18px; color:white;">개인적인 디지털 어시스턴트를 이용하여 귀하의 Mercedes-Benz를 보다 편리하게 이용 할 수 있습니다.</p></br></br></br></br>
		<div class="col-6">
			<img src="${pageContext.request.contextPath}/images/phonegirl.jpeg" style="width:770px;"/>
		</div>
		<div class="col-6" style="padding-left: 60px;">
			<p style="font-size:16px; color:white;">
			<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-check2" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
			</svg>
 			항상 모든 정보를 한눈에. 귀하의 Mercedes-Benz와 관련된 모든 사항을 놓치지 마십시오.  (예: 타이어 압력 정보, 연료량)</p>
 			<p style="font-size:16px; color:white;">
				<svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-check2" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
				<path fill-rule="evenodd" d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
				</svg>
 			목적지를 Mercedes me App을 통해 차량으로 바로 전송할 수 있습니다.</p></br></br>
 			<a class="btn btn-primary" href="user/loginform.jsp" role="button">>Mercedes me 로그인</a>
 		</div>
	<div class="col-6"></br></br></br>
		<p style="font-size:18px; color:white;">   서비스와 제품</p>

		<hr width = "10%" color = "white" align="left"/>	
		<p style="font-size:32px; color:white;">귀하를 위해 엄선된 서비스 개요</p></br></br></br>

	</div>
	<div class="card-deck">
  		<div class="card" style="background-color:black; color:white;">
  			<h5 class="card-title">온라인 검색</h5>
    		<img src="${pageContext.request.contextPath}/images/driver.jpg" class="card-img-top" alt="...">
    			<div class="card-body">
	      			<p class="card-text">온라인 검색을 통해 목적지를 차량에서 온라인으로 검색하세요. 검색한 목적지를 바탕으로 길안내까지 가능합니다.</p>
					<p class="card-text"><small class="text-muted"><a href="Online_Searching.jsp" style="color:gray;">>Online Searching</a></small></p>
    			</div>
  		</div>
  		<div class="card" style="background-color:black; color:white;" >
  			<h5 class="card-title">주차차량 위치추적 서비스</h5>
    		<img src="${pageContext.request.contextPath}/images/second.jpg" class="card-img-top" alt="...">
    		<div class="card-body">
      			<p class="card-text">Merecedes me의 주차차량 위치추적 서비스는 주변 10km반경내에서 차량의 위치를 확인하고 차량까지 이르는 길을 안내합니다.</p>
      			<p class="card-text"><small class="text-muted"><a href="SearchingMyCar.jsp" style="color:gray;">>Searching My Car</a></small></p>
    		</div>
  </div>
	<div class="card" style="background-color:black; color:white;">
  		<h5 class="card-title">Mercedes me 앱</h5>
    	<img src="${pageContext.request.contextPath}/images/three.jpg" class="card-img-top" alt="...">
    		<div class="card-body">
				<p class="card-text">Mercedes App을 여기에서 다운로드하세요.</p>
			    <p class="card-text"><small class="text-muted" ><a href="AppStore.jsp"  style="color:gray;">>AppStore</a></small></p>
			    <p class="card-text"><small class="text-muted" ><a href="PlayStore.jsp"  style="color:gray;">>PlayStore</a></small></p>
    		</div>
	  	</div>
	</div>
</div>
<div class="bg-dark text-white" style="width:1550px; height:300px; padding:0px 44px; ">
	<p>Main</p>
	<hr width = "100%" color = "gray">
	<p>Mercedes-Benz 소셜 웹:</p>
	<a href="https://www.facebook.com/MercedesBenzKorea/" class="fa fa-facebook-official" style="font-size: 50px; margin:10px;" aria-hidden="true" ></a>
	<a href="https://www.instagram.com/mercedesbenzkr/" class="fa fa-instagram" style="font-size: 50px; margin:10px;" aria-hidden="true"></a>
	<a href="https://www.youtube.com/channel/UChbw0qKAMdFf6TlC0T3Z_zw" class="fa fa-youtube-play" style="font-size: 50px; margin:10px;" aria-hidden="true"></a>
	
	<script>
	function goTop(){
		$('html').scrollTop(0);
		// scrollTop 메서드에 0 을 넣어서 실행하면 끝 !!
		// 간혹 이 소스가 동작하지 않는다면
		// $('html, body') 로 해보세요~
	}
	</script>
</div>

</div><br/>

<div align="right">
<button class="btn btn-dark" type="submit" onclick="goTop()" >맨 위로</button>
</div></br>
<p>&nbsp;&nbsp;&nbsp;©2020 메르세데스-벤츠 코리아(주) &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;메르세데스-벤츠 파이낸셜 서비스 코리아(주)
&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;다임러 트럭 코리아(주)&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
메르세데스-벤츠 모빌리티 코리아(주)&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; 개인정보처리방침 (MBK)
&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;개인정보처리방침 (MBFSK)&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
개인정보처리방침(MBMK)&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
개인정보처리방침(MmP)&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;Mercedes-Benz AG Privacy Statement</p>

</body>
</html>