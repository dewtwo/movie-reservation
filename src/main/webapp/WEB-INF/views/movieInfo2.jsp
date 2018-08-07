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
		<h2>��ȭ �� ����</h2>
		<hr class="my-4">
	</div>
	<div class="film_info">
		<c:forEach var="movie" items="{movie}">
			<div class="film_image">
				<img alt="" src="${movieDetail.poster}">
				<a href="reservation.do" class="btn btn-secondary btn_reserve">�����ϱ�</a>
			</div>
			<div class="film_detail">
				<div class="title">
					<strong>${movieDetail.title}</strong>
					<p>${movieDetail.sub_title}</p>
				</div>
				<div class="ranking">
					<p class="left_p">
						<span>������<strong>${movieRanking.rank}</strong>��</span>
						<span>(${movieRanking.percentage}%)</span>
					</p>
					<p class="right_p">
						����
						<span class="starscore" style="width: 70%"><strong>${movieScore}</strong></span>
					</p>
				</div>
				<dl class="spec">
					<dt>���� :</dt>
					<dd class="on">${movieDetail.director}</dd>
					<dt>��� :</dt>
					<dd class="on">${movieDetail.actors}</dd>
					<dt>�帣 :</dt>
					<dd>${movieDetail.genre}</dd>
					<dt>����Ÿ�� :</dt>
					<dd class="on">${movieDetail.running_time}</dd>
					<dt>��� :</dt>
					<dd>${movieDetail.rating}�� �̻� ������</dd>
					<dt>������ :</dt>
					<dd class="on">${movieDetail.release_date}</dd>
				</dl>
			</div>
			<div class="film_story">
				<h5>�ٰŸ�</h5>
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