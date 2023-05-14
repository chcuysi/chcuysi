<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>매출 > 상품별 매출</title>
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
				<!-- 로고 클릭 시 인덱스로 이동 -->
         		<a class="goToIndex" href="index">
         		<!-- 로고 이미지 -->
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
          	<!-- 대카테고리 메뉴 링크 -->
            <li><a href="getIokMenuList.do"><i class="fa fa-sliders fa-fw"></i>판매자관리</a></li>
            <li><a href="getRefundMenuList.do"><i class="fa fa-database fa-fw"></i>주문관리</a></li>
            <li><a href="salesProducts.do"class="active"><i class="fa fa-bar-chart fa-fw"></i>매출</a></li>
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
              <!-- 소카테고리 메뉴 링크 -->
              <ul class="text-uppercase">
                <li><a href="salesProducts.do" class="active">상품별 매출</a></li>
                <li><a href="salesCategory.do">카테고리별 매출</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        
        <!-- 메뉴 카테고리 (왼쪽메뉴 > 상단메뉴) -->
        <h2 id="category_menu"></h2>
        
        <!-- 매출 top4 그래프 -->
        <div class="templatemo-flex-row flex-content-row templatemo-overflow-hidden"> <!-- overflow hidden for iPad mini landscape view-->
            <div class="col-1 templatemo-overflow-hidden">
              <div class="templatemo-content-widget white-bg templatemo-overflow-hidden">
                <div class="templatemo-flex-row flex-content-row">
                  <div class="col-1 col-lg-6 col-md-12">
                    <div id="bar_chart_div" class="templatemo-chart"></div> <!-- Bar chart div -->
                  </div>  
                </div>                
              </div>
            </div>
          </div>
          
     <!-- 판매자 테이블 --> 
        <div class="templatemo-content-container">
          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table id="table_salesProducts" class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                  	<!-- 표에 사용할 컬럼명 -->
					<td><a class="white-text templatemo-sort-by">상품명<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">판매자ID<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">카테고리<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">판매가<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">매출액<span class="caret"></span></a></td>
                  </tr>
                </thead>
                <tbody>
                		<!-- 각 컬럼에 상응하는 값들: taglib 이용한 for문으로 출력 -->
                  		<c:forEach items="${salesProducts}" var="salesProducts">
		                   <tr>
							   <td>${salesProducts.name}  ${salesProducts.name2}</td>
		                       <td>${salesProducts.pid}</td>
		                       <td>${salesProducts.category} > ${salesProducts.category2}</td>
		                       <td>${salesProducts.price}</td>
		                       <td>${salesProducts.sell_total}</td>
		                   </tr>
		              	 </c:forEach>
                  		
                </tbody>
              </table>    
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
    <script>
      /* Google Chart 
      -------------------------------------------------------------------*/
      // Load the Visualization API and the piechart package.
      google.load('visualization', '1.0', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.setOnLoadCallback(drawChart); 
      
      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      
      function drawChart() {

          // Create the data table.
          var data = new google.visualization.DataTable();

          data.addColumn('string', 'Topping');
          data.addColumn('number', '매출액');
          
          // 테이블에 있는 상품명과 매출액 값을 표에다 넣음 (매출액은 int형으로 변환시킴)
          data.addRows([
            [$('#table_salesProducts tr:nth-child(1) td:nth-child(1)').text(), parseInt($('#table_salesProducts tr:nth-child(1) td:nth-child(5)').text().substring(3))],
            [$('#table_salesProducts tr:nth-child(2) td:nth-child(1)').text(), parseInt($('#table_salesProducts tr:nth-child(2) td:nth-child(5)').text())],
            [$('#table_salesProducts tr:nth-child(3) td:nth-child(1)').text(), parseInt($('#table_salesProducts tr:nth-child(3) td:nth-child(5)').text())],
            [$('#table_salesProducts tr:nth-child(4) td:nth-child(1)').text(), parseInt($('#table_salesProducts tr:nth-child(4) td:nth-child(5)').text())],
          ]);

          // Set chart options
          var options = {'title':'매출 Top4'};

          // Instantiate and draw our chart, passing in some options.
          var barChart = new google.visualization.BarChart(document.getElementById('bar_chart_div'));
          barChart.draw(data, options);
      }

      $(document).ready(function(){
        if($.browser.mozilla) {
          //refresh page on browser resize
          // http://www.sitepoint.com/jquery-refresh-page-browser-resize/
          $(window).bind('resize', function(e)
          {
            if (window.RT) clearTimeout(window.RT);
            window.RT = setTimeout(function()
            {
              this.location.reload(false); /* false to get page from cache */
            }, 200);
          });      
        } else {
          $(window).resize(function(){
            drawChart();
          });  
        }   
      });
      
      
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin.js"></script>


  </body>
</html>