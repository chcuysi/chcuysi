<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    
    
<!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl-carousel.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lightbox.css">
    
    
</head>
<body style="overflow-x:hidden; overflow-y:hidden;">
<hr/>
<h2>주문 정보</h2>
<hr/>
<table id="payTable">
<tr>
<td>상품명</td><td>가격</td><td>수량</td><td>배송비</td><td>판매자ID</td>
</tr>


<c:forEach items="${sessionScope.products}" var="i">

<tr>
<td class="name">${i.name} ${i.name2}</td><td class="price">${i.price}</td><td class="iCount">${i.iCount}</td><td class="delivery">${i.delivery}</td><td class="pid">${i.pid}</td>
</tr>
<c:set var="total" value="${total + i.price * i.iCount}"></c:set>
<c:set var="tax" value="${tax + i.delivery}"></c:set>
</c:forEach>
</table>
<hr/>
<h4>총 결제금액 : <c:out value="${total-tax}"></c:out> 원</h4>
<hr/>
<h2>결제정보</h2>
<hr/>
<table id="payTable">
<tr>
<td>결제자ID</td><td>결제자이름</td><td>결제자전화번호</td>
</tr>
<tr>
<td>${sessionScope.logName}</td><td>${sessionScope.logName}</td><td>${sessionScope.logName}</td>
</tr>
</table>

<a href="#"><h1>결제하기</h1></a>
</body>
<script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
 
 $('a').click(function(evt) {
	 evt.preventDefault();
	 location.href="testBuy"; 
	 opener.location.href="sajo";
	 self.close();
 });
   

</script>

</html>