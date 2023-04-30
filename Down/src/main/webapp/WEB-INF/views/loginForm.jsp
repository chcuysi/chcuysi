<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
 
    
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Hexashop - Product Detail Page</title>


    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl-carousel.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lightbox.css">
<!--

TemplateMo 571 Hexashop

https://templatemo.com/tm-571-hexashop

-->

    </head>
    
    <body>
    
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
                        <a href="sajo" class="logo">
                            <img src="${pageContext.request.contextPath}/resources/images/LOGO2.png">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="#men">미션</a></li>
                             <li class="submenu">
                                <a href="javascript:;">싱싱마켓</a>
                                <ul>
                                    <li><a href="about.html"><b>과일</b></a></li>
                                    <li><a href="products.html"><b>채소</b></a></li>
                                    <li><a href="contact.html"><b>기타</b></a></li>
                                </ul>
                            </li>
                            <li class="scroll-to-section"><a href="#kids">레시피</a></li>
                            
                            <li class="submenu">
                                <a href="javascript:;">회사소개</a>
                                <ul>
                                    <li><a href="about.html"><b>우리 SAJO는</b></a></li>
                                    <li><a href="products.html"><b>연혁</b></a></li>
                                    <li><a href="single-product.html"><b>경영 방침/경영 철학</b></a></li>
                                    <li><a href="contact.html"><b>오시는 길</b></a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="javascript:;">고객센터</a>
                                <ul>
                                    <li><a href="#"><b>자주 묻는 질문</b></a></li>
                                    <li><a href="#"><b>Q/A</b></a></li>
                                    <li><a href="#"><b>공지사항</b></a></li>
                                </ul>
                            </li>
                            <li class="scroll-to-section"><a href="#explore">마이페이지</a></li>
                            
                              <c:choose>
                            <c:when test="${sessionScope.logName ne null}">
                            <li class="scroll-to-section"><a id="logOut" href="logOut">${sessionScope.logName}</a></li>
                            </c:when>
                            <c:otherwise>  <li class="scroll-to-section"><a id="login" href="loginForm">로그인하기</a></li>
                            </c:otherwise>
                            
                            </c:choose>
                            
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
                        <h2> 로그인 하기</h2>
                        <span>SAJO의 더 많은 서비스를 이용하기 위해 로그인하는 단계입니다.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->


    <!-- ***** Product Area Starts ***** -->
    
      <div class="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="section-heading">
                        <h2>로그인하여 더 많은 서비스를 이용해보세요.</h2>
                        <span>많은 고객님들이 아쉽게 버려질 위기에 처한 식재료들을 찾고 있습니다!</span>
                    </div>
                    <form id="subscribe" action="login" method="get">
                        <div class="row">
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="id" type="text" id="id" placeholder="회원님의 ID를 입력해주세요" required>
                            </fieldset>
                          </div>
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="password" type="text" id="password" pattern="^[0-9]*$" placeholder="회원님의 비밀번호를 입력해주세요" required>
                            </fieldset>
                          </div>
                          <div class="col-lg-2">
                            <fieldset>
                              <button type="submit" id="form-submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>

									<c:if test="${checkLogin ne null}">
										<input type="hidden" id="checkLogin" value="${checkLogin}">
									</c:if>

									<c:if test="${param.pageType ne null}">
										<input type="hidden" id="pageType" name="pageType" value="${param.pageType}">
									</c:if>
									
									<c:if test="${param.type ne null}">
										<input type="hidden" id="type" name="type" value="${param.type}">
									</c:if>
									
									<c:if test="${moPageType ne null}">
										<input type="hidden" id="moPageType" value="${moPageType}">
									</c:if>
									
										<c:if test="${moType ne null}">
										<input type="hidden" id="moType" value="${moType}">
									</c:if>
									
								</fieldset>
                          </div>
                        </div>
                    </form>
                </div>
            
            
       
                              
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-6">
                            <ul>
                                <li>본사 위치:<br><span>서울특별시 강남구 테헤란로 123-123</span></li>
                                <li>관리자 전화번호:<br><span>010-123-4567</span></li>
                                <li>지점 위치:<br><span>서울특별시 가산동 123-123</span></li>
                            </ul>
                        </div>
                        <div class="col-6">
                            <ul>
                                <li>근무 시간:<br><span>오전 07:30 - 오후 9:30</span></li>
                                <li>관리자 이메일:<br><span>sajo@sajo.com</span></li>
                                <li>소셜 미디어:<br><span><a href="#">Facebook</a>, <a href="#">Instagram</a>, <a href="#">Behance</a>, <a href="#">Linkedin</a></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    <!-- ***** Product Area Ends ***** -->
    
    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="first-item">
                        <div class="logo">
                            <img src="${pageContext.request.contextPath}/resources/images/LOGO2.png" alt="hexashop ecommerce templatemo">
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
    

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/owl-carousel.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/accordions.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/scrollreveal.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.counterup.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/imgfix.min.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/js/slick.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/js/lightbox.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/js/isotope.js"></script> 
    <script src="${pageContext.request.contextPath}/resources/js/quantity.js"></script>
    
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
      
 
  
            if($('#checkLogin').val() == "성공" ) {
            	alert('로그인에 성공하셨습니다.');
            	
            	
            	/* 이전 페이지 타입이   개별 상품 화면일 경우 */
            	if( $('#moPageType').val() == "single-product" ) {
            		
            		switch( $('#moType').val()  ) {
            		case "goSingProduct" : location.href= "go"; break;
            		case "appleSingProduct" : location.href="apple"; break;
            		case "baeSingProduct" : location.href="bae"; break;
            		case "bananaSingProduct" : location.href="banana"; break;
            		case "buSingProduct" : location.href="bu"; break;
            		case "chamSingProduct" : location.href="cham"; break;
            		case "poteSingProduct" : location.href="pote"; break;
            		
            		}
            	} /* 이전 페이지 타입이   개별 상품 화면일 경우 닫는 괄호 */
            	
            	/* 이전 페이지 타입이   메인 화면일 경우  */
            	if ( $('#moPageType').val() == "index" ) {		
                        location.href="sajo";
                } /* 이전 페이지 타입이   메인 화면일 경우 닫는 괄호 */
            	
                
            } /*  로그인 성공 시 괄호 */
            
            if ( $('#checkLogin').val() == "실패" )  {
            	alert('로그인에 실패하셨습니다.');
            	}
           
           
        });

    </script>

  </body>

</html>
