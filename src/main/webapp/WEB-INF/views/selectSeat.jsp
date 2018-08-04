<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="<c:url value='/css/selectSeat.css'/>" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</head>
<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>

	<div class="seat_header">
		<p>인원/좌석 선택</p>
		<div class="reset"><button>다시 선택</button></div>
	</div>
	<div class="seat_body">
		<div class="seat_left">
			<div class="person_select">
				<ul>
					<li>
						<span class="person_title">일반</span>
						<div class="select_box">
							<a class="adult" href="javascript:void(0);">0</a>
							<ul>
								<li><a href="javascript:void(0);">0</a></li>
								<li><a href="javascript:void(0);">1</a></li>
								<li><a href="javascript:void(0);">2</a></li>
								<li><a href="javascript:void(0);">3</a></li>
								<li><a href="javascript:void(0);">4</a></li>
								<li><a href="javascript:void(0);">5</a></li>
							</ul>
						</div>
					</li>
					<li>
						<span class="person_title">청소년</span>
						<div class="select_box">
							<a class="youth" href="javascript:void(0);">0</a>
							<ul>
								<li><a href="javascript:void(0);">0</a></li>
								<li><a href="javascript:void(0);">1</a></li>
								<li><a href="javascript:void(0);">2</a></li>
								<li><a href="javascript:void(0);">3</a></li>
								<li><a href="javascript:void(0);">4</a></li>
								<li><a href="javascript:void(0);">5</a></li>
							</ul>
						</div>
					</li>
					<li>
						<span class="person_title">우대</span>
						<div class="select_box">
							<a class="special" href="javascript:void(0);">0</a>
							<ul>
								<li><a href="javascript:void(0);">0</a></li>
								<li><a href="javascript:void(0);">1</a></li>
								<li><a href="javascript:void(0);">2</a></li>
								<li><a href="javascript:void(0);">3</a></li>
								<li><a href="javascript:void(0);">4</a></li>
								<li><a href="javascript:void(0);">5</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
			<div class="seat_set">
				<p class="screen">SCREEN</p>
				<div class="seat_area">
					<span class="line">A</span>
					<a class="seat" id="A1" href="javascript:void(0);">1</a>
					<a class="seat" id="A2" href="javascript:void(0);">2</a>
					<a class="seat" id="A3" href="javascript:void(0);">3</a>
					<a class="seat" id="A4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="A5" href="javascript:void(0);">5</a>
					<a class="seat" id="A6" href="javascript:void(0);">6</a>
					<a class="seat" id="A7" href="javascript:void(0);">7</a>
					<a class="seat" id="A8" href="javascript:void(0);">8</a>
					<a class="seat" id="A9" href="javascript:void(0);">9</a>
					<a class="seat" id="A10" href="javascript:void(0);">10</a>
					<a class="seat" id="A11" href="javascript:void(0);">11</a>
					<a class="seat" id="A12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="A13" href="javascript:void(0);">13</a>
					<a class="seat" id="A14" href="javascript:void(0);">14</a>
					<a class="seat" id="A15" href="javascript:void(0);">15</a>
					<a class="seat" id="A16" href="javascript:void(0);">16</a>
					<span class="line">B</span>
					<a class="seat" id="B1" href="javascript:void(0);">1</a>
					<a class="seat" id="B2" href="javascript:void(0);">2</a>
					<a class="seat" id="B3" href="javascript:void(0);">3</a>
					<a class="seat" id="B4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="B5" href="javascript:void(0);">5</a>
					<a class="seat" id="B6" href="javascript:void(0);">6</a>
					<a class="seat" id="B7" href="javascript:void(0);">7</a>
					<a class="seat" id="B8" href="javascript:void(0);">8</a>
					<a class="seat" id="B9" href="javascript:void(0);">9</a>
					<a class="seat" id="B10" href="javascript:void(0);">10</a>
					<a class="seat" id="B11" href="javascript:void(0);">11</a>
					<a class="seat" id="B12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="B13" href="javascript:void(0);">13</a>
					<a class="seat" id="B14" href="javascript:void(0);">14</a>
					<a class="seat" id="B15" href="javascript:void(0);">15</a>
					<a class="seat" id="B16" href="javascript:void(0);">16</a>
					<span class="line">C</span>
					<a class="seat" id="C1" href="javascript:void(0);">1</a>
					<a class="seat" id="C2" href="javascript:void(0);">2</a>
					<a class="seat" id="C3" href="javascript:void(0);">3</a>
					<a class="seat" id="C4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="C5" href="javascript:void(0);">5</a>
					<a class="seat" id="C6" href="javascript:void(0);">6</a>
					<a class="seat" id="C7" href="javascript:void(0);">7</a>
					<a class="seat" id="C8" href="javascript:void(0);">8</a>
					<a class="seat" id="C9" href="javascript:void(0);">9</a>
					<a class="seat" id="C10" href="javascript:void(0);">10</a>
					<a class="seat" id="C11" href="javascript:void(0);">11</a>
					<a class="seat" id="C12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="C13" href="javascript:void(0);">13</a>
					<a class="seat" id="C14" href="javascript:void(0);">14</a>
					<a class="seat" id="C15" href="javascript:void(0);">15</a>
					<a class="seat" id="C16" href="javascript:void(0);">16</a>
					<span class="line">D</span>
					<a class="seat" id="D1" href="javascript:void(0);">1</a>
					<a class="seat" id="D2" href="javascript:void(0);">2</a>
					<a class="seat" id="D3" href="javascript:void(0);">3</a>
					<a class="seat" id="D4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="D5" href="javascript:void(0);">5</a>
					<a class="seat" id="D6" href="javascript:void(0);">6</a>
					<a class="seat" id="D7" href="javascript:void(0);">7</a>
					<a class="seat" id="D8" href="javascript:void(0);">8</a>
					<a class="seat" id="D9" href="javascript:void(0);">9</a>
					<a class="seat" id="D10" href="javascript:void(0);">10</a>
					<a class="seat" id="D11" href="javascript:void(0);">11</a>
					<a class="seat" id="D12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="D13" href="javascript:void(0);">13</a>
					<a class="seat" id="D14" href="javascript:void(0);">14</a>
					<a class="seat" id="D15" href="javascript:void(0);">15</a>
					<a class="seat" id="D16" href="javascript:void(0);">16</a>
					<span class="line">E</span>
					<a class="seat" id="E1" href="javascript:void(0);">1</a>
					<a class="seat" id="E2" href="javascript:void(0);">2</a>
					<a class="seat" id="E3" href="javascript:void(0);">3</a>
					<a class="seat" id="E4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="E5" href="javascript:void(0);">5</a>
					<a class="seat" id="E6" href="javascript:void(0);">6</a>
					<a class="seat" id="E7" href="javascript:void(0);">7</a>
					<a class="seat" id="E8" href="javascript:void(0);">8</a>
					<a class="seat" id="E9" href="javascript:void(0);">9</a>
					<a class="seat" id="E10" href="javascript:void(0);">10</a>
					<a class="seat" id="E11" href="javascript:void(0);">11</a>
					<a class="seat" id="E12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="E13" href="javascript:void(0);">13</a>
					<a class="seat" id="E14" href="javascript:void(0);">14</a>
					<a class="seat" id="E15" href="javascript:void(0);">15</a>
					<a class="seat" id="E16" href="javascript:void(0);">16</a>
					<span class="line">F</span>
					<a class="seat" id="F1" href="javascript:void(0);">1</a>
					<a class="seat" id="F2" href="javascript:void(0);">2</a>
					<a class="seat" id="F3" href="javascript:void(0);">3</a>
					<a class="seat" id="F4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="F5" href="javascript:void(0);">5</a>
					<a class="seat" id="F6" href="javascript:void(0);">6</a>
					<a class="seat" id="F7" href="javascript:void(0);">7</a>
					<a class="seat" id="F8" href="javascript:void(0);">8</a>
					<a class="seat" id="F9" href="javascript:void(0);">9</a>
					<a class="seat" id="F10" href="javascript:void(0);">10</a>
					<a class="seat" id="F11" href="javascript:void(0);">11</a>
					<a class="seat" id="F12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="F13" href="javascript:void(0);">13</a>
					<a class="seat" id="F14" href="javascript:void(0);">14</a>
					<a class="seat" id="F15" href="javascript:void(0);">15</a>
					<a class="seat" id="F16" href="javascript:void(0);">16</a>
					<span class="line">G</span>
					<a class="seat" id="G1" href="javascript:void(0);">1</a>
					<a class="seat" id="G2" href="javascript:void(0);">2</a>
					<a class="seat" id="G3" href="javascript:void(0);">3</a>
					<a class="seat" id="G4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="G5" href="javascript:void(0);">5</a>
					<a class="seat" id="G6" href="javascript:void(0);">6</a>
					<a class="seat" id="G7" href="javascript:void(0);">7</a>
					<a class="seat" id="G8" href="javascript:void(0);">8</a>
					<a class="seat" id="G9" href="javascript:void(0);">9</a>
					<a class="seat" id="G10" href="javascript:void(0);">10</a>
					<a class="seat" id="G11" href="javascript:void(0);">11</a>
					<a class="seat" id="G12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="G13" href="javascript:void(0);">13</a>
					<a class="seat" id="G14" href="javascript:void(0);">14</a>
					<a class="seat" id="G15" href="javascript:void(0);">15</a>
					<a class="seat" id="G16" href="javascript:void(0);">16</a>
					<span class="line">H</span>
					<a class="seat" id="H1" href="javascript:void(0);">1</a>
					<a class="seat" id="H2" href="javascript:void(0);">2</a>
					<a class="seat" id="H3" href="javascript:void(0);">3</a>
					<a class="seat" id="H4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="H5" href="javascript:void(0);">5</a>
					<a class="seat" id="H6" href="javascript:void(0);">6</a>
					<a class="seat" id="H7" href="javascript:void(0);">7</a>
					<a class="seat" id="H8" href="javascript:void(0);">8</a>
					<a class="seat" id="H9" href="javascript:void(0);">9</a>
					<a class="seat" id="H10" href="javascript:void(0);">10</a>
					<a class="seat" id="H11" href="javascript:void(0);">11</a>
					<a class="seat" id="H12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="H13" href="javascript:void(0);">13</a>
					<a class="seat" id="H14" href="javascript:void(0);">14</a>
					<a class="seat" id="H15" href="javascript:void(0);">15</a>
					<a class="seat" id="H16" href="javascript:void(0);">16</a>
					<span class="line">I</span>
					<a class="seat" id="I1" href="javascript:void(0);">1</a>
					<a class="seat" id="I2" href="javascript:void(0);">2</a>
					<a class="seat" id="I3" href="javascript:void(0);">3</a>
					<a class="seat" id="I4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="I5" href="javascript:void(0);">5</a>
					<a class="seat" id="I6" href="javascript:void(0);">6</a>
					<a class="seat" id="I7" href="javascript:void(0);">7</a>
					<a class="seat" id="I8" href="javascript:void(0);">8</a>
					<a class="seat" id="I9" href="javascript:void(0);">9</a>
					<a class="seat" id="I10" href="javascript:void(0);">10</a>
					<a class="seat" id="I11" href="javascript:void(0);">11</a>
					<a class="seat" id="I12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="I13" href="javascript:void(0);">13</a>
					<a class="seat" id="I14" href="javascript:void(0);">14</a>
					<a class="seat" id="I15" href="javascript:void(0);">15</a>
					<a class="seat" id="I16" href="javascript:void(0);">16</a>
					<span class="line">J</span>
					<a class="seat" id="J1" href="javascript:void(0);">1</a>
					<a class="seat" id="J2" href="javascript:void(0);">2</a>
					<a class="seat" id="J3" href="javascript:void(0);">3</a>
					<a class="seat" id="J4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="J5" href="javascript:void(0);">5</a>
					<a class="seat" id="J6" href="javascript:void(0);">6</a>
					<a class="seat" id="J7" href="javascript:void(0);">7</a>
					<a class="seat" id="J8" href="javascript:void(0);">8</a>
					<a class="seat" id="J9" href="javascript:void(0);">9</a>
					<a class="seat" id="J10" href="javascript:void(0);">10</a>
					<a class="seat" id="J11" href="javascript:void(0);">11</a>
					<a class="seat" id="J12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="J13" href="javascript:void(0);">13</a>
					<a class="seat" id="J14" href="javascript:void(0);">14</a>
					<a class="seat" id="J15" href="javascript:void(0);">15</a>
					<a class="seat" id="J16" href="javascript:void(0);">16</a>
					<span class="line">K</span>
					<a class="seat" id="K1" href="javascript:void(0);">1</a>
					<a class="seat" id="K2" href="javascript:void(0);">2</a>
					<a class="seat" id="K3" href="javascript:void(0);">3</a>
					<a class="seat" id="K4" href="javascript:void(0);">4</a>
					<span class="seat_space"></span>
					<a class="seat" id="K5" href="javascript:void(0);">5</a>
					<a class="seat" id="K6" href="javascript:void(0);">6</a>
					<a class="seat" id="K7" href="javascript:void(0);">7</a>
					<a class="seat" id="K8" href="javascript:void(0);">8</a>
					<a class="seat" id="K9" href="javascript:void(0);">9</a>
					<a class="seat" id="K10" href="javascript:void(0);">10</a>
					<a class="seat" id="K11" href="javascript:void(0);">11</a>
					<a class="seat" id="K12" href="javascript:void(0);">12</a>
					<span class="seat_space"></span>
					<a class="seat" id="K13" href="javascript:void(0);">13</a>
					<a class="seat" id="K14" href="javascript:void(0);">14</a>
					<a class="seat" id="K15" href="javascript:void(0);">15</a>
					<a class="seat" id="K16" href="javascript:void(0);">16</a>
					
				</div>
			</div>
		</div>
		<div class="seat_right">
			<div class="poster">
				<img alt="" src="${movieInfo.poster}">
			</div>
			<div class="title">
				<span id="rate${movieInfo.rating}">${movieInfo.rating}</span>&nbsp;<strong>${movieInfo.title}</strong>
			</div>
			<div class="total">
				<dl>
					<dt>극장</dt>
					<dd>${cinemaInfo.cinema_name}</dd>
					<dt>상영관</dt>
					<dd>${scheduleInfo.theater}관</dd>
					<dt>일시</dt>
					<dd id="date">${scheduleInfo.schedule_day} ${scheduleInfo.schedule_time}</dd>
					<dt>인원</dt>
					<dd id="person"></dd>
					<dt>좌석</dt>
					<dd id="seat"></dd>
				</dl>
			</div>
			
			<p id="price"></p>
		</div>
	</div>
	<div class="seat_btn">
		<a class="img_btn prev" href="reservation.do">이전</a>
		<a class="img_btn next" href="javascript:void(0);" id="${scheduleInfo.schedule_code}">예매</a>
	</div>
	
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

<script type="text/javascript">
	var number = 0;
	var count = 0;
	var selectSeat = "";
	var id = "<%= (String) session.getAttribute("id") %>";
	
	function showSeatList(){
		var list = new Array();
		<c:forEach items="${seatList}" var="seat">
			list.push("${seat}");
		</c:forEach>
		for(var i=0; i<list.length; i++){
			$("a#"+list[i]).text("X").addClass("reserved");
		}
	}
	
	$(function(){
		
		showSeatList();
		
		$("div.select_box>a").click(function(){
			$(this).next("ul").toggle();
			return false;
		});
		
		$("div.select_box>ul>li").click(function(){
			$(this).parent().hide().parent("div.select_box").children("a").text($(this).text());
			
			var tmp1 = 0;
			var tmp2 = 0;
			var selectPerson = "";
			var price = 0; 
			if($("div.select_box>a.adult").text()!=0){
				tmp2 = $("div.select_box>a.adult").text();
				tmp1 += parseInt(tmp2);
				selectPerson += "일반 "+tmp2+"명  ";
				price += (9000*tmp2);
			}
			if($("div.select_box>a.youth").text()!=0){
				tmp2 = $("div.select_box>a.youth").text();
				tmp1 += parseInt(tmp2);
				selectPerson += "청소년 "+tmp2+"명  ";
				price += (8000*tmp2);
			}
			if($("div.select_box>a.special").text()!=0){
				tmp2 = $("div.select_box>a.special").text();
				tmp1 += parseInt(tmp2);
				selectPerson += "우대 "+tmp2+"명  ";
				price += (6000*tmp2);
			}
			number = tmp1;
			
			$("#person").text(selectPerson);
			$("#price").text(price+"원");
			return false;
		});
		
		$("a.seat").click(function(){
			if(number === 0){
				alert("인원을 먼저 선택해 주세요.");
			} else if(count === number){
				alert("좌석 선택이 완료되었습니다.");
			} else{
				$(this).addClass("selected");
				selectSeat += ","+$(this).attr("id");
				if(selectSeat.charAt(0)==","){
					selectSeat = selectSeat.substring(1,selectSeat.length);
				}
				$("#seat").text(selectSeat);
				count += 1;
			}
			
			return false;
		});
		
		$(".reset>button").click(function(){
			number = 0;
			count = 0;
			selectSeat = "";
			
			$("div.select_box>a").text("0");
			$("a.seat").removeClass("selected");
			
			$("#person").text("");
			$("#price").text("");
			$("#seat").text("");
		});
		
		$(".img_btn.next").click(function(){
			if(number == 0){
				alert("인원과 좌석을 선택해 주세요.");
				return false;
			} else if(number != count){
				alert("인원수대로 좌석을 선택해 주세요.");
				return false;
			} else {
				var selectSeat = $("#seat").text();
				var code = $(this).attr("id");
				var price = $("#price").text();
				price = price.substring(0,price.length-1);
				var date = $("#date").text().substring(0,10).replace(".","-").replace(".","");
				
				var moveUrl = "insertSeat.do?schedule_code="+code+"&seat="+selectSeat+"&date="+date+"&price="+price+"&id="+id;
				$(this).attr("href", moveUrl);
			}
		});
	});
</script>
</body>
</html>