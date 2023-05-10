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
  div#screenName {
    display: flex;
  }
h3#text, h3#text2 {
  flex: 1;
  text-align: center;
  color: white;
  font-size: 24px;
}
  h3#text2 {
  margin-left: 100px;
}
  
  .button-container {
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .button-container button {
    margin: -80 80px; /* 수정된 부분: 버튼 사이의 거리를 10px로 설정 */
  }
  
  #adminButton {
  appearance: none;
  background-color: #2ea44f;
  border: 1px solid rgba(27, 31, 35, .15);
  border-radius: 6px;
  box-shadow: rgba(27, 31, 35, .1) 0 1px 0;
  box-sizing: border-box;
  color: #ffffff;
  cursor: pointer;
  display: inline-block;
  margin-right: 15px;
  font-family: -apple-system,system-ui,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji";
  font-size: 14px;
  font-weight: 600;
  line-height: 20px;
  padding: 6px 16px;
  position: relative;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: middle;
  white-space: nowrap;
}
  #adminButton:focus:not(:focus-visible):not(.focus-visible) {
  box-shadow: none;
  outline: none;
}
  #adminButton:hover {
  background-color: #2c974b;
}
  #adminButton:focus {
  box-shadow: rgba(46, 164, 79, .4) 0 0 0 3px;
  outline: none;
}
  #adminButton:disabled {
  background-color: #94d3a2;
  border-color: rgba(27, 31, 35, .1);
  color: rgba(255, 255, 255, .8);
  cursor: default;
}
  #adminButton:active {
  background-color: #298e46;
  box-shadow: rgba(20, 70, 32, .2) 0 1px 0 inset;
}




  #userButton {
  appearance: none;
  background-color: #2ea44f;
  border: 1px solid rgba(27, 31, 35, .15);
  border-radius: 6px;
  box-shadow: rgba(27, 31, 35, .1) 0 1px 0;
  box-sizing: border-box;
  color: #ffffff;
  cursor: pointer;
  display: inline-block;
  margin-right: 15px;
  font-family: -apple-system,system-ui,"Segoe UI",Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji";
  font-size: 14px;
  font-weight: 600;
  line-height: 20px;
  padding: 6px 16px;
  position: relative;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: middle;
  white-space: nowrap;
}
  #userButton:focus:not(:focus-visible):not(.focus-visible) {
  box-shadow: none;
  outline: none;
}
  #userButton:hover {
  background-color: #2c974b;
}
  #userButton:focus {
  box-shadow: rgba(46, 164, 79, .4) 0 0 0 3px;
  outline: none;
}
  #userButton:disabled {
  background-color: #94d3a2;
  border-color: rgba(27, 31, 35, .1);
  color: rgba(255, 255, 255, .8);
  cursor: default;
}
  #userButton:active {
  background-color: #298e46;
  box-shadow: rgba(20, 70, 32, .2) 0 1px 0 inset;
}



  
  a{
  	color: white;
  }
  
  
  
</style>
</head>
<body>
  
  <div id="screenName">
	  <h3 id="text">관리자화면</h3>
	  <h3 id="text2">사용자화면</h3>
  </div>
  <br><br>
  
  <div class="button-container">
    <button id="adminButton"><a href="getMemberMenuList.do">바로가기</a></button>
    <button id="userButton"><a href="getMemberMenuList.do">바로가기</a></button>
  </div>
  
</body>
</html>
