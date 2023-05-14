<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <title>판매자관리 > 정산</title>
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
            <li><a href="getIokMenuList.do" class="active"><i class="fa fa-sliders fa-fw"></i>판매자관리</a></li>
            <li><a href="getRefundMenuList.do"><i class="fa fa-database fa-fw"></i>주문관리</a></li>
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
              <!-- 소카테고리 메뉴 링크 -->
              <ul class="text-uppercase">
                <li><a href="getIokMenuList.do">판매승인</a></li>
                <li><a href="getCalculateMenuList.do" class="active">정산</a></li>
              </ul>  
            </nav> 
          </div>
        </div>
        
        <!-- 메뉴 카테고리 (왼쪽메뉴 > 상단메뉴) -->
        <h2 id="category_menu"></h2>
        
        <!-- 정산 테이블 --> 
        <div class="templatemo-content-container">
          <div class="templatemo-content-widget no-padding">
            <div class="panel panel-default table-responsive">
              <table id="table_calculate" class="table table-striped table-bordered templatemo-user-table">
                <thead>
                  <tr>
                    <!-- 표에 사용할 컬럼명 -->
                    <td><a class="white-text templatemo-sort-by">판매물품번호<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">판매자ID<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">상품명<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">총판매금액<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">총배송비<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">총수수료<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">총정산금액<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">정산상태<span class="caret"></span></a></td>
                    <td><a class="white-text templatemo-sort-by">정산일<span class="caret"></span></a></td>
                  </tr>
                </thead>
                <tbody>
                	<!-- 각 컬럼에 상응하는 값들: taglib 이용한 for문으로 출력 -->
                	<c:forEach items="${calculateMenuList}" var="calculateMenu">
                  		<tr>
		                    <td>${calculateMenu.inum}</td>
		                    <td>${calculateMenu.pid}</td>
		                    <td>${calculateMenu.name} ${calculateMenu.name2}</td>
		                    <td>${calculateMenu.sell_total}원</td>
		                    <td>${calculateMenu.delivery}원</td>
		                    <td>${calculateMenu.ocharge}원</td>
		                    <td>${calculateMenu.jungsanmoney}원</td>
		                    <td>${calculateMenu.jok}</td>
							<td>${calculateMenu.jokdate.substring(0, 10)}</td>
                  		</tr>
                  	</c:forEach> 	
                </tbody>
              </table>    
            </div>                          
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
						<td><a class="white-text templatemo-sort-by">판매물품번호</a></td>
                    	<td></td>
                    	<td><a class="white-text templatemo-sort-by">판매자ID</a></td>
                    	<td></td>
                  	</tr>
                  	<tr>
                    	<td><a class="white-text templatemo-sort-by">상품명</a></td>
                    	<td></td>
                    	<td><a class="white-text templatemo-sort-by">총판매금액</a></td>
                    	<td></td>
                  	</tr>
                  	<tr>
                    	<td><a class="white-text templatemo-sort-by">총배송비</a></td>
                    	<td></td>
                    	<td><a class="white-text templatemo-sort-by">총수수료</a></td>
                    	<td></td>
                  	</tr>
                  	<tr>
                    	<td><a class="white-text templatemo-sort-by">총정산금액</a></td>
                    	<td></td>
                    	<td><a class="white-text templatemo-sort-by">정산상태</a></td>
                    	<!-- select-option td에 넣음 -->
                    	<td style="position: relative;">             
                  			<select class="select_detail_non_colored">
                    			<option value="O">O</option>
                    			<option value="X">X</option>   
                    			<option value="-">-</option>                   
	                  		</select>
                  		</td>
                  	</tr>
                  	<tr>
                    	<td style="vertical-align: middle;"><a class="white-text templatemo-sort-by">정산일</a></td>
                    	<!-- input-date td에 넣음 -->
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
        <button type="button" class="btn_modify_calculate">수정</button>
        <!-- 상세정보창 내용 수정사항 취소 -->
	   	<button type="button" class="btn_cancel_calculate">취소</button>
    </div>         
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
    
      
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/templatemo-script.js"></script>      <!-- Templatemo Script -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/admin.js"></script>


  </body>
</html>