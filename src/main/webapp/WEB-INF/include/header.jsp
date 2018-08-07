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
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.2/litera/bootstrap.min.css" rel="stylesheet" integrity="sha384-EHn394B6EAtw4HZN4uqeUmZQO1bj/l7+L9ToHR0izJSXw2BNB5cuhR3weBJup/95" crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value='/css/header.css'/>" />
<title>CINE LIVE</title>
<script>
   function inform() {
      var result = confirm("로그아웃하시겠습니까?");
      if (result == true) {
         location.href = "logout.do";
      }
   }
</script>
</head>
<body>

<div id="header">
<nav class="navbar navbar-expand-lg navbar-dark" id="member">
  <div class="collapse navbar-collapse" >
    <ul class="nav navbar-nav ml-auto">
      <c:choose>
        <c:when test="${sessionScope.id == null }">
          <li class="nav-item"><a class="nav-link" href="loginPage.do">로그인</a></li>
        </c:when>
        <c:otherwise>
          <li class="nav-item"><a class="nav-link" onclick="inform()">로그아웃</a></li>
        </c:otherwise>
      </c:choose>
      <c:if test = "${sessionScope.id == null }">
        <li class="nav-item"><a class="nav-link" href="joinPage.do">회원가입</a></li>
      </c:if>
      <c:if test="${sessionScope.id != null }">
        <li class="nav-item"><a class="nav-link" href="allReservationList.do?id=${sessionScope.id}">마이페이지</a></li>
      </c:if>
    </ul>
  </div>
</nav>
<div id="div-logo">
  <a id="logo" href="getBoxOfficeList.do">CINE LIVE</a>
</div>
<nav class="navbar navbar-expand-lg navbar-dark" id="menu">
  <div class="collapse navbar-collapse" >
    <ul class="navbar-nav m-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="getMovieListNow.do" role="button" aria-haspopup="true" aria-expanded="false">영화</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="getMovieListNow.do">현재 상영작</a>
          <a class="dropdown-item" href="getMovieListSoon.do">상영 예정작</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">예매</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="getScheduleCinemaList.do?region_code=1">상영 시간표</a>
          <a class="dropdown-item" href="reservation.do">빠른 예매</a>
        </div>
      </li>
      <li class="nav-item"><a class="nav-link" href="cinemaDetail.do?cinema_number=1">영화관</a></li>
      
    </ul>
  </div>
</nav>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>