<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../../header.jsp"%>
<style>
#searchNav { 
 	-webkit-justify-content: flex-end; 
 	justify-content: flex-end; 
} 

table {
	margin-left: auto;
	margin-right: auto;
	width: 90% !important;
}

.res_tbl_wrap {
	position: relative;
	overflow: hidden;
	margin: 0 auto;
	width: 75%;
}

.res_tbl_wrap table {
	display: table;
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
}

/* desktop only */
@media screen and (min-width: 1200px) {
	.res_tbl_wrap table thead tr th, .res_tbl_wrap table tbody tr td {
		padding: 12px 20px;
		font-size: 16px;
		line-height: 22px;
	}
}

/* mobile only */
@media screen and (max-width: 990px) {
	.res_tbl_wrap table col {
		width: 100% !important;
	}
	.res_tbl_wrap table thead {
		display: none;
	}
	.res_tbl_wrap table tbody tr {
		border-bottom: 1px solid #efefef;
	}
	.res_tbl_wrap table tbody tr td {
		width: 100%;
		display: flex;
		margin-bottom: 2px;
		padding: 5px;
		border-bottom: none;
		font-size: 14px;
		line-height: 18px;
	}
	.res_tbl_wrap table tbody tr td:first-child, .res_tbl_wrap table tbody tr th:first-child
		{
		padding-top: 16px;
	}
	.res_tbl_wrap table tbody tr td:last-child, .res_tbl_wrap table tbody tr th:last-child
		{
		padding-bottom: 15px;
	}
	.res_tbl_wrap table tbody tr td:before {
		display: inline-block;
		margin-right: 12px;
		-webkit-box-flex: 0;
		-ms-flex: 0 0 100px;
		flex: 0 0 100px;
		font-weight: 700;
		content: attr(data-label);
	}
}

/* tr:hover { */
/* 	background-color: #f8f8ff; */
/* } */

html, body {
	height: 100%;
}

.wrap {
	position: relative;
	min-height: 100%;
	padding-bottom: 200px;
}

</style>
<script>
function deletecheck(mb_id){
		if (confirm("정말 삭제하시겠습니까?")){ 
			$('.deleteform'+mb_id).submit();
			 }
	}	
</script>
<body>
	<br><br><br>
	<div class="wrap">
		<div class="container">
			<h2 style="text-align: center;">회원 목록</h2>
		</div>
		<br><br><br>
		<div class="res_tbl_wrap">
		<nav id="searchNav" class="navbar navbar-expand-sm navbar-dark">
			<form class="form-inline" action="getMemberList" method="post">
				<select class="form-control" id="sel1" name="searchCondition"
					style="display: inline-block !important; margin-right: 10px;">
					<c:forEach items="${conditionMap}" var="option">
						<option value="${option.value}">${option.key}</option>
					</c:forEach>
					<%-- 		<option value="${conditionMap['제목']}">${conditionMap['제목']}</option> --%>
					<%-- 		<option value="${conditionMap['내용']}">${conditionMap['내용']}</option> --%>
				</select> <input class="form-control mr-sm-2" type="text"
					name="searchKeyword" placeholder="검색어를 입력하세요.">
				<button class="btn btn-outline-primary" type="submit">검색</button>
			</form>
				<button type="button"class="btn btn-outline-primary">회원등록</button>
		</nav>

			<table class="table">
				<colgroup>
					<col style="width: 10%">
					<col style="width: 10%">
					<col style="width: 20%">
					<col style="width: 15%">
					<col style="width: 15%">
					<col style="width: 20%">
					<col style="width: 10%">
				</colgroup>
				<thead class="btn-primary">
					<tr>
						<th>번호</th>
						<th>아이디</th>
						<th>이름</th>
						<th>주소</th>
						<th>전화번호</th>
						<th>생년월일</th>
						<th>이메일</th>
						<th>회원관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${memberList}" var="member">
						<tr onclick="selTr(${member.mb_no})" style="cursor: pointer;"
							class="text-center">
							<td scope="row" data-label="번호">${member.mb_no}</td>
							<td data-label="아이디">${member.mb_id}</td>
							<td data-label="이름">${member.mb_name}</td>
							<td data-label="주소">${member.mb_address}</td>
							<td data-label="전화번호">${member.mb_phone}</td>
							<td data-label="생년월일">${member.mb_birth}</td>
							<td data-label="이메일">${member.mb_email}</td>
							<td data-label="회원관리"><input type="button"
								class="btn btn-outline-danger" value="삭제"
								onclick="deletecheck('${member.mb_id}');">
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<br> <br>
			<div id="btnBox">
				<!-- 반복처리할 태그 시작-->
				<c:if test="${paging.nowPageBtn > 1 }">
					<a href="getMemberList.do?nowPageBtn=${paging.nowPageBtn -1 }">&lt;</a>
				</c:if>
				<c:forEach begin="${paging.startBtn}" end="${paging.endBtn }"
					step="1" var="i">
					<c:choose>
						<c:when test="${paging.nowPageBtn == i}">
							<a class="aSel">${i}</a>
						</c:when>
						<c:otherwise>
							<a href="getMemberList.do?nowPageBtn=${paging.nowPageBtn}">${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${paging.nowPageBtn < paging.totalBtnCnt }">
					<a href="getMemberList.do?nowPageBtn=${paging.nowPageBtn +1 }">&gt;</a>
				</c:if>
				<!-- 반복처리할 태그 끝 -->
			</div>
			<br> <br>
			<div id="footer">
				
			</div>
		</div>
	</div>

</body>
</html>
