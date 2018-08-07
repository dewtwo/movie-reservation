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
	<h2>ID/PW ã��</h2>
	<hr class="my-4">
	<div class="id idpwd">
		<h6 class="subtitle">���̵� ã��</h6>
		<form name="form1" action="/searchId.do" method="post" onsubmit="check1()">
			<table class="idpwd-table">
				<tr>
					<th class="tdwidth">�̸�</th>
					<td>
					<input type="text" class="form-control" name="name" placeholder="�̸��� �Է��ϼ���.">
					</td>
				</tr>
				<tr>
					<th class="tdwidth">�޴���</th>
					<td>
					<input type="text" class="form-control" name="phone" placeholder="�޴��� ��ȣ�� �Է��ϼ���.">
					</td>
				</tr>
				<tr>
					<th class="tdwidth"></th>
					<td align="right">
					<button type="submit" class="btn btn-secondary" id="ok">Ȯ��</button>
					</td>
				</tr>
			</table>

			<c:choose>
				<c:when test="${msg1 == 'failure'}">
					<script>
					alert("ȸ������ ������ ��ġ�ϴ� ���̵� �����ϴ�.");
					</script>
				</c:when>
				<c:when test="${msg1 == 'success'}">
					<script>
					var a = "<%=request.getAttribute("msg1name")%>";
					var b = "<%=request.getAttribute("msg1id")%>";
					var c = confirm(a+"���� ���̵�� "+b+"�Դϴ�. Ȯ���� ������ �α��� �������� �̵��մϴ�.");
					if(c==true){
						location.href="loginPage.do";
					}
					</script>
				</c:when>
			</c:choose>

		</form>
	</div>

	<div class="pwd idpwd">
		<h6 class="subtitle">��й�ȣ ã��</h6>
		<form name="form2" action="/searchPwd.do" method="post" onsubmit="check2()">
			<table class="idpwd-table">
				<tr>
					<th class="tdwidth">���̵�</th>
					<td><input type="text" class="form-control" name="id" placeholder="���̵� �Է��ϼ���."></td>
				</tr>
				<tr>
					<th class="tdwidth">�̸�</th>
					<td><input type="text" class="form-control" name="name" placeholder="�̸��� �Է��ϼ���."></td>
				</tr>
				<tr>
					<th class="tdwidth">�޴���</th>
					<td><input type="text" class="form-control" name="phone" placeholder="�޴�����ȣ�� �Է��ϼ���."></td>
				</tr>
				<tr>
					<th class="tdwidth"></th>
					<td align="right">
					
					<button type="submit" class="btn btn-secondary" id="ok">Ȯ��</button>
				</tr>
			</table>

			<c:choose>
				<c:when test="${msg2 == 'failure'}">
					<script>
					alert("�Է��Ͻ� ������ ��ġ�ϴ� ȸ���� �����ϴ�.");
					</script>
				</c:when>
				<c:when test="${msg2 == 'success' }">
					<script>
					var a = "<%=request.getAttribute("msg2id")%>";
					var b = "<%=request.getAttribute("msg2password")%>";
					var c = confirm(a+"���� ��й�ȣ�� "+b+"�Դϴ�. Ȯ���� ������ �α��� �������� �̵��մϴ�.");
					if(c==true){
						location.href="loginPage.do";
					}
					</script>
				</c:when>
			</c:choose>
		</form>
	</div>

	<div id="information">
		<h6>�� �̿� ����</h6>
		���׶��̺� ������ : 1234-1234
		<br> ���� ���� �ð� : 09:00 ~ 18:00 (��~��)
	</div>
</div>

<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
	
<script>
	function check1() {
		if (document.form1.name.value == "") {
			alert("id�� �Է��ϼ���!");
			document.form1.name.focus();
			return;
		}
		if (document.form1.phone.value == "") {
			alert("��й�ȣ�� �Է��ϼ���!");
			document.form1.phone.focus();
			return;
		}
	}
	
	function check2(){
		if (document.form2.id.value == "") {
			alert("id�� �Է��ϼ���!");
			document.form2.id.focus();
			return;
		}
		if (document.form2.name.value == "") {
			alert("id�� �Է��ϼ���!");
			document.form2.name.focus();
			return;
		}
		if (document.form2.phone.value == "") {
			alert("��й�ȣ�� �Է��ϼ���!");
			document.form2.phone.focus();
			return;
		}
	}
</script>
</body>
</html>