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
            <li><a href="getIokMenuList.do" class="active"><i class="fa fa-sliders fa-fw"></i>판매자관리</a></li>
            <li><a href="getDeliveryMenuList?pageType=index"><i class="fa fa-database fa-fw"></i>주문관리</a></li>
            <li><a href="maps?pageType=index"><i class="fa fa-bar-chart fa-fw"></i>매출</a></li>
            <li><a href="getMemberMenuList?pageType=index"><i class="fa fa-users fa-fw"></i>회원관리</a></li>
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
                <li><a href="getIokMenuList.do">판매승인</a></li>
                <li><a href="getCalculateMenuList?pageType=index" class="active">정산</a></li>
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
              <table id="table_calculate" class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                    <td><a href="" class="white-text templatemo-sort-by">판매자번호<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">판매자<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">상품명<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">상품판매금액<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">배송비<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">수수료<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">총정산금액<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">정산상태<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">입금일<span class="caret"></span></a></td>
                  </tr>
                </thead>
                <tbody>
                	
                  		<tr>
		                    <td>판매자번호</td>
		                    <td>판매자</td>
		                    <td>상품명</td>
		                    <td>상품판매금액</td>
		                    <td>배송비</td>
		                    <td>수수료</td>
		                    <td>총정산금액</td>
		                    <td>-</td>
		                    <td>2023-01-01</td>
                  		</tr>  
                  		
                </tbody>
              </table>    
            </div>                          
          </div>          
          
          <!-- 페이지 이동 버튼 -->
          <div class="pagination-wrap">
            <ul class="pagination">
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li class="active"><a href="#">3 <span class="sr-only">(current)</span></a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li>
                <a href="#" aria-label="Next">
                  <span aria-hidden="true"><i class="fa fa-play"></i></span>
                </a>
              </li>
            </ul>
          </div>

<!-- 판매물품승인 테이블 클릭 시 나오는 상세정보창 -->
<form id = 'detailInfo_calculate' action="updateCalculate" method = 'post'> <!-- 'updateCalculate.do를 줄여씀' -->
          
<!-- 상세정보창 테이블 --> 
<div class="templatemo-content-container">
	<div class="templatemo-content-widget no-padding">
		<div class="panel panel-default table-responsive">
			<table id="table_detailCalculate" class="table table-striped table-bordered cate_detail">
				<tbody>
					<tr>
						<td><a class="white-text templatemo-sort-by">판매자번호</a></td>
                    	<td></td>
                    	<td><a class="white-text templatemo-sort-by">판매자</a></td>
                    	<td></td>
                  	</tr>
                  	<tr>
                    	<td><a class="white-text templatemo-sort-by">상품명</a></td>
                    	<td></td>
                    	<td><a class="white-text templatemo-sort-by">상품판매금액</a></td>
                    	<td></td>
                  	</tr>
                  	<tr>
                    	<td><a class="white-text templatemo-sort-by">배송비</a></td>
                    	<td></td>
                    	<td><a class="white-text templatemo-sort-by">수수료</a></td>
                    	<td></td>
                  	</tr>
                  	<tr>
                    	<td><a class="white-text templatemo-sort-by">총정산금액</a></td>
                    	<td></td>
                    	<td><a class="white-text templatemo-sort-by">정산상태</a></td>
                    	<td style="position: relative;">             
                  			<select class="select_detail_non_colored">
                    			<option value="O">O</option>
                    			<option value="X">X</option>   
                    			<option value="-">-</option>                   
	                  		</select>
                  		</td>
                  	</tr>
                  	<tr>
                    	<td style="vertical-align: middle;"><a class="white-text templatemo-sort-by">입금일</a></td>
                    	<td colspan='3'>
							<input type='date' class="select_date_colored">
						</td>
                 	</tr>
                </tbody>
			</table> 
		</div>                          
	</div>
	<div style="width:100px; text-align: center;margin:auto;display: flex;">
    	<!-- 상세정보창 내용 수정 -->
        <button type="button" class="btn_modify">수정</button>
        <!-- 상세정보창 내용 수정사항 취소 -->
	   	<button type="button" class="btn_cancel">취소</button>
    </div>         
</form>
        
    
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
          data.addColumn('number', 'Slices');
          data.addRows([
            ['Mushrooms', 3],
            ['Onions', 1],
            ['Olives', 1],
            ['Zucchini', 1],
            ['Pepperoni', 2]
          ]);

          // Set chart options
          var options = {'title':'How Much Pizza I Ate Last Night'};

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