<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<title>Hexashop - Product Detail Page</title>


<!-- Additional CSS Files -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/templatemo-hexashop.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl-carousel.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/lightbox.css">
<!--

TemplateMo 571 Hexashop

https://templatemo.com/tm-571-hexashop

-->

</head>

<body>
	<input type="hidden" id="pageType" value="single-product">

	<!-- ***** Preloader Start ***** -->
	<div id="preloader">
		<div class="jumper">
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->


	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="sajo" class="logo"> <img
							src="${pageContext.request.contextPath}/resources/images/LOGO2.png">
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li class="scroll-to-section"><a href="sajo" class="active">Home</a></li>
							<li class="scroll-to-section"><a href="#men">미션</a></li>
							<li class="submenu"><a href="javascript:;">싱싱마켓</a>
								<ul>
									<li><a href="about.html"><b>과일</b></a></li>
									<li><a href="products.html"><b>채소</b></a></li>
									<li><a href="contact.html"><b>기타</b></a></li>
								</ul></li>
							<li class="scroll-to-section"><a href="#kids">레시피</a></li>

							<li class="submenu"><a href="javascript:;">회사소개</a>
								<ul>
									<li><a href="about.html"><b>우리 SAJO는</b></a></li>
									<li><a href="products.html"><b>연혁</b></a></li>
									<li><a href="single-product.html"><b>경영 방침/경영 철학</b></a></li>
									<li><a href="contact.html"><b>오시는 길</b></a></li>
								</ul></li>
							<li class="submenu"><a href="javascript:;">고객센터</a>
								<ul>
									<li><a href="#"><b>자주 묻는 질문</b></a></li>
									<li><a href="#"><b>Q/A</b></a></li>
									<li><a href="#"><b>공지사항</b></a></li>
								</ul></li>
							<li class="scroll-to-section"><a href="#explore">마이페이지</a></li>

							<!-- ***************************************************로그인****************************************************************** -->
							<c:choose>

								<c:when test="${sessionScope.logName ne null}">
									<li class="submenu"><a id="userLogin" href="javascript:;">${sessionScope.logName}</a>
										<ul>
											<li><a href="logOut"><b>로그아웃</b></a></li>
											<li><a href="#"><b>회원정보수정</b></a></li>
											<li><a href="#"><b>회원탈퇴</b></a></li>
											<li><a href="#"><b>구매내역</b></a></li>
										</ul></li>

								</c:when>
								<c:otherwise>
									<li class="scroll-to-section"><a
										href="loginForm?pageType=single-product&type=${type}">로그인하기</a></li>
								</c:otherwise>

							</c:choose>

							<!-- ***************************************************로그인****************************************************************** -->

						</ul>
						<a class='menu-trigger'> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->

	<!-- ***** Main Banner Area Start ***** -->
	<div class="page-heading" id="top">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="inner-content">
						<h2>레시피 정보</h2>
						<span>식재료의 변신은 무궁무진! 맛있는 음식을 만들어보세요!</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ***** Main Banner Area End ***** -->


	<!-- ***** Product Area Starts ***** -->
	<section class="section" id="product">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="left-images">
						<img
							src="${pageContext.request.contextPath}/resources/images/${type}.png"
							alt=""> <input type="hidden" id="type" value="${type}" />
					</div>

				</div>
				<div class="col-lg-4">
					<div class="right-content">
						<h4 id="name">${name}</h4>
						<c:if test="${name2 ne null}">
							<h4>${name2}</h4>
						</c:if>

						<ul class="stars">
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
						</ul>
						<span>${detail}</span>
						<div class="quote">
							<i class="fa fa-quote-left"></i>
							<p>${say}</p>
						</div>

					</div>
				</div>
			</div>
		</div>


		<h4 id="recipe">재료 및 조리 순서</h4>



		<h4 class="recipeHeader">[오븐요리]제철고구마로 고구마칩 만들기</h4>
		
		<hr />
<!-- *********************************************************************** -->
		<h4 class="recipe">1. 재료:고구마,감자,슈가파우더,허브솔트</h4>

		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore1.PNG">

		<hr />
<!-- *********************************************************************** -->
		<h4 class="recipe">2. 고구마는 껍질을 제거하지 말고 깨끗하게 씻어서 준비하고 감자는 껍질을 제거해서
			준비합니다.</h4>

		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore2.PNG">
		<hr />
<!-- *********************************************************************** -->
		<h4 class="recipe">3.채칼말고 슬라이스 칼이라고 있어요 오늘은 요걸로 쉽게 만들어 볼께요.</h4>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore3.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<h4 class="recipe">4.슬라이스칼을 이용해서 감자를 슬라이스해줍니다.</h4>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore4.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<h4 class="recipe">5.슬라이스칼로 썬 감자는 찬물에 10분정도 담구어서 전문을 빼줍니다.</h4>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore5.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<h4 class="recipe">6.고구마도 슬라이스칼을 이용해서 슬라이스해줍니다.</h4>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore6.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<h4 class="recipe">7.고구마도 찬물에 10분정도 담구어 전분을 빼주세요.</h4>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore7.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<h4 class="recipe">8.찬물에 담구었던 감자와 고구마는 체에 걸러서 물기를 제거해주시고 남은 물기는
			키친타올을 이용해서 남은 물기를 빼줍니다.</h4>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore8.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<h4 class="recipe">9.슬라이스한 감자와 고구마를 오븐틀에 올린후 감자는 허브솔트를! 고구마는
			슈가파우더를 뿌려줍니다.</h4>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore9.PNG">
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore10.PNG">
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore11.PNG">
		<hr />
		<!-- *********************************************************************** -->

		<h4 class="recipe">10.오븐에 넣고 200도 온도에서 15분정도 돌려줍니다. 15분후 다시뒤집어서
			2-3분 돌려줍니다.</h4>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore12.PNG">
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore13.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<h4 class="recipe">11.오븐으로 바삭하게 구웠어요^^.</h4> 
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/gore14.PNG">
		<hr />
	
		<!-- *********************************************************************** -->
		<h4 class="recipe">12.요렇게 해서 감자칩과 고구마칩이 완성이 되었어요^^</h4>
		
		<img class="recipePictureFooter" src="${pageContext.request.contextPath}/resources/images/${type}.png" alt="">
	  <!-- *********************************************************************** -->
	</section>


	<!-- ***** Product Area Ends ***** -->

	<!-- ***** Footer Start ***** -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="first-item">
						<div class="logo">
							<img
								src="${pageContext.request.contextPath}/resources/images/LOGO2.png"
								alt="hexashop ecommerce templatemo">
						</div>
						<span id="bot">통신판매업 신고번호 : 2021-화성동부-0302</span> <br />
						<ul>
							<li><a href="#">농산물 납품 및 긴급구출 제보 : abcd@efg.com zzzz</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3">
					<h4>SAJO Company</h4>
					<span id="bot"> 상호명 : 주식회사 사조<br /> 공동대표 : 홍석희,고다인,윤재진,김현석<br />
						사업자등록번호 : 572-81-02287<br /> 소재지 : 서울특별시 금천구 가산디지털로 302,
						3층(가산동112)<br />
					</span>
				</div>
				<!-- 메인페이지 제일 하단 부분 -->

				<div class="col-lg-3">
					<h4>고객센터</h4>
					<ul>
						<li><a href="#">전화 1588-3819</a></li>
						<li><a href="#">결제도용신고 1588-3816</a></li>
						<li><a href="#">1:1 문의 바로가기</a></li>
					</ul>
				</div>
				<!-- 
                <div class="col-lg-3">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><a href="#">Homepage</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Help &amp; Information</h4>
                    <ul>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">FAQ's</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Tracking ID</a></li>
                    </ul>
                </div> -->
				<div class="col-lg-12">
					<div class="under-footer">
						<p>SAJO Company는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 상품, 상품정보, 거래에 관한
							의무와 책임은 판매자에게 있습니다.</p>
						<p>Copyright © 2022 SAJO Co., Ltd. All Rights Reserved.</p>

						<!--  디자인 출처 기능  -->
						<!--  <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates">SAJO</a>-->
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-behance"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>


	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-2.1.0.min.js"></script>

	<!-- Bootstrap -->
	<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

	<!-- Plugins -->
	<script
		src="${pageContext.request.contextPath}/resources/js/owl-carousel.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/accordions.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/scrollreveal.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/imgfix.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/slick.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/lightbox.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/isotope.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/quantity.js"></script>

	<!-- Global Init -->
	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

	<script>

        $(function() {
        	
        	
        	
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
            
            
           <%-- $('.main-border-button').click(function() {
        	  
        	   
        	   <% if(session.getAttribute("logName") == null ) { %> 
        	   if(confirm('장바구니에 담기 위해선 로그인이 필요합니다. 로그인 하시겠습니까?') )
        	   {
        		   location.href="loginForm?pageType="+$('#pageType').val()+"&type="+$('#type').val();
        	   }else { location.href="#"; }
        	   <% } %>
        	   
        	   <% if(session.getAttribute("logName") != null ) { %> 
        	   if( confirm("상품을 장바구니에 담았습니다. 장바구니로 이동하시겠습니까?"))
        	   {
        		   location.href="cart?type="+$('#type').val();
        		   
        	   }else {
        		   
        		   if( confirm("이전 화면으로 돌아가시겠습니까?"))
            	   {
        			   location.href="sajo";
            	   }
        	   
        	   }
        	   <% } %>
           }); --%>
            
           
           
        });

    </script>

</body>

</html>
