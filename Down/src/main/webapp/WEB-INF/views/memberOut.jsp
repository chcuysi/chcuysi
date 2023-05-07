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
   <header id="mainHeader" class="header-area header-sticky">
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
                            <li class="scroll-to-section"><a href="sajo" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="#men">미션</a></li>
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
                            </li>                         <!-- session.invalidate(); -->
                            
                            <li class="scroll-to-section"><a href="#explore">마이페이지</a></li>
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
                                       <li><a href="#"><b>판매내역</b></a></li>
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
                                    <li><a href="#"><b>구매내역</b></a></li>                                   
                                </ul>
                             </li>
                                </c:when>
                             
                        
                            <c:otherwise>  
                            <li class="scroll-to-section"><a href="loginForm?pageType=index">로그인하기</a></li>
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
                        <h2>회원 탈퇴</h2>
                        <span>쿠팡 판매까지 걸리는 시간 단 10분! </span>
                        <span>쉽고 빠르게 판매를 시작할 수 있습니다.</span>
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
                <div id="loginform" class="col-lg-8">
                    <div class="section-heading">
                        <h2>회원 탈퇴</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                    </div>
                    <form id="insertProduct" action="insertProduct" method='post' enctype="multipart/form-data">
                        <div class="row">
                      
                          <div class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>ID</b></label> 
                            <input name="name" type="text" placeholder="상품명" required>
                            </fieldset>
                          </div>
                          
                          <div class="col-lg-5">
                            <fieldset>
                            <label  id="insertLabel"><b>비밀번호</b></label>
                            <input name="price" type="text" pattern="^[0-9]*$" placeholder="상품 가격" required>
                            </fieldset>
                          </div>

               <div id="insertProduct-sectionHeading2" class="section-heading">
                        <div  class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>주민등록번호</b></label> 
                            <input name="say" type="text" id="productSay" placeholder="간단하게 한줄로 상품을 나타내주세요!" required>
                            </fieldset>
                          </div>
                         </div> 
                       

                          

                          <div class="col-lg-5">
                            <fieldset>
                              <label  id="insertLabel"><b></b></label> 
                             <div class="main-border-button">
                               <a id="memberUpdate" href="#">탈퇴하기</a>
                             </div>

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
									
									
								
									<!-- 로그인 성공 시 이전 화면으로 전환하기 위한 값들 ***************************************************** -->
								</fieldset>
                          </div>
                        </div>
                    </form>
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
            
            
      
            /* *************************************************************************** */ 
            $('#insertProductSelect').change(function() {
            	
                if(  $('#insertProductSelect').val() == "채소" ) {
            		 
               		
        			  
        			  $('#insertProductSelect2 > option:eq(0)').text("감자/고구마");
        			  $('#insertProductSelect2 > option:eq(1)').text("새송이/버섯류");
        			  $('#insertProductSelect2 > option:eq(2)').text("미정");
        	  }
                /* *************************************************************************** */ 
                if(  $('#insertProductSelect').val() == "과일" ) {
             		 
               		
      			  
      			  $('#insertProductSelect2 > option:eq(0)').text("사과/배");
      			  $('#insertProductSelect2 > option:eq(1)').text("수박/참외");
      			  $('#insertProductSelect2 > option:eq(2)').text("미정");
      	  }
           /* *************************************************************************** */     
           	 
         }); 
            
            $('#insertProduct').submit(function() {
            	
            	alert('상품 등록 신청이 완료되었습니다. 관리자의 승인 여부에 따라 상품 등록이 결정됩니다.')
            });
  
 
            
 
        });      
            
     
    </script>

  </body>

</html>
