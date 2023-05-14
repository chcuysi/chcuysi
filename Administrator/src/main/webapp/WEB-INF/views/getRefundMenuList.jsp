<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>주문관리 > 환불</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <!-- 
    Visual Admin Template
    https://templatemo.com/tm-455-visual-admin
    -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/templatemo-style.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body>  
<!-- Left column -->
    
<!-- 로고 -->
<div class="templatemo-flex-row">
	<div class="templatemo-sidebar">
		<header class="templatemo-site-header">
			<div class="logo">
         		<a class="goToIndex" href="index">
         		<img src="${pageContext.request.contextPath}/resources/images/LOGO2.png" alt="hexashop ecommerce templatemo">
			</a>
          	</div>

        </header>
         
         
        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
        </div>
        
        <!-- 왼쪽 메뉴 탭 -->
        <nav class="templatemo-left-nav">          
          <ul>
            <li><a href="getIokMenuList.do"><i class="fa fa-sliders fa-fw"></i>판매자관리</a></li>
            <li><a href="getRefundMenuList.do" class="active"><i class="fa fa-database fa-fw"></i>주문관리</a></li>
            <li><a href="salesProducts.do"><i class="fa fa-bar-chart fa-fw"></i>매출</a></li>
            <li><a href="getMemberMenuList.do"><i class="fa fa-users fa-fw"></i>회원관리</a></li>
            <li><a href="http://192.168.0.79:8082/Down/index.jsp"><i class="fa fa-home fa-fw"></i>사용자화면</a></li>
          </ul>  
        </nav>
      </div>
     	 
	<!-- 표 + footer --> 
      <div class="templatemo-content col-1 light-gray-bg">
      
      <!-- 상단 메뉴 탭 --> 
        <div class="templatemo-top-nav-container">
          <div class="row">
            <nav class="templatemo-top-nav col-lg-12 col-md-12">
              <ul class="text-uppercase">
                <li><a href="getRefundMenuList.do" class="active">환불</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        
        <!-- 메뉴 카테고리 (왼쪽메뉴 > 상단메뉴) -->
        <h2 id="category_menu"></h2>
        
        <!-- 판매물품승인 테이블 --> 
        <div class="templatemo-content-container">
          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table id="table_refund" class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                    <td><a href="" class="white-text templatemo-sort-by">주문번호<span class="caret"></span></a></td> 
                    <td><a href="" class="white-text templatemo-sort-by">회원ID<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">상품번호<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">상품명<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">판매자ID<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">환불수량<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">배송료<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">환불일자<span class="caret"></span></a></td>                   
                  </tr>
                </thead>
                <tbody>
                  		<c:forEach items="${refundMenuList}" var="refundMenu">
		                   <tr>
		                   	   <td>${refundMenu.onum}</td>
		                       <td>${refundMenu.mid}</td>
		                       <td>${refundMenu.inum}</td>
		                       <td>${refundMenu.name} ${refundMenu.name2}</td>
		                       <td>${refundMenu.pid}</td>
		                       <td>${refundMenu.icount}</td>
		                       <td>${refundMenu.delivery}</td>
		                       <td>${refundMenu.rdate.substring(0, 10)}</td>
		                       
		                   </tr>
		              	 </c:forEach>
                </tbody>
              </table>    
            </div>                          
          </div>          


<form id = 'detailInfo_refund' action="updateRefund"> <!-- 'updateRefund.do를 줄여씀' -->
<div class="templatemo-content-container">
	
	    
</form>
        
    
        </div>
      </div>
<footer class="text-right">
	<p>Copyright &copy; 2022 주식회사 사조  &nbsp
	Design: Template Mo</p>
</footer>           
    </div>
    
    <!-- JS -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
    <script src="https://www.google.com/jsapi"></script> <!-- Google Chart -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin.js"></script>


  </body>
</html>