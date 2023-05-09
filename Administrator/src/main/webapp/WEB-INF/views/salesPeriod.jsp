<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>SAJO</title>
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
         		<img src="${pageContext.request.contextPath}/resources/images/LOGO2.png" alt="hexashop ecommerce templatemo">
          	</div>

        </header>
         
         
        <div class="mobile-menu-icon">
            <i class="fa fa-bars"></i>
        </div>
        
        <!-- 왼쪽 메뉴 탭 -->
        <nav class="templatemo-left-nav">          
          <ul>
            <li><a href="getIokMenuList.do"><i class="fa fa-sliders fa-fw"></i>판매자관리</a></li>
            <li><a href="getDeliveryMenuList.do"><i class="fa fa-database fa-fw"></i>주문관리</a></li>
            <li><a href="salesProducts?pageType=index"class="active"><i class="fa fa-bar-chart fa-fw"></i>매출</a></li>
            <li><a href="getMemberMenuList.do"><i class="fa fa-users fa-fw"></i>회원관리</a></li>
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
                <li><a href="salesProducts?pageType=index">상품별 매출</a></li>
                <li><a href="salesCategory?pageType=index">카테고리별 매출</a></li>
                <li><a href="salesPeriod?pageType=index"class="active">기간별 매출</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        
        <!-- 메뉴 카테고리 (왼쪽메뉴 > 상단메뉴) -->
        <h2 id="category_menu"></h2>
        
        <!-- 그래프 -->
        <div class="templatemo-flex-row flex-content-row templatemo-overflow-hidden"> <!-- overflow hidden for iPad mini landscape view-->
            <div class="col-1 templatemo-overflow-hidden">
              <div class="templatemo-content-widget white-bg templatemo-overflow-hidden">
				<select id="yearSelect" class="select_category_non_colored" style="font-size: 16px; z-index:1;">
				  <option value="2023" selected>2023</option>
				  <option value="2022">2022</option>   
				  <option value="2021">2021</option>                  
				</select>
                <div class="panel-body">              
                <div class="templatemo-flex-row flex-content-row">
                  <div class="col-1 col-lg-6 col-md-12">
                  <h2 id="selectedOption" class="text-center"></h2>
                    <div id="area_chart_div" class="templatemo-chart"></div>
                  </div>              
                </div>
              </div>                
              </div>
            </div>
          </div>
        
        
        
        
<footer class="text-right">
	<p>Copyright &copy; 2084 Company Name 
	Design: Template Mo</p>
</footer>           
</div>
    
    <!-- JS -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-1.2.1.min.js"></script> <!--  jQuery Migrate Plugin -->
    <script src="https://www.google.com/jsapi"></script> <!-- Google Chart -->

    <script>

      var areaData;
      var areaOptions;
      var areaChart;

      /* Gauage 
      --------------------------------------------------*/
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);

      /* Area Chart 
      --------------------------------------------------*/
      function drawChart() {
        areaData = google.visualization.arrayToDataTable([
          ['월', '총매출', '순매출'],
          ['1',  1000,      400],
          ['2',  1170,      460],
          ['3',  660,       300],
          ['4',  1030,      240],
          ['5',  1280,      640],
          ['6',  430,      340],
          ['7',  1030,      540],
          ['8',  1900,      900],
          ['9',  790,      100],
          ['10',  2600,      1040],
          ['11',  420,      140],
          ['12',  630,      120]
        ]);

        areaOptions = {
          title: '월별 매출',
          hAxis: {title: '월',  titleTextStyle: {color: '#333'}},
          vAxis: {minValue: 0}
        };

        areaChart = new google.visualization.AreaChart(document.getElementById('area_chart_div'));
        areaChart.draw(areaData, areaOptions);
      } // End function drawChart

      function drawCharts () {
          gaugeChart.draw(gaugeData, gaugeOptions);
          timelineChart.draw(timelineDataTable, timelineOptions);
          areaChart.draw(areaData, areaOptions);
      }
      
      $(document).ready(function(){
    	  const selectElement = document.getElementById("yearSelect");
    	    const h2Element = document.getElementById("selectedOption");

    	    selectElement.addEventListener("change", (event) => {
    	        const selectedOption = event.target.value;
    	        h2Element.innerText = selectedOption;
    	    });

    	    // 초기값 설정
    	    const defaultOption = selectElement.options[selectElement.selectedIndex].value;
    	    h2Element.innerText = defaultOption;
      });

    </script>



    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin.js"></script>


  </body>
</html>