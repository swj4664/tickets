<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
Kakao.init('1ea44200cb8cf7bb0a768d9c219c84a0'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
             console.log(response);
          },
          fail: function (error) {
            console.log(error);
          },
        })
      },
      fail: function (error) {
        console.log(error);
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
           console.log(response);
        },
        fail: function (error) {
          console.log(error);
        },
      })
      Kakao.Auth.setAccessToken(undefined);
    }
  }  
  
</script>
</head>
<body>

<button onclick="kakaoLogin()">
	<img src="images/kakao_login_medium_narrow.png" style="height:60px"/>
</button>
</body>
</html>