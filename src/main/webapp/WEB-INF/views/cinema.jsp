<%@page import="com.project.biz.vo.CinemaVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- 
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
 -->
<link rel="stylesheet" type="text/css" href="/css/cinema.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<title>CINE LIVE</title>

<script type="text/javascript">
   var a;
   var b;
   var c;
   var d;

   $(document).ready(function() {
      $(".location li").hover(function() {
         $(this).find("li").show();
      }, function() {
         $(this).find("li").hide();
      });
   });

   /*
   $(document).ready(function(){
      $(".detail1 li).click(function() {
         $(this).find("a").toggle();
         
         //region_code = $(this).find("a").attr('value');
      });
   });
    */
</script>

</head>

<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
	<br>

	<div id="main">
		<h1>영화관</h1>
		<br> <br>
		<hr>
		<ul class="location">
			<li><a>서울</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=1">강남</a></li>
					<li><a href="cinemaDetail.do?cinema_number=2">홍대</a></li>
					<li><a href="cinemaDetail.do?cinema_number=3">대학로</a></li>
					<li><a href="cinemaDetail.do?cinema_number=4">합정</a></li>
					<li><a href="cinemaDetail.do?cinema_number=21">김포공항</a></li>
					<li><a href="cinemaDetail.do?cinema_number=22">코엑스</a></li>
				</ul></li>

			<li><a>경기</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=5">고양스타필드</a></li>
					<li><a href="cinemaDetail.do?cinema_number=23">분당</a></li>
					<li><a href="cinemaDetail.do?cinema_number=24">수원</a></li>
				</ul></li>

			<li><a>인천</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=6">인천</a></li>
					<li><a href="cinemaDetail.do?cinema_number=25">연수</a></li>
					<li><a href="cinemaDetail.do?cinema_number=26">부평</a></li>
				</ul></li>

			<li><a>충청/대전</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=7">대전둔산</a></li>
					<li><a href="cinemaDetail.do?cinema_number=27">세종</a></li>
				</ul></li>

			<li><a>부산/대구/경상</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=8">서면</a></li>
					<li><a href="cinemaDetail.do?cinema_number=28">동대구</a></li>
				</ul></li>

			<li><a>광주/전라</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=9">광주</a></li>
					<li><a href="cinemaDetail.do?cinema_number=29">전주</a></li>
				</ul></li>

			<li><a>강원</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=10">속초</a></li>
				</ul></li>

			<li><a>제주</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=11">제주</a></li>
				</ul></li>
		</ul>
		<br> <br>
		<hr>
		<br> <br>
		<c:choose>
			<c:when test="${cinemaDetail==null}">

				<h2>강남</h2>
				<br>
				<button type="submit" class="btn-primary"
					onclick="location.href = 'reservation.do?cinema=1';">예매</button>
				<br>
				<br>
				<br>

				<div id="map">
					<script>
                  function initMap() {
                     var map_api = {
                        lat : 37.501743,
                        lng : 127.026249
                     };

                     var map = new google.maps.Map(document
                           .getElementById('map'), {
                        scaleControl : true,
                        center : map_api,
                        zoom : 17
                     });

                     var infowindow = new google.maps.InfoWindow;
                     infowindow.setContent('<b>지도</b>');

                     var marker = new google.maps.Marker({
                        map : map,
                        position : map_api
                     });
                     marker.addListener('click', function() {
                        infowindow.open(map, marker);
                     });
                  }
               </script>

					<script
						src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAGdFF6TxoKiexyoiJCX64V67F3li0mPxw&language=ko&callback=initMap"></script>
				</div>

				<br>
				<br>
				<h4>주소 : 서울 서초구 역삼1동 강남대로 438</h4>
				<h4>전화번호 : 1234-1234</h4>
				<br>
				<br>
				<hr>
				<h4>교통 안내</h4>
				<br>

				<h5>버스</h5>
				<br>
				<h5>140번, 144번, 145번, 471번, 1500번, 360번, 402번, 420번, 470번, 407번</h5>

				<br>

				<h5>지하철</h5>
				<br>
				<h5>
					2호선 강남역 : 11번 출구 <br> 9호선 신논현역 : 5번출구
				</h5>
				<br>

			</c:when>

			<c:otherwise>

				<c:forEach var="cinemaDetail" items="${cinemaDetail }">
					<h2>${cinemaDetail.cinema_name }</h2>
					<br>
					<button type="submit" class="btn-primary"
						onclick="location.href = 'reservation.do?cinema=${cinemaDetail.cinema_number}';">예매</button>

					<br>
					<br>
					<br>

					<div id="map">
						<script>
                     a = "${cinemaDetail.map_api }";
                     b = a.split('/');
                     c = parseFloat(b[0]);
                     d = parseFloat(b[1]);

                     function initMap() {
                        var map_api = {
                           lat : c,
                           lng : d
                        };

                        var map = new google.maps.Map(document
                              .getElementById('map'), {
                           scaleControl : true,
                           center : map_api,
                           zoom : 17
                        });

                        var infowindow = new google.maps.InfoWindow;
                        infowindow.setContent('<b>지도</b>');

                        var marker = new google.maps.Marker({
                           map : map,
                           position : map_api
                        });
                        marker.addListener('click', function() {
                           infowindow.open(map, marker);
                        });
                     }
                  </script>

						<script
							src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAGdFF6TxoKiexyoiJCX64V67F3li0mPxw&language=ko&callback=initMap"></script>
					</div>

					<br>
					<br>
					<h4>주소 : ${cinemaDetail.location }</h4>
					<h4>전화번호 : ${cinemaDetail.tel }</h4>
					<br>
					<br>
					<hr>
					<h4>교통 안내</h4>
					<br>

					<h5>버스</h5>
					<br>
					<h5>${cinemaDetail.transport_bus }</h5>

					<br>

					<h5>지하철</h5>
					<br>
					<h5>${cinemaDetail.transport_subway }</h5>
					<br>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>