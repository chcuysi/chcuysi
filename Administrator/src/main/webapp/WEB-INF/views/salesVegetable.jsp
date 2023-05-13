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
            <li><a href="salesProducts.do"class="active"><i class="fa fa-bar-chart fa-fw"></i>매출</a></li>
            <li><a href="getMemberMenuList.do"><i class="fa fa-users fa-fw"></i>회원관리</a></li>
            <li><a href="http://192.168.0.79:8280/Down/index.jsp"><i class="fa fa-home fa-fw"></i>사용자화면</a></li>
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
            <!-- 상세정보창 내용 수정 -->
		        <a href="salesCategory.do" class="button3">과일</a>
		        <!-- 상세정보창 내용 수정사항 취소 -->
		        <a href="salesVegetable.do" class="button4">채소</a>
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
        
					<table style="display:none;">
					<tbody>
					<c:forEach items="${salesVegetable}" var="salesVegetable">
		                   <tr class="table_sc">
		                       <td>${salesVegetable.category}</td>
		                       <td>${salesVegetable.category2}</td>
		                       <td>${salesVegetable.sell_total}</td>
		                   </tr>
		              	 </c:forEach>
					</tbody></table>
        
        
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
          
          $('.table_sc').each(function() {
        	    var vegValue = $(this).find('td:eq(1)').text();
        	    if (vegValue === '새송이/버섯류') {
          	      data.addRow(['새송이/버섯류', parseInt($(this).find('td:eq(2)').text(), 10)]);
          	    }
        	    if (vegValue === '감자/고구마') {
        	      data.addRow(['감자/고구마', parseInt($(this).find('td:eq(2)').text(), 10)]);
        	    }
        	    if (vegValue === '사과/배') {
          	      data.addRow(['사과/배', parseInt($(this).find('td:eq(2)').text(), 10)]);
          	    }
        	});

          // Set chart options
          var options = {'title':'채소'};

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