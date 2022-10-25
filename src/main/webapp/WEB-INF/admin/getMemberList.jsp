<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
#searchNav {
	-webkit-justify-content: flex-end;
	justify-content: flex-end;
}

a {
	text-decoration: none;
	font-weight: bolder;
	display: inline-block;
	padding: 5px 10px;
	background-color: blue;
	color: #fff;
	border: 1px solid #777;
	border-radius: 5px;
}

a:hover, a:active {
	background-color: red;
}

a.aSel {
	color: red;
}

div#btnBox {
	text-align: center;
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
	<div class="jumbotron">
		<h1>회원목록</h1>
	</div>
	<nav id="searchNav" class="navbar navbar-expand-sm navbar-dark">
		<form class="form-inline" action="getMemberList" method="post">
			<select class="form-control" id="sel1" name="searchCondition"
				style="display: inline-block !important; margin-right: 10px;">
				<c:forEach items="${conditionMap}" var="option">
					<option value="${option.value}">${option.key}</option>
				</c:forEach>
				<%-- 		<option value="${conditionMap['제목']}">${conditionMap['제목']}</option> --%>
				<%-- 		<option value="${conditionMap['내용']}">${conditionMap['내용']}</option> --%>
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
					<th>아이디</th>
					<th>이름</th>
					<th>주소</th>
					<th>전화번호</th>
					<th>생년월일</th>
					<th>이메일</th>
					<th data-label="회원관리"><input type="button"
						class="btn btn-outline-danger" value="삭제"
						onclick="deletecheck('${member.mb_id}');" /></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${memberList}" var="member">
					<tr onclick="selTr(${member.mb_no})" style="cursor: pointer;">
						<td class="tdCenter">${member.mb_no}</td>
						<td class="tdCenter">${member.mb_id}</td>
						<td class="tdCenter">${member.mb_name}</td>
						<td class="tdCenter">${member.mb_address}</td>
						<td class="tdCenter">${member.mb_phone}</td>
						<td class="tdCenter">${member.mb_birth}</td>
						<td class="tdCenter">${member.mb_email}</td>
						<td name="deleteform" class="deleteform${member.mb_id}"
							class="tdCenter" action="./memberDeleteAction.me" method="post"
							style="display: none;">
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
			<button type="button" id="conWrite" class="btn btn-primary">글쓰기</button>
		</div>
	</div>

</body>
</html>
