<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="ko">
<head>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/main.css'/>" />
</head>
<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
	
	<div id="slider">
		<a href="javascript:void(0);" class="control_next">></a>
		<a href="javascript:void(0);" class="control_prev"><</a>
		<ul class="slides">
			<c:forEach var="boxoffice" items="${boxOfficeList}" varStatus="status">
				<li><div class="box_office">
					<span class="ranking">${status.count }</span>
					<a href="getMovieDetail.do?movie_number=${boxoffice.movie.movie_number}">
						<img alt="${boxoffice.movie.title }" src="${boxoffice.movie.poster }"></a>
					<p><a href="getMovieDetail.do?movie_number=${boxoffice.movie.movie_number}">
						<span id="rate${boxoffice.movie.rating}">${boxoffice.movie.rating}</span>
						${boxoffice.movie.title }</a></p>
				</div></li>
			</c:forEach>
		</ul>  
	</div>
	
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
	
	<script type="text/javascript" src="<c:url value='/js/slide2.js'/>"></script>
</body>
</html>