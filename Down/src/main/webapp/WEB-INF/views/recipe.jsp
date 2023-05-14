<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



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

<title>레시피 페이지</title>


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
   <header id="mainHeader" class="header-area header-sticky">
 
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                          <a href="sajo" class="logo">
                            <img src="${pageContext.request.contextPath}/resources/images/logo.png">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="sajo" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="review.do">리뷰</a></li>
                             <li class="submenu">
                                <a href="javascript:;">싱싱마켓</a>
                                <ul>
                                <li><a href="market"><b>전체</b></a></li>
                                    <li><a href="fl"><b>과일</b></a></li>
                                    <li><a href="va"><b>채소</b></a></li>
                                    <li><a href="market"><b>기타</b></a></li>
                                </ul>
                            </li>
                            <li class="scroll-to-section"><a href="#kids">레시피</a></li>
                            
                            <li >
                                <a href="company.do">회사소개</a>
                               
                            </li>
                          
                            <c:if test="${sessionScope.logType eq '일반'}">
                            <c:choose> 
                            <c:when test="${sessionScope.products ne null}">
                            <c:set value="${sessionScope.products}" var="i"></c:set>
                            <li class="scroll-to-section"><a href="cart2">장바구니 [ <b class="cartCount">${fn:length(i)}</b> ]</a></li>
                            </c:when>
                            <c:otherwise>
                            <li class="scroll-to-section"><a href="cart2">장바구니 [ 0 ]</a></li>
                            </c:otherwise>
                            </c:choose>
                            </c:if>
                            <!-- ******************************************************************************************* -->
                            <c:choose>
                            
                            <c:when test='${sessionScope.logName ne null && sessionScope.logType eq "판매자"}'>
                                     
                             <li class="submenu">
                               <a id="userLogin" href="javascript:;">${sessionScope.logName}</a>
                                 <ul>
                                    <li><a href="logOut"><b>로그아웃</b></a></li>
                                    <li><a href="UpdateMember"><b>회원정보수정</b></a></li>
                                    <li><a href="memberOut"><b>회원탈퇴</b></a></li>
                                      <li><a href="insertProduct"><b>판매등록</b></a></li>
                                         <li><a href="iokCheck"><b>판매등록 승인여부</b></a></li>
                                       <li><a href="sellHistory"><b>판매내역</b></a></li>
                                </ul>
                             </li>
                             
                                </c:when>
                                <c:when test='${sessionScope.logName ne null && sessionScope.logType eq "일반"}'>
                                 <li class="submenu">
                               <a id="userLogin" href="javascript:;">${sessionScope.logName}</a>
                                 <ul>
                                    <li><a href="logOut"><b>로그아웃</b></a></li>
                                    <li><a href="UpdateMember"><b>회원정보수정</b></a></li>
                                    <li><a href="memberOut"><b>회원탈퇴</b></a></li>
                                    <li><a href="buyHistory"><b>구매내역</b></a></li>                                   
                                </ul>
                             </li>
                                </c:when>
                             
                        
                         <c:otherwise>  
                              <li class="submenu">
                               <a id="scroll-to-section" href="javascript:;">로그인하기</a>
                                <ul>
                                    <li><a href="loginForm?pageType=index"><b>일반 회원 로그인</b></a></li>
                                    <li><a href="loginForm2"><b>판매자 로그인</b></a></li>                                 
                                </ul>
                                
                          <!--        <ul> -->
                          <!--   <li class="scroll-to-section"><a href="loginForm?pageType=index">로그인하기</a></li> -->
                            </c:otherwise>
                            
                            </c:choose>
                                <!-- ******************************************************************************************* -->
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
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
					<input class="videoHidden" type="hidden" value="${url}">
						<h2>레시피 정보</h2>
						<span>식재료의 변신은 무궁무진! 맛있는 음식을 만들어보세요!</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ***** Main Banner Area End ***** -->


	<!-- ***** 레시피  Starts ***** -->
	<section class="section" id="product">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="left-images">
						<img
							src="${pageContext.request.contextPath}/resources/images/${type}2.PNG"
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
						<li>난이도</li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
							<li><i class="fa fa-star"></i></li>
						</ul>
						<span>${detail}</span>
						<div class="quote">		
							<p>${say}</p>		
							<p>레시피를 동영상으로도 준비해두었습니다</p>
		 					<p><a class="video" href="#">자세히 보러 가기</a></p>
						</div>

					</div>
				</div>
			</div>
		</div>


		<h4 id="recipe">재료 및 조리 순서</h4>



		<h4 class="recipeHeader">${head}</h4>
		
		<hr />
<!-- *********************************************************************** -->
		<div class="recipes"><h2>재료</h2>
		<div class="rowi">
		<div class="left">
		<h4>${jaryu}</h4>     
		</div>
		</div>
		</div>
		
		<div class="recipes"><h2>부재료</h2>
		<div class="rowi">
		<div class="right">
		<h4>${jaryu1}</h4>
		</div>
		</div>
		</div>
		
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}3.PNG">

		<hr />
<!-- *********************************************************************** -->
		<div class="recipe"><h2>${mun1}</h2> </div>

		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}4.PNG">
		<hr />
<!-- *********************************************************************** -->
		<div class="recipe"><h2>${mun2}</h2></div>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}5.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<div class="recipe"><h2>${mun3}</h2> </div>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}6.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<div class="recipe"><h2>${mun4}</h2> </div>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}7.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<div class="recipe"><h2>${mun5}</h2> </div>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}8.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<div class="recipe"><h2>${mun6}</h2> </div>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}9.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<div class="recipe"><h2>${mun7}</h2> </div>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}10.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<div class="recipe"><h2>${mun8}</h2> </div>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}11.PNG">
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}12.PNG">
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}13.PNG">
		<hr />
		<!-- *********************************************************************** -->

		<div class="recipe"><h2>${mun9}</h2> </div>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}14.PNG">
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}15.PNG">
		<hr />
		<!-- *********************************************************************** -->
		<div class="recipe"><h2>${mun10}</h2>  </div>
		<img class="recipePicture" alt=""
			src="${pageContext.request.contextPath}/resources/images/${type}16.PNG">
		<hr />
	
		<!-- *********************************************************************** -->
		<div class="recipe"><h2>${mun11}</h2> </div>
		
		<img class="recipePictureFooter" src="${pageContext.request.contextPath}/resources/images/${type}17.PNG" alt="">

	  <!-- *********************************************************************** -->
	  
	  
	</section>

	<!-- ***** 감자칩 레시피 Ends ***** -->

	<!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="first-item">
                        <div class="logo">
                            <img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="hexashop ecommerce templatemo">
                        </div>
                         <span id="bot">통신판매업 신고번호 : 2021-화성동부-0302</span> <br/>
                         <ul>
                            <li><a href="#">농산물 납품 및 긴급구출 제보 : abcd@efg.com zzzz</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                <h4>SAJO Company</h4>
               <span id="bot"> 상호명 : 주식회사 사조<br/>
                               공동대표 : 홍석희,고다인,윤재진,김현석<br/> 
                               사업자등록번호 : 572-81-02287<br/>
                               소재지 : 서울특별시 금천구 가산디지털로 302, 3층(가산동112)<br/>
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
              
                <div class="col-lg-12">
                    <div class="under-footer">
                        <p>SAJO Company는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 상품, 상품정보, 거래에 관한 의무와 책임은 판매자에게 있습니다.</p> 
                        <p>Copyright © 2022 SAJO Co., Ltd. All Rights Reserved. </p>
          
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
    
  <!--Footer End  -->


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
            
           $('.video').click(function() {
        	   
        	   location.href = $('.videoHidden').val();
           });
           
           
        });

    </script>

</body>

</html>
