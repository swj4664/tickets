<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- header -->
<%@ include file="header.jsp"%>
<!-- header end -->
</head>
<body>
드랍다운눌러서 회원등록누르면 인덱스405떠서 오류떠요 아직수정중이예여
<br>
<br>
<a href="/getMemberList">회원목록</a>
<!-- <a href="/getMemberList">회원 결제</a> -->
<!-- <a href="/getMemberList">관리자 결제목록</a> -->
<a href="/getCouponList"> 쿠폰목록</a>




   <div class="container">
   <div class="row justify-content-md-center">
   <form action="/insertCoupon" method="post"> 
      <fieldset>
            <legend>쿠폰등록</legend>      
                  <div class="row">
                  <label for="c_name">쿠폰명</label>   
               <input class="form-control" type="text" name="c_name" id="c_name" required="required" autocomplete="off">                     
               <div class="col">
               <label for="c_per">할인율</label>   
               <input class="form-control" type="number" name="c_per"  id="c_per" required="required" max="100">      
               </div>
               <div class="col">
               <label for="c_date">만료날짜</label>   
               <input class="form-control" type="date" name="c_date"  id="c_date" required="required">      
               </div>
               <div class="col-2">   
                  <button class="btn btn-primary btn-lg" type="submit" >등록</button>
               </div>
               </div>
            
         </fieldset>
   </form>
   </div>
   
   </div>
</body>
</html>