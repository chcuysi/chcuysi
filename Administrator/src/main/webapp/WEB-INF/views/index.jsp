<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Main Page</title>
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
  <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/resources/css/templatemo-style.css" rel="stylesheet">
<style>
  /* CSS 스타일을 이용하여 요소를 화면 세로 중앙에 배치합니다. */
  body {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
  }
  
  
  
</style>
</head>
<body>
  
  <div id="screenName">+
	  <h3 id="text">관리자화면</h3>
	  <h3 id="text2">사용자화면</h3>
  </div>
  <br>
  
  <div class="button-container">
    <button id="adminButton"><a href="getIokMenuList.do">바로가기</a></button>
    <button id="userButton"><a href="http://192.168.0.79:8280/Down/index.jsp">바로가기</a></button>
  </div>
  
</body>
</html>
