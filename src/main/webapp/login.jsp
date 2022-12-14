<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../header.jsp"%>
<style>
.login-kakao {
	border: 0;
	background-color: transparent;
}
</style>
</head>
<body>
	<div class="jumbotron">
		<h1>로그인</h1>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">

			<%
			if (request.getParameter("error") != null) {
				out.println("<div class='alert alert-danger'>");
				out.println("아이디와 비밀번호를 확인해 주세요");
				out.println("</div>");
			}
			%>
			<form class="form-signin" action="logincheck" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label>
					<!-- 					name속성(파라미터) 있어야 데이터 전송됨  -->
					<input type="text" class="form-control" placeholder="ID"
						name="mb_id" required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label> <input
						type="password" class="form-control" placeholder="Password"
						name="mb_pw" required>
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
				<a href="/login/kakao"><img
					src="images/kakao_login_medium_narrow.png" style="height: 60px" /></a>
				<button type="button" onclick="location.href='findId.jsp'">아이디찾기</button>
				<button type="button" onclick="location.href='findPw.jsp'">비밀번호찾기</button>	
			</form>
		</div>
	</div>

</body>
</html>