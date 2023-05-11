<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background: black">
<h1 style="color: white; text-align: center; line-height: 700px;">곧 결제가 완료됩니다.</h1>
</body>

<script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.0.min.js"></script>
<script type="text/javascript">

setTimeout(function() {
	location.href="sajo";
},2000) 

</script>
</html>