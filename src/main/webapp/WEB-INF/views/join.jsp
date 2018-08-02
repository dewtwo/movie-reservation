<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>CINE LIVE</title>

<script>

	function check1() {
		if (document.joinForm.id.value == "") {
			alert("id를 입력하세요!");
			document.joinForm.id.focus();
			return false;
		}
		if (document.joinForm.password.value == "") {
			alert("비밀번호를 입력하세요!");
			document.joinForm.password.focus();
			return false;
		}
		if (document.joinForm.pwd2.value == "") {
			alert("검증 비밀번호를 입력하세요!");
			document.joinForm.pwd2.focus();
			return false;
		}
		if (document.joinForm.password.value != document.joinForm.pwd2.value) {
			alert("비밀번호가 서로 다릅니다.");
			document.joinForm.pwd2.focus();
			return false;
		}
		if (document.joinForm.name.value == "") {
			alert("이름을 입력하세요!");
			document.joinForm.name.focus();
			return false;
		}
		if (document.joinForm.phone.value == "") {
			alert("전화번호를 입력하세요!");
			document.joinForm.phone.focus();
			return false;
		}
		
		var form = document.forms['joinForm'];
		form.action = "/insertMember.do";
		form.submit();
	}

	function check2() {
		if (document.joinForm.id.value == "") {
			alert("id를 입력하세요!");
			document.joinForm.id.focus();
			return false;
		}else{		
		var form = document.forms['joinForm'];
		form.action = "/insertCheck.do";
		form.submit();
		}
	}

</script>
</head>
<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
	<link rel="stylesheet" type="text/css"
		href="<c:url value='/css/bootstrap-custom.css'/>">
	<br>
	<center>
		<h1>회원 가입</h1>
	</center>
	<br>
	<form name="joinForm" action="/insertMember.do" method="post">
		<center>
			<table class="joinTable">
				<tr>
					<td class="tdJoin">아이디</td>
					<td class="form-control-1"><input type="text"
						class="form-control" id="check" name="id"
						placeholder="아이디를 입력하세요."></td>
					<td class="checkbtn"><button type="button" class="btn"
							id="checkb" onclick="return check2()">중복확인</button></td>
				</tr>
				<c:choose>
					<c:when test="${inform == 'success'}">
						<script>
						var tmp = "<%=request.getAttribute("tmp")%>";
							var result = confirm("중복되는 아이디가 없습니다.");
							if (result) {
								document.joinForm.id.value = tmp;
							}
						</script>
					</c:when>
					<c:when test="${inform == 'failure'}">
						<script>
							alert("중복되는 아이디입니다!");
						</script>
					</c:when>
				</c:choose>

				<tr>
					<td class="tdJoin">비밀번호</td>
					<td class="form-control-1"><input type="password"
						class="form-control" id="pwd" name="password"
						placeholder="비밀번호를 입력하세요."></td>
					<td></td>
				</tr>
				<tr>
					<td class="tdJoin">비밀번호 확인</td>
					<td class="form-control-1"><input type="password"
						class="form-control" id="pwd" name="pwd2"
						placeholder="비밀번호를 입력하세요."></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="3"><hr></td>
				</tr>
				<tr>
					<td class="tdJoin">이름</td>
					<td class="form-control-1"><input type="text"
						class="form-control" id="name" name="name"
						placeholder="이름을 입력하세요."></td>
					<td></td>
				</tr>
				<tr>
					<td class="tdJoin">핸드폰</td>
					<td class="form-control-1"><input type="text"
						class="form-control" id="phone" name="phone"
						placeholder="핸드폰번호를 입력하세요."></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td class="form-control-1">
						<center>
							<button type="button" class="btn btn-primary"
								onclick="return check1()">가입하기</button>
						</center>
					</td>
					<td></td>
				</tr>
			</table>
			<c:choose>
				<c:when test="${msg == 'success'}">
					<script>
						var result = confirm("회원가입 성공! 확인을 누르면 로그인 페이지로 이동합니다.");
						if (result) {
							location.replace('/loginPage.do');
						}
					</script>
				</c:when>
				<c:when test="${msg == 'failure'}">
					<script>
						alert("회원가입 실패!");
					</script>
				</c:when>
			</c:choose>

		</center>
	</form>

	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>