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
	<h2>ȸ������</h2>
  	<hr class="my-4">
	<form name="joinForm" action="/insertMember.do" method="post">
		<table class="joinTable">
			<tr>
				<th class="tdJoin">���̵�</th>
				<td class="form-control-1"><input type="text"
					class="form-control" id="check" name="id"
					placeholder="���̵� �Է��ϼ���."></td>
				<td class="checkbtn"><button type="button" class="btn btn-secondary disabled btn-sm"
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
				<th class="tdJoin">��й�ȣ</th>
				<td class="form-control-1"><input type="password"
					class="form-control" id="pwd" name="password"
					placeholder="��й�ȣ�� �Է��ϼ���."></td>
				<td></td>
			</tr>
			<tr>
				<th class="tdJoin">��й�ȣ Ȯ��</th>
				<td class="form-control-1"><input type="password"
					class="form-control" id="check-pwd" name="pwd2"
					placeholder="��й�ȣ�� �Է��ϼ���."></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3"><hr></td>
			</tr>
			<tr>
				<th class="tdJoin">�̸�</th>
				<td class="form-control-1"><input type="text"
					class="form-control" id="name" name="name"
					placeholder="�̸��� �Է��ϼ���."></td>
				<td></td>
			</tr>
			<tr>
				<th class="tdJoin">�ڵ���</th>
				<td class="form-control-1"><input type="text"
					class="form-control" id="phone" name="phone"
					placeholder="�ڵ�����ȣ�� �Է��ϼ���."></td>
				<td></td>
			</tr>
			<tr>
				<td class="form-control-1" colspan="2">
					<button type="button" id="btn-join" class="btn btn-secondary btn-lg btn-block" onclick="return check1()">�����ϱ�</button>
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
	</form>
</div>

<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
	
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
</body>
</html>