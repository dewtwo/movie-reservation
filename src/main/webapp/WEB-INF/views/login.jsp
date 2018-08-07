<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/myPage.css">
<title>CINE LIVE</title>
<body>
<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
<div id="mypage">
  <h2>LOGIN</h2>
  <hr class="my-4">
  <form name="loginForm" action="/loginCheck.do" method="post" onsubmit="return check()">
  	<fieldset id="login">
  	  <div class="form-group">
        <label for="email" class="label-input">아이디</label>
        <input type="text" class="form-control" id="email" name="id" placeholder="아이디를 입력하세요.">
      </div>
      <div class="form-group">
        <label for="pwd" class="label-input">비밀번호</label>
        <input type="password" class="form-control" id="pwd" name="password" placeholder="비밀번호를 입력하세요.">
      </div>
      <button type="submit" id="btn-login" class="btn btn-secondary btn-lg btn-block">로그인</button>
    
       <c:choose>
          <c:when test="${msg == 'success'}">
             <script>
                document.location.href = "allReservationList.do?id=${id}";
             </script>
          </c:when>

          <c:when test="${msg == 'failure'}">
             <script>
                alert("아이디 또는 비밀번호가 일치하지 않습니다.");
             </script>
          </c:when>
       </c:choose>
       <div class="btn-sub">
         <a href="/joinPage.do">회원가입</a>
         <a href="/idPwdPage.do">아이디/비밀번호 찾기</a>
       </div>
    </fieldset>
  </form>
</div>
<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

<script type="text/javascript">
   function check() {
      if (document.loginForm.id.value == "") {
         alert("id를 입력하세요!");
         document.loginForm.id.focus();
         return false;
      }
      if (document.loginForm.password.value == "") {
         alert("비밀번호를 입력하세요!");
         document.loginForm.password.focus();
         return false;
      }
   }
</script>
</body>
</html>