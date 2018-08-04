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
		<h3>��ȭ �� ����</h3>
		<hr>
	</div>
	<div class="film_info">
		<c:forEach var="movie" items="{movie}">
			<div class="film_image">
				<img alt="" src="${movieDetail.poster}">
				<a href="reservation.do" class="btn_reserve">�����ϱ�</a>
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
				<h3>�ٰŸ�</h3>
				<p class="story_text">
					${movieDetail.contents}
				</p>
			</div>
		</c:forEach>
	</div>
	
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
</body>
</html>