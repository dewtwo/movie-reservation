<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/myPage.css">
<title>CINE LIVE</title>
</head>
<body>
<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
<div id="mypage">
	<h2>ID/PW 찾기</h2>
	<hr class="my-4">
	<div class="id idpwd">
		<h6 class="subtitle">아이디 찾기</h6>
		<form name="form1" action="/searchId.do" method="post" onsubmit="check1()">
			<table class="idpwd-table">
				<tr>
					<th class="tdwidth">이름</th>
					<td>
					<input type="text" class="form-control" name="name" placeholder="이름을 입력하세요.">
					</td>
				</tr>
				<tr>
					<th class="tdwidth">휴대폰</th>
					<td>
					<input type="text" class="form-control" name="phone" placeholder="휴대폰 번호를 입력하세요.">
					</td>
				</tr>
				<tr>
					<th class="tdwidth"></th>
					<td align="right">
					<button type="submit" class="btn btn-secondary" id="ok">확인</button>
					</td>
				</tr>
			</table>

			<c:choose>
				<c:when test="${msg1 == 'failure'}">
					<script>
					alert("회원님의 정보와 일치하는 아이디가 없습니다.");
					</script>
				</c:when>
				<c:when test="${msg1 == 'success'}">
					<script>
					var a = "<%=request.getAttribute("msg1name")%>";
					var b = "<%=request.getAttribute("msg1id")%>";
					var c = confirm(a+"님의 아이디는 "+b+"입니다. 확인을 누르면 로그인 페이지로 이동합니다.");
					if(c==true){
						location.href="loginPage.do";
					}
					</script>
				</c:when>
			</c:choose>

		</form>
	</div>

	<div class="pwd idpwd">
		<h6 class="subtitle">비밀번호 찾기</h6>
		<form name="form2" action="/searchPwd.do" method="post" onsubmit="check2()">
			<table class="idpwd-table">
				<tr>
					<th class="tdwidth">아이디</th>
					<td><input type="text" class="form-control" name="id" placeholder="아이디를 입력하세요."></td>
				</tr>
				<tr>
					<th class="tdwidth">이름</th>
					<td><input type="text" class="form-control" name="name" placeholder="이름을 입력하세요."></td>
				</tr>
				<tr>
					<th class="tdwidth">휴대폰</th>
					<td><input type="text" class="form-control" name="phone" placeholder="휴대폰번호를 입력하세요."></td>
				</tr>
				<tr>
					<th class="tdwidth"></th>
					<td align="right">
					
					<button type="submit" class="btn btn-secondary" id="ok">확인</button>
				</tr>
			</table>

			<c:choose>
				<c:when test="${msg2 == 'failure'}">
					<script>
					alert("입력하신 정보와 일치하는 회원이 없습니다.");
					</script>
				</c:when>
				<c:when test="${msg2 == 'success' }">
					<script>
					var a = "<%=request.getAttribute("msg2id")%>";
					var b = "<%=request.getAttribute("msg2password")%>";
					var c = confirm(a+"님의 비밀번호는 "+b+"입니다. 확인을 누르면 로그인 페이지로 이동합니다.");
					if(c==true){
						location.href="loginPage.do";
					}
					</script>
				</c:when>
			</c:choose>
		</form>
	</div>

	<div id="information">
		<h6>※ 이용 문의</h6>
		씨네라이브 고객센터 : 1234-1234
		<br> 문의 가능 시간 : 09:00 ~ 18:00 (월~금)
	</div>
</div>

<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
	
<script>
	function check1() {
		if (document.form1.name.value == "") {
			alert("id를 입력하세요!");
			document.form1.name.focus();
			return;
		}
		if (document.form1.phone.value == "") {
			alert("비밀번호를 입력하세요!");
			document.form1.phone.focus();
			return;
		}
	}
	
	function check2(){
		if (document.form2.id.value == "") {
			alert("id를 입력하세요!");
			document.form2.id.focus();
			return;
		}
		if (document.form2.name.value == "") {
			alert("id를 입력하세요!");
			document.form2.name.focus();
			return;
		}
		if (document.form2.phone.value == "") {
			alert("비밀번호를 입력하세요!");
			document.form2.phone.focus();
			return;
		}
	}
</script>
</body>
</html>