<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/reservation.css'/>" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</head>
<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>

	<div class="reserve_header">
		<a class="btn_reserve schedule" href="getScheduleCinemaList1.do">상영시간표</a>
		<a class="btn_reserve reset" href="javascript:void(0);">예매 다시하기</a>
	</div>
	<div class="reserve_body">
		<div class="section movie">
			<div class="title">영화</div>
			<div class="schedule_list movie_list">
				<ul></ul>
			</div>
		</div>

		<div class="section cinema">
			<div class="title">극장</div>
			<div class="schedule_list cinema_list">
				<ul></ul>
			</div>
		</div>
		<div class="section date">
			<div class="title">날짜</div>
			<div class="schedule_list date_list">
				<ul></ul>
			</div>
		</div>
		<div class="section time">
			<div class="title">시간</div>
			<div class="schedule_list time_list">
				<ul></ul>
			</div>
		</div>
	</div>
	<div class="reserve_footer">
		<div class="reserve_info">
			<div class="info movie">
				<span class="info_title">영화</span>
				<span class='info_value'></span>
			</div>
			<div class="info cinema">
				<span class="info_title">극장</span>
				<span class='info_value'></span>
			</div>
			<div class="info date">
				<span class="info_title">일시</span>
				<span class='info_value'></span>
			</div>
			<div class="info time">
				<span class="info_title">시간</span>
				<span class='info_value'></span>
			</div>
		</div>
		<a href="javascript:void(0);" class="btn_next">좌석 선택</a>
	</div>

	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

	<script type="text/javascript">
		var id = "<%= (String) session.getAttribute("id") %>";
		var setting = "<%= (String) request.getAttribute("value") %>";
		
		$(function() {
			getAllScheduleList();
			
			$(".btn_next").click(function(){
				if(id=="null"){
					var result = confirm("로그인 후에 예매가 가능합니다. 확인을 누르면 로그인 페이지로 이동합니다.");
					   if(result == true){
					      location.href = "loginPage.do";
					   }
					return false;
				} else if ($(this).attr("href") == "javascript:void(0);"){
					alert("상영 시간을 먼저 선택해주세요.");
					return false;
				}
			});
			
			$(".btn_reserve.reset").click(function(){
				$("a.value.inactive").removeClass("inactive");
				$("a.value.selected").removeClass("selected");
				$("a.value").attr("href","javascript:void(0);").attr("onclick","getScheduleList(this)");
				$(".schedule_list.time_list>ul").empty();
				$("span.info_value").remove();
			});
			
			$(".schedule_list>ul>li>a.inactive").click(function(){
				if($(this).parents("div").hasClass("movie_list")==true){
					alert("선택한 영화에 원하시는 상영스케줄이 없습니다. 다시 선택해주세요.");
				}else if($(this).parents("div").hasClass("cinema_list")==true){
					alert("선택한 극장에 원하시는 상영스케줄이 없습니다. 다시 선택해주세요.");
				}else if($(this).parents("div").hasClass("date_list")==true){
					alert("선택한 날짜에 원하시는 상영스케줄이 없습니다. 다시 선택해주세요.");
				}
				alert($(this).text());
				return false;
			});
		});
		

		function getAllScheduleList() {
			$.ajax({
				url : "<c:url value='getScheduleList.do' />",
				type : "POST",
				dataType : "JSON",
				success : function(data, status) {
					var str1 = "";
					$.each(data.movieList,function(index, value) {
						str1 += "<li>"
								+ "<a class='value' href='javascript:void(0);' id='movie=" + value.movie_number
								+ "' onclick='getScheduleList(this); return false;'>"
									+ "<span id='rate"+value.rating+"'>" + value.rating + "</span>&nbsp;"
									+ value.title + "</a>"
								+ "</li>";
					});
					$(".schedule_list.movie_list>ul").append(str1);

					var str2 = "";
					$.each(data.cinemaList,function(index, value) {
						str2 += "<li>"
								+ "<a class='value' href='javascript:void(0);' id='cinema=" + value.cinema_number
								+ "' onclick='getScheduleList(this); return false;'>"
									+ "<span>" + value.region_name + "</span>" 
									+ "<span>" + value.cinema_name + "</span>" + "</a>"
								+ "</li>";
					});
					$(".schedule_list.cinema_list>ul").append(str2);

					var str3 = "";
					$.each(data.dateList,function(index, value) {
						str3 += "<li>"
								+ "<a class='value' href='javascript:void(0);' id='date=" + value
								+ "' onclick='getScheduleList(this); return false;'>"
								+ value + "</a>"
							+ "</li>";
					});
					$(".schedule_list.date_list>ul").append(str3);
					
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:"
						+ error);
					}
				});
		}

		function getScheduleList(node) {
			var param = "";
			if ($(".movie_list .value.selected").length != 0) {
				param += "&" + $(".movie_list .value.selected").attr("id");
			}
			if ($(".cinema_list .value.selected").length != 0) {
				param += "&" + $(".cinema_list .value.selected").attr("id");
			}
			if ($(".date_list .value.selected").length != 0) {
				param += "&" + $(".date_list .value.selected").attr("id");
			}
			param += "&" + $(node).attr("id");

			$(node).parents("ul").children("li").children(".value").addClass("inactive").removeAttr("href").removeAttr("onclick");
			$(node).removeClass("inactive");
			$(node).addClass("selected");
			
			$.ajax({
				url : "<c:url value='getScheduleList.do' />",
				type : "POST",
				data : param,
				dataType : "JSON",
				success : function(data, status) {
					if (data.timeList == null) {
						if (data.movie == 0) {
							$(".movie_list>ul>li>a[class='value']").addClass("inactive");
							$.each(data.movieList, function(index, value) {
								var node1 = ".movie_list>ul>li>a[id='movie="
										+ value.movie_number + "']"
								$(node1).removeClass("inactive");
							});
						}
						if (data.cinema == 0) {
							$(".cinema_list>ul>li>a[class='value']").addClass("inactive");
							$.each(data.cinemaList, function(index, value) {
								var node1 = ".cinema_list>ul>li>a[id='cinema="
										+ value.cinema_number + "']"
								$(node1).removeClass("inactive");
							});
						}
						if (data.date == "0000-00-00") {
							$(".date_list>ul>li>a[class='value']").addClass("inactive");
							$.each(data.dateList, function(index, value) {
								var node1 = ".date_list>ul>li>a[id='date="
										+ value + "']";
								$(node1).removeClass("inactive");
							});
						}
					} else {
						var str4 = "";
						$.each(data.timeList, function(index, value) {
							str4 += "<li>"
									+ "<a href='javascript:void(0);' class='time_schedule' id='" + value.schedule_code
										+"' onclick='getSchedule(this); return false;'>"
										+ "<span>" + value.theater + "관</span>"
										+ "<span>" + value.schedule_time + "</span>"
									+ "</a>"
								 + "</li>";
						});
						$(".schedule_list.time_list>ul").append(str4);
					}

				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
				}
			});
		}
		
		function getSchedule(node){
			$(node).parents("ul").children("li").children(".time_schedule").addClass("inactive").removeAttr("href").removeAttr("onclick");
			$(node).removeClass("inactive");
			$(node).addClass("selected");
			
			var param = "schedule_code=" + $(node).attr("id");
			
			$.ajax({
				url : "<c:url value='getSchedule.do' />",
				type : "POST",
				data : param,
				dataType : "JSON",
				success : function(data, status) {
					$(".info>.info_value").remove();
					var title = $(".movie_list>ul>li>a.selected").text();
					var cinema = $(".cinema_list>ul>li>a.selected").text();
					$(".info.movie").append("<span class='info_value'>"+ title +"</span>");
					$(".info.cinema").append("<span class='info_value'>"+ cinema +"</span>");
					$(".info.date").append("<span class='info_value'>"+ data.schedule.schedule_date +"</span>");
					$(".info.time").append("<span class='info_value'>"+ data.schedule.schedule_time +"</span>");
					var moveUrl = "getSeatList.do?schedule_code=" + data.schedule.schedule_code
							+"&movie_number="+data.schedule.movie_number+"&cinema_number="+data.schedule.cinema_number;
					$(".reserve_footer>.btn_next").attr("href", moveUrl);
				}
			});
		}
	</script>
</body>
</html>