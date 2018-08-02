<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/schedule2.css'/>" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/slide_schedule.js'/>"></script>
<script type="text/javascript">
	var page_name = "<%= (String)request.getAttribute("pageName") %>";
	
	function moveTab(){
		if(page_name == "movieList"){
			$("#tab_cinema").addClass("current");
			$("#movie_list").addClass("current");
		} else if(page_name == "cinemaList"){
			$("#tab_movie").addClass("current");
			$("#cinema_list").addClass("current");
		}
	}
	
	function selectDate(node){
		var dd = $(node).text();
		var index = $(node).parent("td").index();
		var w = $("table>thead>tr>td:eq("+index+")").text();
		var yyyymm = $("#currentDate").text().replace("��",".").replace("��",".").replace(" ","");
		$(".date_list .selected_date>p").text(yyyymm+dd+"("+w+")");
		$(".date_list>.wrap").hide();
		getTimeList();
	}
	
	$(document).ready(function(){
		moveTab();
		
		var dt = new Date();
		var week = new Array("��","��","ȭ","��","��","��","��");
		var today = dt.getFullYear()+"."+(dt.getMonth()+1)+"."+dt.getDate()+"("+week[dt.getDay()]+")";
		$(".date_list .selected_date").append("<p>"+today+"</p>");
		
		getTimeList();
		
		$(".date_list .selected_date>p").click(function(){
			var calendar = new controller();
			calendar.init();
			$(".date_list>.wrap").show();
		});
		
		$(".nav-tabs").click(function(){
			moveTab();
			getTimeList();
		});
		
		$(".schedule_list>ul>li>a[id]").click(function(){
			$(".schedule_list>ul>li>a[id]").removeClass("selected");
			$(this).addClass("selected");
			getTimeList();
		});
		
		$(".slides>li>.box_office>a").click(function(){
			$(".slides>li>.box_office>a").removeClass("selected");
			$(".slides>li>.box_office").removeClass("selected");
			$(this).addClass("selected");
			$(this).parent(".box_office").addClass("selected");
			getTimeList();
		})
		
	});
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
	
	<ul class="nav-tabs">
		<li id="tab_cinema" class="btn_tab" data-tab="cinema_list"><a href="getScheduleCinemaList.do?region_code=1">���庰 �󿵽ð�ǥ</a></li>
		<li id="tab_movie" class="btn_tab" data-tab="movie_list"><a href="getScheduleMovieList.do">��ȭ�� �󿵽ð�ǥ</a></li>
	</ul>
	
	<div class="date_list">
			<div class="selected_date"></div>
			<div class="wrap">
				<div class="btn-holder">
					<button id="btnPrev">&lt;</button>
					<span id="currentDate"></span>
					<button id="btnNext">&gt;</button>
				</div>
				<div id="calendar"></div>
			</div>
		</div>
	
	<div id="cinema_list" class="schedule">
		<div class="schedule_list cinema">
			<ul class="region_list">
				<li><a href="getScheduleCinemaList.do?region_code=1">����</a></li>
				<li><a href="getScheduleCinemaList.do?region_code=2">���</a></li>
				<li><a href="getScheduleCinemaList.do?region_code=3">��õ</a></li>
				<li><a href="getScheduleCinemaList.do?region_code=4">��û/����</a></li>
				<li><a href="getScheduleCinemaList.do?region_code=5">�λ�/�뱸/���</a></li>
				<li><a href="getScheduleCinemaList.do?region_code=6">����/����</a></li>
				<li><a href="getScheduleCinemaList.do?region_code=7">����</a></li>
				<li><a href="getScheduleCinemaList.do?region_code=8">����</a></li>
			</ul>
			<ul class="region_cinema_list">
				<c:choose>
					<c:when test="${cinemaList==null}">
						<li><a href="javascript:void(0);" id="cinema=1">����</a></li>
						<li><a href="javascript:void(0);" id="cinema=2">ȫ��</a></li>
						<li><a href="javascript:void(0);" id="cinema=3">���з�</a></li>
						<li><a href="javascript:void(0);" id="cinema=4">����</a></li>
						<li><a href="javascript:void(0);" id="cinema=21">��������</a></li>
						<li><a href="javascript:void(0);" id="cinema=22">�ڿ���</a></li>
					</c:when>
					<c:otherwise>
						<c:forEach var="cinema" items="${cinemaList }">
							<li><a href="javascript:void(0);" id="cinema=${cinema.cinema_number }">
								${cinema.cinema_name }</a></li>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<div class="time_list">
			<ul class="cinema_movie"></ul>
		</div>
	</div>
	
	<div id="movie_list" class="schedule">
		<div class="schedule_list movie">
			<div id="slider">
				<a href="javascript:void(0);" class="control_next">></a>
				<a href="javascript:void(0);" class="control_prev"><</a>
				<ul class="slides">
					<c:forEach var="movieList" items="${movieList}" varStatus="status">
						<li><div class="box_office">
							<span class="ranking">${status.count }</span>
							<a href="javascript:void(0);" id="movie=${movieList.movie.movie_number}">
								<img alt="${movieList.movie.title }" src="${movieList.movie.poster }"></a>
							<p><span id="rate${movieList.movie.rating}">${movieList.movie.rating}</span>
								&nbsp;${movieList.movie.title }</p>
						</div></li>
					</c:forEach>
				</ul>  
			</div>		
		</div>
		<div class="time_list">
			<ul class="cinema_movie"></ul>
		</div>
	</div>
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
	
	<script type="text/javascript">
		function controller(target) {

			var that = this;
			var m_oMonth = new Date();
			m_oMonth.setDate(1);

			this.init = function() {
				that.renderCalendar();
				that.initEvent();
			}

			/* �޷� UI ���� */
			this.renderCalendar = function() {
				var arrTable = [];

				arrTable.push('<table><colgroup>');
				for (var i = 0; i < 7; i++) {
					arrTable.push('<col width="100">');
				}
				arrTable.push('</colgroup><thead><tr>');

				var arrWeek = "�Ͽ�ȭ�������".split("");

				for (var i = 0, len = arrWeek.length; i < len; i++) {
					var sClass = '';
					sClass += i % 7 == 0 ? 'sun' : '';
					sClass += i % 7 == 6 ? 'sat' : '';
					arrTable.push('<td class="'+sClass+'">' + arrWeek[i]
							+ '</td>');
				}
				arrTable.push('</tr></thead>');
				arrTable.push('<tbody>');

				var oStartDt = new Date(m_oMonth.getTime());
				// 1�Ͽ��� 1���� ������ ���� �� �� ù��° ���� ���´�.
				oStartDt.setDate(oStartDt.getDate() - oStartDt.getDay());

				for (var i = 0; i < 100; i++) {
					if (i % 7 == 0) {
						arrTable.push('<tr>');
					}

					var sClass = 'date-cell '
					sClass += m_oMonth.getMonth() != oStartDt.getMonth() ? 'not-this-month '
							: '';
					sClass += i % 7 == 0 ? 'sun' : '';
					sClass += i % 7 == 6 ? 'sat' : '';
					
					arrTable
							.push('<td class="'+sClass+'"><a href="javascript:void(0);" onclick="selectDate(this); return false;">'
									+ oStartDt.getDate()
									+ '</a></td>');	
					
					oStartDt.setDate(oStartDt.getDate() + 1);

					if (i % 7 == 6) {
						arrTable.push('</tr>');
						if (m_oMonth.getMonth() != oStartDt.getMonth()) {
							break;
						}
					}
				}
				arrTable.push('</tbody></table>');
				$('#calendar').html(arrTable.join(""));
				that.changeMonth();
			}

			/* Next, Prev ��ư �̺�Ʈ */
			this.initEvent = function() {
				$('#btnPrev').click(that.onPrevCalendar);
				$('#btnNext').click(that.onNextCalendar);
			}

			/* ���� �޷� */
			this.onPrevCalendar = function() {
				m_oMonth.setMonth(m_oMonth.getMonth() - 1);
				that.renderCalendar();
			}

			/* ���� �޷� */
			this.onNextCalendar = function() {
				m_oMonth.setMonth(m_oMonth.getMonth() + 1);
				that.renderCalendar();
			}

			/* �޷� �̵��Ǹ� ��ܿ� ���� �� �� �ٽ� ǥ�� */
			this.changeMonth = function() {
				$('#currentDate').text(
						that.getYearMonth(m_oMonth).substr(0, 9));
			}

			/* ��¥ ��ü�� �� �� ���� �������� ��ȯ */
			this.getYearMonth = function(oDate) {
				return oDate.getFullYear() + '�� ' + (oDate.getMonth() + 1)
						+ '��';
			}
		}
	</script>
	<script type="text/javascript">
		function getTimeList(){
			var value = "";
			if(page_name == "cinemaList"){
				value = $(".schedule_list>ul>li>a[id].selected").attr("id");
			} else if(page_name == "movieList"){
				value = $(".slides>li>.box_office>a.selected").attr("id");
			}
			var date = $(".date_list .selected_date>p").text().substring(0,9);
			if(date.indexOf('(') != -1){
				date = date.replace('(','');
			}
			var param = value+"&date="+date;
			
			$.ajax({
				url : "<c:url value='getTimeList.do' />",
				type : "POST",
				data : param,
				dataType : "JSON",
				success : function(data, status) {
					if(data.name == "cinema"){
						$(".cinema_movie").empty();
						var str1 ="";
						$.each(data.nameList, function(index, value){
							str1 += "<li>"
									+"<ul class='detail_list' id='movie"+value.movie_number+"'><span class='title'>"
										+"<span id='rate"+value.rating+"'>"+value.rating+"</span>&nbsp;"
										+value.title+"</span></ul>"
								+"</li>";
						});
						$(".cinema_movie").append(str1);
						
						var str2 = "";
						$.each(data.timeList, function(index, value){
							str2 = "<li><span>"+value.theater+"��</span>"
									+"<a href='getSeatList.do?schedule_code="+value.schedule_code+"+&movie_number="
										+value.movie_number+"&cinema_number="+value.cinema_number+"'>"
										+value.schedule_time+"</a>"
								+"</li>";
							$("#movie"+value.movie_number).append(str2);
						});
					} else if(data.name == "movie"){
						$(".cinema_movie").empty();
						var str1 = "";
						$.each(data.nameList, function(index, value){
							str1 += "<li>"
									+"<ul class='detail_list' id='cinema"+value.cinema_number+"'><span class='title'>"
										+value.cinema_name+"</span></ul>"
								+"</li>";
						});
						$(".cinema_movie").append(str1);
						
						var str2 = "";
						$.each(data.timeList, function(index, value){
							 str2 = "<li><span>"+value.theater+"��</span>"
									+"<a href='getSeatList.do?schedule_code="+value.schedule_code+"+&movie_number="
										+value.movie_number+"&cinema_number="+value.cinema_number+"'>"
										+value.schedule_time+"</a>"
								+"</li>"; 
							$("#cinema"+value.movie_number).append(str2);
						});
					}
				},
				error : function(request, status, error) {
					alert("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:"
						+ error);
				}
			});
			return false;
		}
		
	</script>
</body>
</html>