<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/movieList2.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/bootstrap-custom.css'/>">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	function moveTab(){
		var page_name = "<%= (String)request.getAttribute("pageName") %>";
		if(page_name == "MovieListNow"){
			$("#tab_now").addClass("current");
			$("#movie_list_now").addClass("current");
		} else if(page_name == "MovieListSoon"){
			$("#tab_soon").addClass("current");
			$("#movie_list_soon").addClass("current");
		}
	}
	
	$(function(){
		moveTab();
	});
</script>
</head>
<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
	
	<ul class="selection_tab">
		<li id="tab_now" class="btn_tab" data-tab="movie_list_now"><a href="getMovieListNow.do">현재 상영작</a></li>
		<li id="tab_soon" class="btn_tab" data-tab="movie_list_soon"><a href="getMovieListSoon.do">상영 예정작</a></li>
	</ul>
	<div id="movie_list_now" class="movie_list">
		<ul>
			<c:forEach var="item" items="${movieListNow}" varStatus="status">
				<li>
					<div class="item_image">
						<span class="ranking">${status.count }</span>
						<a href="getMovieDetail.do?movie_number=${item.movie.movie_number}"><img alt="" src="${item.movie.poster}"></a>
					</div>
					<div class="item_contents">
						<a href="getMovieDetail.do?movie_number=${item.movie.movie_number}">
							<span id="rate${item.movie.rating}">${item.movie.rating}</span>&nbsp;${item.movie.title}</a>
						<span class="release">${item.movie.release_date}&nbsp;개봉</span>
					</div>
				</li>
			</c:forEach>
		</ul>
		<div class="btn_more">
			<a href="javascript:moreList();">더보기</a>
		</div>
	</div>
	
	<div id="movie_list_soon" class="movie_list">
		<ul>
			<c:forEach var="item" items="${movieListSoon}" varStatus="status">
				<li>
					<div class="item_image">
						<span class="ranking">${status.count }</span>
						<a href="getMovieDetail.do?movie_number=${item.movie_number}"><img alt="" src="${item.poster}"></a>
					</div>
					<div class="item_contents">
						<a href="getMovieDetail.do?movie_number=${item.movie_number}">
							<span id="rate${item.rating}">${item.rating}</span>&nbsp;${item.title}</a>
						<span class="release">${item.release_date}&nbsp;개봉</span>
					</div>
				</li>
			</c:forEach>
		</ul>
		<div class="btn_more">
			<a href="javascript:moreList();">더보기</a>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
	
	<script type="text/javascript">
		$(".selection_tab .btn_tab").click(function(){
			moveTab();
		});
		
		$(function(){
			$(".movie_list ul li").slice(0,8).show();
			if($(".movie_list ul li:hidden").length == 0){
				$(".btn_more").hide();
			}
			
			$(".btn_more").click(function(e){
				e.preventDefault();
				$(".movie_list ul li:hidden").slice(0,8).show();
				if($(".movie_list ul li:hidden").length == 0){
					$(".btn_more").hide();
				}
			});
		});
	</script>
</body>
</html>
