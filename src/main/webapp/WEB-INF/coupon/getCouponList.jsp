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
	  <td class="">${coupon.c_num}</td>
	  <td class="">${coupon.c_name}</td>
	  <td class="">${coupon.c_per}</td>	
	</tr>
</c:forEach>
</table>

 
</body>
</html>