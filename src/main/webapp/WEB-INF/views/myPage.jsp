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
		<h6>${sessionScope.name}(${sessionScope.id})님  환영합니다!</h6>
		
		<form>
			<table id="resList" class="table table-hover">
				<thead>
				  <tr>
				    <th scope="col">예매번호</th>
				    <th scope="col">영화</th>
				    <th scope="col">상영관</th>
				    <th scope="col">관람일시</th>
				    <th scope="col">좌석</th>
				    <th scope="col"></th>
				  </tr>
				</thead>
				<tbody>
				<c:forEach var="reservation" items="${reservation }">
					<tr>
						<td align="left">${reservation.reservation_code}</td>
						<td align="left"><img src="${reservation.poster}"
							id="poster">&nbsp;&nbsp;${reservation.title}</td>
						<td>${reservation.cinema_name}&nbsp;${reservation.theater}관</td>
						<td>${reservation.schedule_date}&nbsp;${reservation.schedule_time}</td>
						<td>${reservation.seat}</td>
						<td><button type="button" class="btn btn-secondary" id="bt1"
								onclick="cancel()">예매취소</button>
					</tr>
					<script>
						function cancel() {
							var result = confirm("예매를 취소하시겠습니까?");
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