<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/header.css'/>" />

<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/bootstrap-custom.css'/>" />

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
</body>
</html>