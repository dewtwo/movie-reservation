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
        <label for="email" class="label-input">���̵�</label>
        <input type="text" class="form-control" id="email" name="id" placeholder="���̵� �Է��ϼ���.">
      </div>
      <div class="form-group">
        <label for="pwd" class="label-input">��й�ȣ</label>
        <input type="password" class="form-control" id="pwd" name="password" placeholder="��й�ȣ�� �Է��ϼ���.">
      </div>
      <button type="submit" id="btn-login" class="btn btn-secondary btn-lg btn-block">�α���</button>
    
       <c:choose>
          <c:when test="${msg == 'success'}">
             <script>
                document.location.href = "allReservationList.do?id=${id}";
             </script>
          </c:when>

          <c:when test="${msg == 'failure'}">
             <script>
                alert("���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
             </script>
          </c:when>
       </c:choose>
       <div class="btn-sub">
         <a href="/joinPage.do">ȸ������</a>
         <a href="/idPwdPage.do">���̵�/��й�ȣ ã��</a>
       </div>
    </fieldset>
  </form>
</div>
<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

<script type="text/javascript">
   function check() {
      if (document.loginForm.id.value == "") {
         alert("id�� �Է��ϼ���!");
         document.loginForm.id.focus();
         return false;
      }
      if (document.loginForm.password.value == "") {
         alert("��й�ȣ�� �Է��ϼ���!");
         document.loginForm.password.focus();
         return false;
      }
   }
</script>
</body>
</html>