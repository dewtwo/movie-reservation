<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" type="text/css" href="<c:url value='/css/schedule2.css'/>">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.11.1.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- Bootstrap -->
<link href="<c:url value='/css/bootstrap.min.css'/>" rel="stylesheet">

<style type="text/css">
h2 {
	margin: 20px 0
}

.tab-content {
	padding: 10px 0;
}

ul {
	list-stlye: none;
	text-align: center;
}

ul li {
	display: inline;
	padding: 0 10px;
	letter-spacing: 5px;
}

.hide {
	postion: absolute;
	margin: 0;
	padding: 0;
	width: 0;
	height: 0;
	font-size: 0;
	line-height: 0;
	visibility: hidden
}

.wrap {
	width: 500px;
	margin: 0 auto;
}

.btn-holder {
	text-align: center;
	margin: 10px 0 10px 0;
}

.theater_zone {
	position: relative;
}

#calendar table {
	border-collapse: collapse;
	text-align: center;
}

#calendar table thead td {
	height: 30px;
	font-weight: bold;
}

#calendar table td {
	border: solid 1px #000;
}

#calendar table td.date-cell {
	height: 50px;
}

#calendar table td.sun {
	color: red;
}

#calendar table td.sat {
	color: blue;
}

#calendar table td.not-this-month {
	background: #ddd;
	color: #999;
}

#shedule table {
	position: relatucve;
	left: 30px;
	top: 30px;
}

a {
	text-decoration: none;
	color: #000000;
}

a:hover {
	color: #ff0000;
}

#nav {
	position: absolute; /* header�� �������� �ϴܿ� ��ġ��ŵ�ϴ�. */
	left: 0;
	bottom: 0;
}

#nav ul, #nav li {
	margin: 0;
	padding: 0;
}

#nav li {
	position: relative;
	list-style: none;
	float: left;
	margin-right: 5px;
}

#nav a {
	display: block;
	padding: 1em 2em;
	font-weight: bold;
	text-decoration: none;
}

#nav li ul {
	position: absolute;
	top: 3.5em;
	width: 300px;
	display: none; /* li�� �ڽ��� ul�� ���ܵӴϴ�. */
}

#nav li.on ul {
	display: block; /* Ȱ��ȭ�� li�� �ڽ��� ul�� �����ݴϴ�. */
}
</style>
</head>
<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>


		<h2>�󿵽ð�ǥ</h2>

		<div class='wrap'>
			<div class='btn-holder'>
				<button id='btnPrev'>&lt;</button>
				<span id='currentDate'></span>
				<button id='btnNext'>&gt;</button>
			</div>
			<div id="calendar"></div>
		</div>
<br><br><br>
		<ul class="nav nav-tabs" id="myTab">
			<li><a href="#home">���庰 �󿵽ð�ǥ</a></li>
			<li><a href="#tab1">��ȭ�� �󿵽ð�ǥ</a></li>
		</ul>

		<div class="tab-content" id="choiceOption" style="display:none">
			<div class="tab-pane" id="home">

				<h3>��ȭ��</h3>
				<div id="nav">
					<ul>
						<li class="on">
							<!-- ù��° 1�� �޴��� Ȱ��ȭ �մϴ�. --> <a href="/">����</a>
							<ul>
								<li><a href="#">����</a></li>
								<li><a href="#">ȫ��</a></li>
								<li><a href="#">���з�</a></li>
								<li><a href="#">����</a></li>
							</ul>
						</li>
						<li><a href="#">��õ</a>
							<ul>
								<li><a href="#">��õ</a></li>
							</ul></li>
						<li><a href="#">���</a>
							<ul>
								<li><a href="#">��� ��Ÿ�ʵ�</a></li>
							</ul></li>
						<li><a href="#">��û/����</a>
							<ul>
								<li><a href="#">�����л�</a></li>
							</ul></li>
						<li><a href="#">�λ�/�뱸/���</a>
							<ul>
								<li><a href="#">����</a></li>
							</ul></li>
						<li><a href="#">����/����</a>
							<ul>
								<li><a href="#">����</a></li>
							</ul></li>
						<li><a href="#">����</a>
							<ul>
								<li><a href="#">����</a></li>
							</ul></li>
						<li><a href="#">����</a>
							<ul>
								<li><a href="#">����</a></li>
							</ul></li>

					</ul>
				</div>
				<br><br><br>
				<h3 class="sub_tit02 Lang-LBL4004">�󿵽ð�</h3>

				<table border="1" id="schedule">
					<tr>
						<td>��ȭ����</td>
						<td>�󿵰�</td>
						<td>�ð�</td>
					</tr>
					<c:forEach items="${scheduleCinemaList1}" var="schedule">
						<tr>
							<td>${schedule.title }</td>
							<td>${schedule.cinema_name }</td>
							<td>${schedule.schedule_time }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			
			<div class="tab-pane" id="tab1">

				<h3>��ȭ</h3>
				<br>
				<h3>�󿵽ð�</h3>
				<br>
				<div id="nav">
					<ul>
						<li class="on"><!-- ù��° 1�� �޴��� Ȱ��ȭ �մϴ�. --> 
						<a href="/">����</a>
						</li>
						<li><a href="#">��õ</a></li>
						<li><a href="#">���</a></li>
						<li><a href="#">��û/����</a></li>
						<li><a href="#">�λ�/�뱸/���</a></li>
						<li><a href="#">����/����</a></li>
						<li><a href="#">����</a></li>
						<li><a href="#">����</a></li>

					</ul>
				</div>
				<br>
				<h3 class="sub_tit02 Lang-LBL4004">�󿵽ð�</h3>

				<table border="1" id="schedule">
					<tr>
						<td>��ȭ��</td>
						<td>�󿵰�</td>
						<td>�ð�</td>
					</tr>
					<c:forEach items="${scheduleCinemaList1}" var="schedule">
						<tr>
							<td>${schedule.title }</td>
							<td>${schedule.cinema_name }</td>
							<td>${schedule.schedule_time }</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		
		<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="../js/bootstrap.min.js"></script>
		<script>
			$('#myTab a').click(function(e) {
				e.preventDefault()
				$(this).tab('show')
			})
			$('#myTab a:first').tab('show')
		</script>
		<script>
			
			var calendar = new controller();
			calendar.init();

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
								.push('<td class="'+sClass+'"><a href="#"><span onclick="getdatevalue('+oStartDt.getDate()+')">'
										+ oStartDt.getDate()
										+ '</a></span></td>');	
						


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

			$('#nav li').bind('mouseenter keyup', function() { // �޴����� �� �޴��鿡 ���콺�� �ø��ų� Ű����� �̵��ϸ�,
				$(this).addClass('on').siblings().removeClass(); // �ش� �޴��� Ŭ���� on�� �߰��ϰ�, �ٸ� �޴��� Ŭ������ �����մϴ�.
			});

			function getdatevalue(day) {
				$('#choiceOption').show();
				var year = $('#currentDate').html().substr(0,4);
				var month = '';
				var curYearAndMonth='';
				if($('#currentDate').html().length>=9){
					month = $('#currentDate').html().substr(6,2);
				}else{
					month = $('#currentDate').html().substr(6,1);
				}
				curYearAndMonth = year+'-'+month+'-'+day;
				
                //var date = new Date(year+'-'+month+'-'+day);
				 
				document.form1.schedule_date.value =curYearAndMonth;
			}


		</script>
</body>
</html>