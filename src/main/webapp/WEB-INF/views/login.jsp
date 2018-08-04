<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap-custom.css'/>">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<title>CINE LIVE</title>

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
</head>
<body>

   <jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
   

   <br>
   <center>
      <h1>�α���</h1>
   </center>
   <br>
   <form name="loginForm" action="/loginCheck.do" method="post"
      onsubmit="return check()">
      
      
      
      <center>
         <table>
            <tr>
               <th class="tdlogin">���̵�</th>
               <th align="center"><input type="text" class="form-control"
                  id="email" name="id" placeholder="���̵� �Է��ϼ���."></th>
               <td class="loginbtn" rowspan="2"><button type="submit" class="btn btn-default">�α���</button></td>
            </tr>
            <tr>
               <th class="tdlogin">��й�ȣ</td>
               <th align="center"><input type="password" class="form-control"
                  id="pwd" name="password" placeholder="��й�ȣ�� �Է��ϼ���."></td>
            </tr>
            <tr>
               <td></td>
               <td>
                  
               </td>
            </tr>
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
            <tr>
               <td></td>
               <td>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="/joinPage.do">ȸ������</a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
                  href="/idPwdPage.do">���̵�/��й�ȣ ã��</a>
               </td>
            </tr>
         </table>
      </center>

   </form>
   <jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>