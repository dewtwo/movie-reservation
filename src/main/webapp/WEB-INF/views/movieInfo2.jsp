<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/movieInfo.css'/>">
</head>
<body>
<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
<div id="movie_info">
	<div class="film_heading">
		<h2>영화 상세 정보</h2>
		<hr class="my-4">
	</div>
	<div class="film_info">
		<c:forEach var="movie" items="{movie}">
			<div class="film_image">
				<img alt="" src="${movieDetail.poster}">
				<a href="reservation.do" class="btn btn-secondary btn_reserve">예매하기</a>
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
				<h5>줄거리</h5>
				<p class="story_text">
					${movieDetail.contents}
				</p>
			</div>
		</c:forEach>
	</div>
</div>	
<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
</body>
</html>