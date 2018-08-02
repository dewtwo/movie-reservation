<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/myPage.css">
<title>CINE LIVE</title>
</head>
<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>

	<div id="margin">
		<h1>����������</h1>
		<br> <br>
		<h5>${sessionScope.name}(${sessionScope.id})��ȯ���մϴ�!</h5>
		<br>
		<hr>

		<form>
			<h4>���ų���</h4>
			<br>
			<table id="resList">
				<!--             <tr>
               <td>���Ź�ȣ</td>
               <td>��ȭ��</td>
               <td>��������</td>
               <td>�����Ͻ�</td>
               <td>�¼�</td>
               <td></td>
            </tr> -->
				<c:forEach var="reservation" items="${reservation }">
					<tr>
						<td align="left">���Ź�ȣ<br>${reservation.reservation_code}</td>
						<td align="left"><img src="/img/${reservation.poster}"
							id="poster">&nbsp;&nbsp;${reservation.title}</td>
						<td>${reservation.cinema_name}&nbsp;${reservation.theater}��</td>
						<td>�����Ͻ�<br>${reservation.schedule_date}&nbsp;${reservation.schedule_time}</td>
						<td>�¼�<br>${reservation.seat}</td>
						<td><button type="button" class="btn" id="bt1"
								onclick="cancel()">�������</button>
					</tr>
					<script>
						function cancel() {
							var result = confirm("���Ÿ� ����Ͻðڽ��ϱ�?");
							if (result == true) {
								location.href = "deleteReservation.do?reservation_code=${reservation.reservation_code}&id=${reservation.id}";
							}
							else{
								location.href="allReservationList.do?id=${reservation.id}";
							}
						}
					</script>


				</c:forEach>
			</table>
		</form>
	</div>
	<br>
	<br>

	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>