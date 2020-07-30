<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
	function goTop(){
		$('html').scrollTop(0);
		// scrollTop 메서드에 0 을 넣어서 실행하면 끝 !!
		// 간혹 이 소스가 동작하지 않는다면
		// $('html, body') 로 해보세요~
	}
</script>
<div align="right">
<button class="btn btn-dark" type="submit" onclick="goTop()" ><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-chevron-double-up" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M7.646 2.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 3.707 2.354 9.354a.5.5 0 1 1-.708-.708l6-6z"/>
  <path fill-rule="evenodd" d="M7.646 6.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 7.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
</svg><br />맨 위로</button>
</div></br>