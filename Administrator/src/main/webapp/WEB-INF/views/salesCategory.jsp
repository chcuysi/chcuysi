<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>매출 > 카테고리별 매출</title>
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
                <li><a href="salesProducts.do">상품별 매출</a></li>
                <li><a href="salesCategory.do"class="active">카테고리별 매출</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        <!-- 메뉴 카테고리 (왼쪽메뉴 > 상단메뉴) -->
        <h2 id="category_menu"></h2>
        
        
        <!-- 그래프 -->
        <div class="templatemo-flex-row flex-content-row templatemo-overflow-hidden"> <!-- overflow hidden for iPad mini landscape view-->
            <div class="col-1 templatemo-overflow-hidden">
	            <!-- 과일 버튼 -->
		        <a href="salesCategory.do" class="button1">과일</a>
		        <!-- 채소 버튼 -->
		        <a href="salesVegetable.do" class="button2">채소</a>
		        <!-- 기타 버튼 -->
		        <a href="salesEtc.do" class="button5">기타</a>
		        
              <div class="templatemo-content-widget white-bg templatemo-overflow-hidden">
			
                <div class="templatemo-flex-row flex-content-row">
                  <div class="col-1 col-lg-6 col-md-12">
                    <h2 id="selectedOption" class="text-center"></h2>
                    <div id="pie_chart_div" class="templatemo-chart"></div> <!-- Pie chart div -->
                  </div>
                </div>                
              </div>
            </div>
          </div>
        			<!-- controller에서 가져온 값들: taglib 이용한 for문으로 출력, display 숨기기 -->
					<table style="display:none;">
					<tbody>
					<c:forEach items="${salesCategory}" var="salesCategory">
		                   <tr class="table_sc">
		                       <td>${salesCategory.category}</td>
		                       <td>${salesCategory.category2}</td>
		                       <td>${salesCategory.sell_total}</td>
		                   </tr>
		              	 </c:forEach>
					</tbody></table>
        
        
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
      // Callback that creates and populates a data table,
// instantiates the pie chart, passes in the data and
// draws it.
	function drawChart() {

          // Create the data table.
          var data = new google.visualization.DataTable();
          data.addColumn('string', 'Topping');
          data.addColumn('number', 'Slices');
          
          // table_sc 클래스를 가진 tr의 각 요소에 대해 반복작업
          $('.table_sc').each(function() {
        	    // 소카테고리 값을 변수에 넣음
        	    var fruitValue = $(this).find('td:eq(1)').text();
        	    // 그 소카테고리 값이 '사과/배'일 때
        	    if (fruitValue === '사과/배') {
        	      // 그 소카테고리 값의 매출액 출력
          	      data.addRow(['사과/배', parseInt($(this).find('td:eq(2)').text(), 10)]);
          	    }
        	    // ..이하 해당 작업 반복
        	    if (fruitValue === '수박/참외') {
        	      data.addRow(['수박/참외', parseInt($(this).find('td:eq(2)').text(), 10)]);
        	    }
        	});

          // Set chart options
          var options = {'title':'과일'};

          // Instantiate and draw our chart, passing in some options.
          var pieChart = new google.visualization.PieChart(document.getElementById('pie_chart_div'));
          pieChart.draw(data, options);

          var barChart = new google.visualization.BarChart(document.getElementById('bar_chart_div'));
          barChart.draw(data, options);
      }

          $(document).ready(function(){
        	  if($.browser.mozilla) {
        	    //refresh page on browser resize
        	    // http://www.sitepoint.com/jquery-refresh-page-browser-resize/
        	    $(window).bind('resize', function(e) {
        	      if (window.RT) clearTimeout(window.RT);
        	      window.RT = setTimeout(function() {
        	        this.location.reload(false); /* false to get page from cache */
        	      }, 200);
        	    });      
        	  } else {
        	    $(window).resize(function(){
        	      drawChart();
        	    });  
        	  }   
        	});
      
          function redirectToLink(selectElement) {
        	    var selectedValue = selectElement.value;
        	    if (selectedValue) {
        	      window.location.href = selectedValue;
        	    }
        	  }
          
          
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin.js"></script>


  </body>
</html>