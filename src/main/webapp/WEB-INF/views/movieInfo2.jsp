<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/movieInfo.css'/>">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</head>
<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
	
	<div class="film_heading">
		<h3>영화 상세 정보</h3>
		<hr>
	</div>
	<div class="film_info">
		<c:forEach var="movie" items="{movie}">
			<div class="film_image">
				<img alt="" src="${movieDetail.poster}">
				<a href="reservation.do" class="btn_reserve">예매하기</a>
			</div>
			<div class="film_detail">
				<div class="title">
					<strong>${movieDetail.title}</strong>
					<p>${movieDetail.sub_title}</p>
				</div>
				<div class="ranking">
					<p class="left_p">
						<span>예매율<strong>${movieRanking.rank}</strong>위</span>
						<span>(${movieRanking.percentage}%)</span>
					</p>
					<p class="right_p">
						평점
						<span class="starscore" style="width: 70%"><strong>${movieScore}</strong></span>
					</p>
				</div>
				<dl class="spec">
					<dt>감독 :</dt>
					<dd class="on">${movieDetail.director}</dd>
					<dt>배우 :</dt>
					<dd class="on">${movieDetail.actors}</dd>
					<dt>장르 :</dt>
					<dd>${movieDetail.genre}</dd>
					<dt>러닝타임 :</dt>
					<dd class="on">${movieDetail.running_time}</dd>
					<dt>등급 :</dt>
					<dd>${movieDetail.rating}세 이상 관람가</dd>
					<dt>개봉일 :</dt>
					<dd class="on">${movieDetail.release_date}</dd>
				</dl>
			</div>
			<div class="film_story">
				<h3>줄거리</h3>
				<p class="story_text">
					${movieDetail.contents}
				</p>
			</div>
		</c:forEach>
	</div>
	
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
</body>
</html>