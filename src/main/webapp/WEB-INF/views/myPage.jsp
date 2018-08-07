<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/myPage.css">
</head>
<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>

	<div id="mypage">
		<h2>MY PAGE</h2>
		<hr class="my-4">
		<h6>${sessionScope.name}(${sessionScope.id})��  ȯ���մϴ�!</h6>
		
		<form>
			<table id="resList" class="table table-hover">
				<thead>
				  <tr>
				    <th scope="col">���Ź�ȣ</th>
				    <th scope="col">��ȭ</th>
				    <th scope="col">�󿵰�</th>
				    <th scope="col">�����Ͻ�</th>
				    <th scope="col">�¼�</th>
				    <th scope="col"></th>
				  </tr>
				</thead>
				<tbody>
				<c:forEach var="reservation" items="${reservation }">
					<tr>
						<td align="left">${reservation.reservation_code}</td>
						<td align="left"><img src="${reservation.poster}"
							id="poster">&nbsp;&nbsp;${reservation.title}</td>
						<td>${reservation.cinema_name}&nbsp;${reservation.theater}��</td>
						<td>${reservation.schedule_date}&nbsp;${reservation.schedule_time}</td>
						<td>${reservation.seat}</td>
						<td><button type="button" class="btn btn-secondary" id="bt1"
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
				</tbody>
			</table>
		</form>
	</div>

	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
</body>
</html>