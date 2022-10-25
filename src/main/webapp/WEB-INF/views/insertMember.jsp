<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멤버등록</title>
<%@ include file="../../header.jsp"%>
</head>
<body>
	<div class="jumbotron">
		<h1>멤버등록</h1>
	</div>
		<div class="container">
				<form action="insertMember" method="post" >
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">아이디</span>
				</div>
				<input type="text" class="form-control" name="mb_id"
					placeholder="아이디" required>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">비밀번호</span>
				</div>
				<input type="password" class="form-control" name="mb_pw"
					placeholder="패스워드" required>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">핸드폰번호</span>
				</div>
				<input type="text" class="form-control" name="mb_phone"
					placeholder="핸드폰번호" required>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text">비밀번호</span>
				</div>
				<input type="text" class="form-control" name="mb_email"
					placeholder="이메일주소" required>
			</div>
			
			<div id="footer">
				<button id="conRegister" type="submit" class="btn btn-primary">회원가입</button>
				
			</div>
			</form>
		</div>
</body>
</html>