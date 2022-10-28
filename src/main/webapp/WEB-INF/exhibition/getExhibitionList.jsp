<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*,com.ticket.biz.exhibition.ExhibitionVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전시 목록</title>
<!-- header -->
<%@ include file="/header.jsp"%>
<!-- header end -->
<style>
#searchNav {
	-webkit-justify-content: flex-end;
	justify-content: flex-end;
}
#btn {
	text-decoration:none;
	display: inline-block;
	padding: 5px 10px;
	background-color: blue;
	color: #fff;
	border: 1px solid #777;
	border-radius: 5px;
}
#btn:hover, #btn:active {
	background-color: red;
}
</style>
<body>
	<div class="jumbotron">
		<h1>공지 사항</h1>
	</div>
	<nav id="searchNav" class="navbar navbar-expand-sm navbar-dark">
		<form class="form-inline" action="getBoardList.do" method="post">
			<select class="form-control" id="sel1" name="searchCondition"
				style="display: inline-block !important; margin-right: 10px;">
<%-- 				<c:forEach items="${conditionMap}" var="selItem"> --%>
<%-- 					<option value="${selItem.value}">${selItem.key}</option> --%>
<%-- 				</c:forEach> --%>
			</select> <input class="form-control mr-sm-2" type="text" name="searchKeyword"
				placeholder="검색어를 입력하세요.">
			<button class="btn btn-success" type="submit">검색</button>
		</form>
	</nav>
	<div class="container-fluid">
		<table class="table table-hover">
			<thead class="btn-primary">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>가격</th>
					<th>전시일자</th>
					<th>장소</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${exhibitionList}" var="exhibition">
					<tr onclick="selTr(${exhibition.exh_no})" style="cursor: pointer;">
						<td class="tdCenter">${exhibition.exh_no}</td>
						<td>${exhibition.exh_title}</td>
						<td class="tdCenter">${exhibition.exh_price}</td>
						<td class="tdCenter">${exhibition.exh_st_date} ~ ${exhibition.exh_end_date}</td>
						<td class="tdCenter">${exhibition.hall}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br> <br>
		<div>
<!-- 		반복처리할 태그 시작 -->
<%-- <c:forEach begin="1" end="${paging.totalBtnCnt}" step="1" var="i"> --%>
<%-- 		<a id="btn" href="getBoardList.do?nowPageBtn=${i}">${i}</a> --%>
<%-- </c:forEach> --%>
<!-- 		반복처리할 태그 끝 -->
		</div><br><br>
	</div>

</body>
</html>