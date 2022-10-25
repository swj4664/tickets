<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰 목록</title>
</head>
<body>
<table>

<c:forEach items="${couponList}" var="coupon">

	<tr>
	  <td class="">쿠폰명 : ${coupon.c_name}</td>
	  <td class="">할인율 : ${coupon.c_per}%</td>	
	  <td class="">만료날짜 : ${coupon.c_date}</td>
	  <td class=""><button onclick="location.href='/getCoupon?c_num=${coupon.c_num}'">수정</button></td>
	  <td class=""><button onclick="location.href='/deleteCoupon?c_num=${coupon.c_num}'">삭제 </button></td>
	</tr>
</c:forEach>
</table>

 <a href="/">인덱스 ㄱ </a>
  <div class="container ">
			
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
<!-- 		맨처음 -->
						<li class="page-item "><a class="page-link"
							href="getCouponList?nowPageBtn=1">&laquo;</a></li>
							
							<c:if test="${paging.nowPageBtn > 1 }">
							<li class="page-item "><a class="page-link"
							href="getCouponList?nowPageBtn=${paging.nowPageBtn-1}">&lt;</a></li>
							</c:if>

<!-- 반복처리 태그 -->				
							<c:forEach begin="${paging.startBtn}" end="${paging.endBtn }" step="1" var="i" >
								<c:choose>
									<c:when test="${paging.nowPageBtn==i}">
									<li class="page-item active"><a class="page-link"
									href="getCouponList?nowPageBtn=${i}">${i}</a></li>
									</c:when>
									<c:otherwise>
									<li class="page-item "><a class="page-link"
									href="getCouponList?nowPageBtn=${i}">${i}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
<!-- 		반복 끝 -->
								<c:if test="${paging.nowPageBtn < paging.totalBtnCnt }">
							<li class="page-item "><a class="page-link"
							href="getCouponList?nowPageBtn=${paging.nowPageBtn+1}">&gt;</a></li>
							</c:if>
<!-- 		맨끝 -->
								<li class="page-item"><a class="page-link"
							href="getCouponList?nowPageBtn=${paging.totalBtnCnt}">&raquo;</a></li>
								
					</ul>
				</nav>
			
				</div>
  
  
  
  
  
  
  
</body>
</html>