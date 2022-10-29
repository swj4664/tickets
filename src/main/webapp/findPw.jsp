<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<script>
function findPwBtn(){
	var emailRegex = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	var email = $("#mb_email");
	
	$.ajax({
		url : "/findPw", // form의 action을 씀
		type : "post", // get - url뒤에 parameter를 붙여서 보냄.(정보가 다 보임) / post - 정보가 보이지 않음
		// www.google.com/search?q=신원정&rlz=1C1IBEF_koKR1012KR1012 -물음표로 시작하고 id=값 다음은 &로 나눔
		/* dataType : "json",  */
		data : {"mb_id" : $("#findPw").val()},  // <- 이게jason타입임. map이랑 형태 같음. findId의 값을 mb_id에 넣는다.
		success : function(mMeberInfo){ // success - callback함수(모든게 돌고(리턴까지) 나서 실행되는 것. 의도하지 않은 것이 실행되도 콜백함수임)
			
			if(mMeberInfo) { //순서가 왜 중요한지?
			alert(
					"비밀번호는"+mMeberInfo.mb_pw+"입니다.\n" 
				+ "이메일은" +mMeberInfo.mb_email+"입니다\n"
				+ "핸드폰번호는" +mMeberInfo.mb_phone+"입니다"
				);
			}
		}
	});
}
</script>
<body>
<form action="/findPw">
<input type="text" class="form-control" placeholder="아이디를 입력해주세요." id="findPw"  required autofocus>
			<button type="button" onclick='findPwBtn()'>비밀번호 찾기</button>			
</form>
</body>
</html>