<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="ko">
<head>
<!-- meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.2/minty/bootstrap.min.css" rel="stylesheet" integrity="sha384-ZCyhLHmqgPJ/qW/xn+zQu7JrywSUOgV7SkjrnkGDss+6/qs+4SPDrS6qq4IOG0N9" crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value='/css/header.css'/>" />
<title>CINE LIVE</title>
<script>
   function inform() {
      var result = confirm("�α׾ƿ��Ͻðڽ��ϱ�?");
      if (result == true) {
         location.href = "logout.do";
      }
   }
</script>
</head>
<body>

	<div id="header">
		<div id="member">

			<ul>
				<c:choose>
					<c:when test="${sessionScope.id == null }">
						<li><a href="loginPage.do">�α���</a></li>
					</c:when>
					<c:otherwise>
						<li><a onclick="inform()">�α׾ƿ�</a></li>
					</c:otherwise>
				</c:choose>
				
				<c:if test = "${sessionScope.id == null }">
				<li><a href="joinPage.do">ȸ������</a></li>
				</c:if>
				
				<c:if test="${sessionScope.id != null }">
					<li><a href="allReservationList.do?id=${sessionScope.id}">����������</a></li>
				</c:if>
			</ul>

		</div>
		<hr>
		<a id="logo" href="getBoxOfficeList.do">CINE LIVE</a>
		<div id="menu">
			<center>
				<nav id="topmenu" class="navbar navbar-default">
				<ul class="nav nav-pills" id="menu_nav">
					<li><a href="getMovieListNow.do">��ȭ</a>
						<ul id="submenu">
							<li><a href="getMovieListNow.do">���� ����</a></li>
							<li><a href="getMovieListSoon.do">�� ������</a></li>
						</ul></li>
					<li><a href="#">����</a>
						<ul id="submenu">
							<li><a href="getScheduleCinemaList.do?region_code=1">�� �ð�ǥ</a></li>
							<li><a href="reservation.do">���� ����</a></li>
						</ul></li>
					<li><a href="getCinemaList.do">����</a></li>
				</ul>
				</nav>
			</center>

		</div>
		<hr>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>