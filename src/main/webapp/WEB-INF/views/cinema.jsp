<%@page import="com.project.biz.vo.CinemaVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/cinema.css">
<title>CINE LIVE</title>
</head>
<body>
<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>

	<div id="main">
		<h2>영화관</h2>
		<hr class="my-4">
		<div class="cinema_list">
			<ul class="location">
				<li><a id="l1" class="selected">서울</a></li>
				<li><a id="l2">경기</a></li>
				<li><a id="l3">인천</a></li>
				<li><a id="l4">충청/대전</a></li>
				<li><a id="l5">부산/대구/경상</a></li>
				<li><a id="l6">광주/전라</a></li>
				<li><a id="l7">강원</a></li>
				<li><a id="l8">제주</a></li>
			</ul>
			<ul class="location-1 selected" id="cinema-1">
				<li><a href="cinemaDetail.do?cinema_number=1">강남</a></li>
				<li><a href="cinemaDetail.do?cinema_number=2">홍대</a></li>
				<li><a href="cinemaDetail.do?cinema_number=3">대학로</a></li>
				<li><a href="cinemaDetail.do?cinema_number=4">합정</a></li>
				<li><a href="cinemaDetail.do?cinema_number=21">김포공항</a></li>
				<li><a href="cinemaDetail.do?cinema_number=22">코엑스</a></li>
			</ul>
			<ul class="location-1" id="cinema-2">
				<li><a href="cinemaDetail.do?cinema_number=5">고양스타필드</a></li>
				<li><a href="cinemaDetail.do?cinema_number=23">분당</a></li>
				<li><a href="cinemaDetail.do?cinema_number=24">수원</a></li>
			</ul>
			<ul class="location-1" id="cinema-3">
				<li><a href="cinemaDetail.do?cinema_number=6">인천</a></li>
				<li><a href="cinemaDetail.do?cinema_number=25">연수</a></li>
				<li><a href="cinemaDetail.do?cinema_number=26">부평</a></li>
			</ul>
			<ul class="location-1" id="cinema-4">
				<li><a href="cinemaDetail.do?cinema_number=7">대전둔산</a></li>
				<li><a href="cinemaDetail.do?cinema_number=27">세종</a></li>
			</ul>
			<ul class="location-1" id="cinema-5">
				<li><a href="cinemaDetail.do?cinema_number=8">서면</a></li>
				<li><a href="cinemaDetail.do?cinema_number=28">동대구</a></li>
			</ul>
			<ul class="location-1" id="cinema-6">
				<li><a href="cinemaDetail.do?cinema_number=9">광주</a></li>
				<li><a href="cinemaDetail.do?cinema_number=29">전주</a></li>
			</ul>
			<ul class="location-1" id="cinema-7">
				<li><a href="cinemaDetail.do?cinema_number=10">속초</a></li>
			</ul>
			<ul class="location-1" id="cinema-8">
				<li><a href="cinemaDetail.do?cinema_number=11">제주</a></li>
			</ul>
		</div>
		<div id="cinema_detail">
		<c:forEach var="cinemaDetail" items="${cinemaDetail }">
			<h3>${cinemaDetail.cinema_name }</h3>
			<div id="map"></div>
			<div id="information">
				<p class="detail">주소 : ${cinemaDetail.location }</p>
				<p class="detail">전화번호 : ${cinemaDetail.tel }</p>
				<p class="detail">교통 안내</p>
				<p class="detail">버스 : ${cinemaDetail.transport_bus }</p>
				<p class="detail">지하철 : ${cinemaDetail.transport_subway }</p>
			</div>
		</c:forEach>
		</div>
	</div>
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=woSgU3lP0fbJQQEuoohN&submodules=geocoder"></script>
<script>
	var point = "${cinemaDetail[0].map_api}";
	var idx = point.indexOf(',');
	var x = point.substring(0, idx);
	var y = point.substring(idx+1);
	$(function(){
		var mapOptions = {
		    center: new naver.maps.LatLng(x, y),
		    zoom: 11
		};

		var map = new naver.maps.Map('map', mapOptions);
		
		var marker = new naver.maps.Marker({
		    position: new naver.maps.LatLng(x, y),
		    map: map
		});
		
		$(".location>li>a").click(function(){
			$(".location>li>a").removeClass("selected");
			$(this).addClass("selected");
			var index = $(this).attr("id").substring(1);
			$(".location-1").removeClass("selected");
			$("#cinema-"+index).addClass("selected");
		})
	});
	
</script>
	
</body>
</html>