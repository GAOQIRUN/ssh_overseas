<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<script>
	if (session.getAttribute("currentUser") == null) {
		window.parent.location = 'login.html';

	}
</script>

</head>
<body>
	�˻���Ϣ
	<br> ���ţ�${account.name }
	<br> ���룺${account.password }
	<br> email��${account.email }
	<br>
</body>
</html>