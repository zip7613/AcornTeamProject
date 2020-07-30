<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/user/signupform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
<style>
body{
		background:url('${pageContext.request.contextPath}/TPimage/join.jpeg')
		no-repeat center fixed;
		background-size:cover;
	}
#c{
	background-color: white;
	width: 600px;
	height: 800px;
}
#ch{
	background-color: black;
	width:600px;
	height: 90px;
}
#cf{
	background-color: black;
	width: 600px;
	height: 40px;
}

</style>
</head>
<body>

<div class="container" id="ch">
<img style="width:280px; height:80px;" src="${pageContext.request.contextPath}/TPimage/mm.PNG"/>
</div>
<div class="container" id="c">
	<div class="container">
	<br />
		<h3>귀하의 Mercedes me ID에 등록하십시오.</h3>
		<hr />
		<p>Mercedes me 사용을 위해 등록하시려면 아래 필드를 작성하십시오.</p>
		<hr />
		<div class="container">
			<form action="signup.jsp" method="post" id="myForm">
			
				<div class="form-group">
					<label for="id">아이디</label><br />
					<input type="text" class="form-control" name="id" id="id" />
				</div>
				<div class="form-group">
					<label for="pwd">비밀번호</label><br />
					<input type="password" class="form-control" name="pwd" id="pwd" />
				</div>
				<div class="form-group">
					<label for="country">국가 또는 지역</label><br />
						<select class="form-control" id="country" name="country" required="required">
					    <option value="가나">가나</option>
					    <option value="과테말라">과테말라</option>
					    <option value="그리스">그리스</option>
					    <option value="나미비아">나미비아</option>
					    <option value="남아프리카">남아프리카</option>
					    <option value="네덜란드">네덜란드</option>
					    <option value="네팔">네팔</option>
					    <option value="뉴질랜드">뉴질랜드</option>
					    <option value="대한민국">대한민국</option>
					    <option value="덴마크">덴마크</option>
					    <option value="독일">독일</option>
					    <option value="러시아">러시아</option>
					    <option value="루마니아">루마니아</option>
					    <option value="룩셈부르크">룩셈부르크</option>
					    <option value="말레이시아">말레이시아</option>
					    <option value="멕시코">멕시코</option>
					    <option value="미국">미국</option>
					    <option value="방글라데시">방글라데시</option>
					    <option value="버뮤다">버뮤다</option>
					    <option value="베트남">베트남</option>
					    <option value="사우디아라비아">사우디아라비아</option>
					    <option value="스웨덴">스웨덴</option>
					    <option value="싱가포르">싱가포르</option>
					    <option value="아르헨티나">아르헨티나</option>
					    <option value="영국">영국</option>
					    <option value="일본">일본</option>
					    <option value="중국">중국</option>
					    <option value="캐나다">캐나다</option>
					    <option value="프랑스">프랑스</option>
					    <option value="홍콩(특별 행정구), 중국">홍콩(특별 행정구), 중국</option>
						</select>
				</div>
				<div class="form-group">
					<label for="email">이메일 주소</label><br />
					<input type="text" class="form-control" name="email" id="email" /><br />
					<label for="email2">이메일 주소 확인</label><br />
					<input type="text" class="form-control" name="email2" id="email2" />
				</div>
				<div class="form-group">
					<button  class="btn btn-primary btn-sm" type="submit">> 등록하기</button>
					<br />
				</div>
			</form>
			
		</div>
	</div>
</div>
<div  align="right" class="container" id="cf">
<a href="#" style="font-size:12px; color:gray;">액세스 조건</a>
<span>|</span>
<a href="#" style="font-size:12px; color:gray;">쿠키</a>
<span>|</span>
<a href="#" style="font-size:12px; color:gray;">개인정보 보호</a>
</div>
</body>
</html>