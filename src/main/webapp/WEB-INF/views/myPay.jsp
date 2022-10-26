<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table" style="width: 100%; border-collapse: collapse; table-layout: fixed;">
<c:forEach items="${payList}" var="payList">
	<tr>
	  <td class="text-center"> ${payList.p_mer}</td>
	  <td class="text-center"> ${payList.p_date}</td>
<%-- 	  <td class="text-center"> ${payList.exh_no}</td> --%>
<%-- 	  <td class="text-center"> ${payList.exh_title}</td> --%>
	  <td class="text-center"> ${payList.buyer}</td>
	  <td class="text-center"> ${payList.buyer.tel}</td>
	</tr>
</c:forEach>
</table>

</body>
</html>