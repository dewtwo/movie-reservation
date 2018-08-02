<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/movieInfo.css'/>">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/starScore2.css'/>">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/starScore.js'/>"></script>

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
	<div class="film_comment">
		<h3>한줄평</h3>
		<div class="comment_input">
			<div class="score">
				<span class="star-input">
					<span class="input">
						<input type="radio" name="star-input" id="p1" value="1"><label for="p1">1</label>
						<input type="radio" name="star-input" id="p2" value="2"><label for="p2">2</label>
						<input type="radio" name="star-input" id="p3" value="3"><label for="p3">3</label>
						<input type="radio" name="star-input" id="p4" value="4"><label for="p4">4</label>
						<input type="radio" name="star-input" id="p5" value="5"><label for="p5">5</label>
						<input type="radio" name="star-input" id="p6" value="6"><label for="p6">6</label>
						<input type="radio" name="star-input" id="p7" value="7"><label for="p7">7</label>
						<input type="radio" name="star-input" id="p8" value="8"><label for="p8">8</label>
						<input type="radio" name="star-input" id="p9" value="9"><label for="p9">9</label>							
						<input type="radio" name="star-input" id="p10" value="10"><label for="p10">10</label>
					</span>
					<output for="star-input" name="score"><b>0</b>점</output>
				</span>
			</div>
			<div class="comment">
				<textarea rows="10" cols="30" id="review_contents"></textarea>
				<a class="btn_review" href="javascript:void(0);" onclick="insertReview(); return false;">등록</a>
				<input type="hidden" id="movie_number" value="${movieDetail.movie_number}">
			</div>
		</div>
		<div class="comment_list">
			<ul>
				<c:forEach var="comment" items="${reviewList}">
				<li>
					<div class="comment_box">
						<div class="comment_score">
							<span class="star_score">평점</span>
							<span class="score_result">${comment.score}</span>
						</div>
						<p class="comment_txt">
							${comment.review_contents}
						</p>
					</div>
					<div class="comment_id">
						<span>${comment.id}</span>
					</div>
				</li>
				</c:forEach>
			</ul>
		</div>
		<div class="paging"></div>
	</div>
	
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
	
<script type="text/javascript">
	var id = "<%= (String) session.getAttribute("id") %>";
	
	function insertReview(){
		var param = "";
		
		var score = $(".star-input>output>b").text();
		var comment = $(".comment>textarea").text();
		var movieNumber = $("#movie_number").attr("value");
		
		param = "movie_number="+movie_number+"&id="+id+"&review_contents="+comment+"&score="+score;
		
		$.ajax({
			url : "<c:url value='insertReview.do' />",
			type : "POST",
			data : param,
			dataType : "JSON",
			success : function(data, status) {
				var str = "";
				$.each(data.reviewList, function(index, value) {
					str += "<li>" 
							+"<div class='comment_box'>"
								+"<div class='comment_score'>" + "<span class='star_score'>평점</span>"
								+"<span class='score_result'>"+ value.score + "</span></div>"
								+"<p class='comment_txt'>" + value.review_contents + "</p>"
							+"</div>"
							+"<div class='comment_id'>"	+"<span>"+ value.id + "</span></div>"
						+"</li>";
				});
				$(".comment_list>ul").empty();
				$(".schedule_list.date_list>ul").append(str);
			}
		});
	}
	
	$(document).ready(function(){
		if(id == "null"){
			$("textarea[name='review_contents']").text("로그인 후 이용 가능합니다.").attr("disabled","disabled");
			$("button[name='btnComment']").attr("disabled","disabled");
		}
		
	});
	
</script>
</body>
</html>