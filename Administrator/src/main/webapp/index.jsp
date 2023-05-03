<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>Visual Admin Dashboard - Home</title>
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
            <li><a href="#" class="active"><i class="fa fa-sliders fa-fw"></i>판매자관리</a></li>
            <li><a href="data-visualization?pageType=index"><i class="fa fa-database fa-fw"></i>주문관리</a></li>
            <li><a href="data-visualization?pageType=index"><i class="fa fa-bar-chart fa-fw"></i>매출</a></li>
            <li><a href="maps?pageType=index"><i class="fa fa-users fa-fw"></i>회원관리</a></li>
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
                <li><a href="" class="active">판매승인</a></li>
                <li><a href="">정산</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        
        <!-- 판매물품승인 테이블 --> 
        <div id="table_iok" class="templatemo-content-container">
          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                    <td><a href="" class="white-text templatemo-sort-by">판매자번호<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">판매자<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">카테고리<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">상품명<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">판매가<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">판매기간<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">재고수량<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">승인거부<span class="caret"></span></a></td>
                    <td><a href="" class="white-text templatemo-sort-by">승인거부사유<span class="caret"></span></a></td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>PM000079</td>
                    <td>봉준호</td>
                    <td>채소 > 당근</td>
                    <td>맛있는 무농약 당근 3kg</td>
                    <td>30000원</td>
                    <td><a href="" class="templatemo-edit-btn">2023.07.15.~2023.08.30.</a></td>
                    <td><a href="" class="templatemo-link">6</a></td>
                    <td><a href="" class="templatemo-link">-</a></td>
                    <td><a href="" class="templatemo-link"></a></td>
                  </tr>
                  <tr>
                    <td>2.</td>
                    <td>Bill</td>
                    <td>Jones</td>
                    <td>@bJ</td>
                    <td>bj@company.com</td>
                    <td><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td><a href="" class="templatemo-link">Action</a></td>
                    <td><a href="" class="templatemo-link">Delete</a></td>
                    <td><a href="" class="templatemo-link"></a></td>
                  </tr>
                  <tr>
                    <td>3.</td>
                    <td>Mary</td>
                    <td>James</td>
                    <td>@mJ</td>
                    <td>mj@company.com</td>
                    <td><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td><a href="" class="templatemo-link">Action</a></td>
                    <td><a href="" class="templatemo-link">Delete</a></td>
                    <td><a href="" class="templatemo-link"></a></td>
                  </tr>
                  <tr>
                    <td>4.</td>
                    <td>Steve</td>
                    <td>Bride</td>
                    <td>@sB</td>
                    <td>sb@company.com</td>
                    <td><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td><a href="" class="templatemo-link">Action</a></td>
                    <td><a href="" class="templatemo-link">Delete</a></td>
                    <td><a href="" class="templatemo-link"></a></td>
                  </tr>
                  <tr>
                    <td>5.</td>
                    <td>Paul</td>
                    <td>Richard</td>
                    <td>@pR</td>
                    <td>pr@company.com</td>
                    <td><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td><a href="" class="templatemo-link">Action</a></td>
                    <td><a href="" class="templatemo-link">Delete</a></td>
                    <td><a href="" class="templatemo-link"></a></td>
                  </tr>  
                   <tr>
                    <td>6.</td>
                    <td>Will</td>
                    <td>Brad</td>
                    <td>@wb</td>
                    <td>wb@company.com</td>
                    <td><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td><a href="" class="templatemo-link">Action</a></td>
                    <td><a href="" class="templatemo-link">Delete</a></td>
                    <td><a href="" class="templatemo-link"></a></td>
                  </tr>  
                   <tr>
                    <td>7.</td>
                    <td>Steven</td>
                    <td>Eric</td>
                    <td>@sE</td>
                    <td>se@company.com</td>
                    <td><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td><a href="" class="templatemo-link">Action</a></td>
                    <td><a href="" class="templatemo-link">Delete</a></td>
                    <td><a href="" class="templatemo-link"></a></td>
                  </tr>  
                   <tr>
                    <td>8.</td>
                    <td>Landi</td>
                    <td>Susan</td>
                    <td>@lS</td>
                    <td>ls@company.com</td>
                    <td><a href="" class="templatemo-edit-btn">Edit</a></td>
                    <td><a href="" class="templatemo-link">Action</a></td>
                    <td><a href="" class="templatemo-link">Delete</a></td>
                    <td><a href="" class="templatemo-link"></a></td>
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
          <form id = 'detail_iok'>
          
          
          </form>
        
          <footer class="text-right">
            <p>Copyright &copy; 2084 Company Name 
            	Design: Template Mo</p>
          </footer>         
        </div>
      </div>
      
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