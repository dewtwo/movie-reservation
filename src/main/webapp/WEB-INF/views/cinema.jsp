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
		<h1>��ȭ��</h1>
		<br> <br>
		<hr>
		<ul class="location">
			<li><a>����</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=1">����</a></li>
					<li><a href="cinemaDetail.do?cinema_number=2">ȫ��</a></li>
					<li><a href="cinemaDetail.do?cinema_number=3">���з�</a></li>
					<li><a href="cinemaDetail.do?cinema_number=4">����</a></li>
					<li><a href="cinemaDetail.do?cinema_number=21">��������</a></li>
					<li><a href="cinemaDetail.do?cinema_number=22">�ڿ���</a></li>
				</ul></li>

			<li><a>���</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=5">��罺Ÿ�ʵ�</a></li>
					<li><a href="cinemaDetail.do?cinema_number=23">�д�</a></li>
					<li><a href="cinemaDetail.do?cinema_number=24">����</a></li>
				</ul></li>

			<li><a>��õ</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=6">��õ</a></li>
					<li><a href="cinemaDetail.do?cinema_number=25">����</a></li>
					<li><a href="cinemaDetail.do?cinema_number=26">����</a></li>
				</ul></li>

			<li><a>��û/����</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=7">�����л�</a></li>
					<li><a href="cinemaDetail.do?cinema_number=27">����</a></li>
				</ul></li>

			<li><a>�λ�/�뱸/���</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=8">����</a></li>
					<li><a href="cinemaDetail.do?cinema_number=28">���뱸</a></li>
				</ul></li>

			<li><a>����/����</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=9">����</a></li>
					<li><a href="cinemaDetail.do?cinema_number=29">����</a></li>
				</ul></li>

			<li><a>����</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=10">����</a></li>
				</ul></li>

			<li><a>����</a>
				<ul class="location-1">
					<li><a href="cinemaDetail.do?cinema_number=11">����</a></li>
				</ul></li>
		</ul>
		<br> <br>
		<hr>
		<br> <br>
		<c:choose>
			<c:when test="${cinemaDetail==null}">

				<h2>����</h2>
				<br>
				<button type="submit" class="btn-primary"
					onclick="location.href = 'reservation.do?cinema=1';">����</button>
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
                     infowindow.setContent('<b>����</b>');

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
				<h4>�ּ� : ���� ���ʱ� ����1�� ������� 438</h4>
				<h4>��ȭ��ȣ : 1234-1234</h4>
				<br>
				<br>
				<hr>
				<h4>���� �ȳ�</h4>
				<br>

				<h5>����</h5>
				<br>
				<h5>140��, 144��, 145��, 471��, 1500��, 360��, 402��, 420��, 470��, 407��</h5>

				<br>

				<h5>����ö</h5>
				<br>
				<h5>
					2ȣ�� ������ : 11�� �ⱸ <br> 9ȣ�� �ų����� : 5���ⱸ
				</h5>
				<br>

			</c:when>

			<c:otherwise>

				<c:forEach var="cinemaDetail" items="${cinemaDetail }">
					<h2>${cinemaDetail.cinema_name }</h2>
					<br>
					<button type="submit" class="btn-primary"
						onclick="location.href = 'reservation.do?cinema=${cinemaDetail.cinema_number}';">����</button>

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
                        infowindow.setContent('<b>����</b>');

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
					<h4>�ּ� : ${cinemaDetail.location }</h4>
					<h4>��ȭ��ȣ : ${cinemaDetail.tel }</h4>
					<br>
					<br>
					<hr>
					<h4>���� �ȳ�</h4>
					<br>

					<h5>����</h5>
					<br>
					<h5>${cinemaDetail.transport_bus }</h5>

					<br>

					<h5>����ö</h5>
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