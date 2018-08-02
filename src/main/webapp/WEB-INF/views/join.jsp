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
			alert("id�� �Է��ϼ���!");
			document.joinForm.id.focus();
			return false;
		}
		if (document.joinForm.password.value == "") {
			alert("��й�ȣ�� �Է��ϼ���!");
			document.joinForm.password.focus();
			return false;
		}
		if (document.joinForm.pwd2.value == "") {
			alert("���� ��й�ȣ�� �Է��ϼ���!");
			document.joinForm.pwd2.focus();
			return false;
		}
		if (document.joinForm.password.value != document.joinForm.pwd2.value) {
			alert("��й�ȣ�� ���� �ٸ��ϴ�.");
			document.joinForm.pwd2.focus();
			return false;
		}
		if (document.joinForm.name.value == "") {
			alert("�̸��� �Է��ϼ���!");
			document.joinForm.name.focus();
			return false;
		}
		if (document.joinForm.phone.value == "") {
			alert("��ȭ��ȣ�� �Է��ϼ���!");
			document.joinForm.phone.focus();
			return false;
		}
		
		var form = document.forms['joinForm'];
		form.action = "/insertMember.do";
		form.submit();
	}

	function check2() {
		if (document.joinForm.id.value == "") {
			alert("id�� �Է��ϼ���!");
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
		<h1>ȸ�� ����</h1>
	</center>
	<br>
	<form name="joinForm" action="/insertMember.do" method="post">
		<center>
			<table class="joinTable">
				<tr>
					<td class="tdJoin">���̵�</td>
					<td class="form-control-1"><input type="text"
						class="form-control" id="check" name="id"
						placeholder="���̵� �Է��ϼ���."></td>
					<td class="checkbtn"><button type="button" class="btn"
							id="checkb" onclick="return check2()">�ߺ�Ȯ��</button></td>
				</tr>
				<c:choose>
					<c:when test="${inform == 'success'}">
						<script>
						var tmp = "<%=request.getAttribute("tmp")%>";
							var result = confirm("�ߺ��Ǵ� ���̵� �����ϴ�.");
							if (result) {
								document.joinForm.id.value = tmp;
							}
						</script>
					</c:when>
					<c:when test="${inform == 'failure'}">
						<script>
							alert("�ߺ��Ǵ� ���̵��Դϴ�!");
						</script>
					</c:when>
				</c:choose>

				<tr>
					<td class="tdJoin">��й�ȣ</td>
					<td class="form-control-1"><input type="password"
						class="form-control" id="pwd" name="password"
						placeholder="��й�ȣ�� �Է��ϼ���."></td>
					<td></td>
				</tr>
				<tr>
					<td class="tdJoin">��й�ȣ Ȯ��</td>
					<td class="form-control-1"><input type="password"
						class="form-control" id="pwd" name="pwd2"
						placeholder="��й�ȣ�� �Է��ϼ���."></td>
					<td></td>
				</tr>
				<tr>
					<td colspan="3"><hr></td>
				</tr>
				<tr>
					<td class="tdJoin">�̸�</td>
					<td class="form-control-1"><input type="text"
						class="form-control" id="name" name="name"
						placeholder="�̸��� �Է��ϼ���."></td>
					<td></td>
				</tr>
				<tr>
					<td class="tdJoin">�ڵ���</td>
					<td class="form-control-1"><input type="text"
						class="form-control" id="phone" name="phone"
						placeholder="�ڵ�����ȣ�� �Է��ϼ���."></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td class="form-control-1">
						<center>
							<button type="button" class="btn btn-primary"
								onclick="return check1()">�����ϱ�</button>
						</center>
					</td>
					<td></td>
				</tr>
			</table>
			<c:choose>
				<c:when test="${msg == 'success'}">
					<script>
						var result = confirm("ȸ������ ����! Ȯ���� ������ �α��� �������� �̵��մϴ�.");
						if (result) {
							location.replace('/loginPage.do');
						}
					</script>
				</c:when>
				<c:when test="${msg == 'failure'}">
					<script>
						alert("ȸ������ ����!");
					</script>
				</c:when>
			</c:choose>

		</center>
	</form>

	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>