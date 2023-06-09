<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 
 
    
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
                        <h2>상품 상세정보</h2>
                        <span>선택하신 제품의 상세보기란 입니다.</span>
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
                
                <c:choose>
                <c:when test="${frealfname eq null}">
                    <img   width="730" height="378" src="${pageContext.request.contextPath}/resources/images/${type}.png" alt="">
                    <input type="hidden" id="type" value="${type}"/>
                    </c:when>
                   <c:otherwise>
                    <img   width="730" height="378" src="${pageContext.request.contextPath}/resources/images/${frealfname}" alt="">
                        <input type="hidden" id="type" value="${type}"/>
                   </c:otherwise>
                   
                   </c:choose>
                </div>
           
            </div>
            <div class="col-lg-4">
                <div class="right-content">
                    <h4 id="name">${name}</h4>
                    <c:if test="${name2 ne null}">  
                    <h4>${name2}</h4>
                    </c:if>
                     <span class="price">${price}원</span>
                    <ul class="stars">
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                    </ul>
                    <span>${detail}</span>
                    <div class="quote">
                        <i class="fa fa-quote-left"></i><p>${say}</p>
                    </div>
                    <div class="quantity-content">
                        <div class="left-content">
                            <h6>수량</h6>
                        </div>
                        <div class="right-content">
                            <div class="quantity buttons_added">
                            <c:choose>
                            <c:when test="${iCount ne 0}">
                                <input type="button" value="-" class="minus"><input type="number" step="1" min="1" max="${iCount}" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus">
                            </c:when>
                            <c:otherwise>
                            <input class="iCount" type="hidden" value="${iCount}">
                            <div class="left-content">
                            <h6>품절</h6>
                            </div>
                            </c:otherwise>
                            </c:choose>
                            </div>
                        </div>
                    </div>
                    <div class="total">
                        <h4>총 금액: $210.00</h4>
                     <a href="cart2" id="cartAlam2" class="cartAlam">장바구니에 상품이 담겼어요! <b class="fast"> 바로가기</b></a>
                        <div class="main-border-button"><a href="#">장바구니에 담기</a></div>
                    </div>
                </div>
            </div>
            </div>
        </div>
        
        <hr/>
        	<h4 id="recipe">제품 상세 정보 </h4>
        	
        	
       
		<div class="section-heading2">
                        <h2>상품 설명</h2>
                    </div>
			<!-- 상품 1번 상세 설명 시작 ***************************************************************************************************** -->
		<!-- 사진 위 헤더 ********************************************************************************** -->
		<div class="mainHeader">${vo.head}</div>
		
		<!--  사진 시작 *********************************************************************** -->
         <c:choose>
                   <c:when test="${frealfname eq null}">
                    <div><img class="detailImage" src="${pageContext.request.contextPath}/resources/images/${type}Detail.PNG" alt=""></div>
                  
                    </c:when>

                   <c:otherwise>
                    <img class="detailImage"  src="${pageContext.request.contextPath}/resources/images/${vo.frealfname1}" alt="">
             
                   </c:otherwise>
                   
        </c:choose>
        <!--  사진 끝 *********************************************************************** -->
         <!-- 내용 ********************************************************************************************* -->
        <c:forTokens items="${contentHead}" var="head" delims="/">
       <div class="contentHeader"> <p><c:out value="${head}"/></p></div>
       </c:forTokens>
       
       <br/>
       
          <div class="content">        
<c:forTokens  var="name" items="${content}" delims="/" >
    <p><c:out value="${name}"/></p><br/>
</c:forTokens> </div>
   <!-- 내용 끝 ********************************************************************************************* -->
<!--  1번 상세 설명 끝 **************************************************************************************************************************************** -->
	<!-- 상품 2번 상세 설명 시작 ***************************************************************************************************** -->
<c:if test="${vo.head2 ne null}">
	<!-- 사진 위 헤더 ********************************************************************************** -->
		<div class="mainHeader">${vo.head2}</div>
		
		<!--  사진 시작 *********************************************************************** -->
         <c:choose>
                   <c:when test="${vo.frealfname2 eq null}">
                    <div><img class="detailImage" src="${pageContext.request.contextPath}/resources/images/${type}Detail.PNG" alt=""></div>
                   
                    </c:when>

                   <c:otherwise>
                    <img class="detailImage"  src="${pageContext.request.contextPath}/resources/images/${vo.frealfname2}" alt="">
             
                   </c:otherwise>
                   
        </c:choose>
        <!--  사진 끝 *********************************************************************** -->
         <!-- 내용 ********************************************************************************************* -->
        <c:forTokens items="${vo.contentHead2}" var="head" delims="/">
       <div class="contentHeader"> <p><c:out value="${head}"/></p></div>
       </c:forTokens>
       
       <br/>
       
          <div class="content">        
<c:forTokens  var="name" items="${vo.content2}" delims="/" >
    <p><c:out value="${name}"/></p><br/>
</c:forTokens> </div>
   <!-- 내용 끝 ********************************************************************************************* -->
</c:if>
<!--  2번 상세 설명 끝 **************************************************************************************************************************************** -->

<!-- 상품 상세 설명 부분 끝 ***************************************************************************************************** -->
  
  
        <div class="section-heading2">
                        <h2>배송 안내</h2>
                    </div>
                   <c:choose>
                   <c:when test="${vo.frealfname3 eq null}">
                    <img class="detailImage" src="${pageContext.request.contextPath}/resources/images/${type}DetailDelivery.PNG" alt="">
            
                      <img class="detailImage" src="${pageContext.request.contextPath}/resources/images/${type}detail4.PNG" alt="">
                    </c:when>
                    
                   <c:otherwise>
                    <img class="detailImage"  src="${pageContext.request.contextPath}/resources/images/${vo.frealfname3}" alt="">
               
                   </c:otherwise>   
                   </c:choose>
                   
                    <c:forTokens items="${vo.delivery_Detail_head}" var="head" delims="/"> 
            <div class="delevery-Detail-Head"><p><c:out value="${head}"/></p></div>
                     </c:forTokens> 
       
         <br/>
       
          <div class="content">        
<c:forTokens  var="name" items="${vo.delivery_content}" delims="/" >
    <p><c:out value="${name}"/></p>
</c:forTokens> </div>


        <div class="section-heading2">
                        <h2>주문 전 꼭 읽어주세요!</h2>
                    </div>
         
                     <c:forTokens items="${vo.save}" var="head"  delims="/"> 
            <div class="delevery-Detail-Head"><p><c:out value="${head}"/></p></div>
                     </c:forTokens> 
       

                    <div class="section-heading2">
                        <h2>환불 문의</h2>
                    </div>
                    
                     <img class="detailImage" alt="" src="${pageContext.request.contextPath}/resources/images/NOTICE.PNG">
    </section>
    
    <hr/>
   <div class="section-heading2">
                        <h2>상품 설명 접기</h2>
                    </div>
                    
                    <div class="section-heading3">
                        <h2>해당 상품 외 싱싱한 식재료들이 많이 있어요.
                        좀 더 둘러보고 싶으신가요?
                       다른 상품들 보러가기!</h2>
                    </div>
    <!-- ************************************************************************************************************* 상세보기 -->
    
    <!-- ***** Product Area Ends ***** -->
    
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
            
            
           $('.main-border-button').click(function(evt) {
        	   
        	   if ( $('.iCount').val() == 0 ) {
        		   
        		   alert('해당 상품은 품절입니다.'); 
        	   } else {
        	   
        	  
        	   <% if(session.getAttribute("logName") != null && session.getAttribute("logType") == "판매자" ) {      %>
               
       		if ( confirm('판매자는 이용할 수 없는 서비스입니다. 일반 계정으로 로그인 하시겠습니까?.')  ) {
       		
       		 location.href="logOut?pageType=index";
       		
       		}else { 
       		
       			 location.href="#";
       		}
       
       	<% } %>
       	
        	   
        	   <% if(session.getAttribute("logName") == null ) { %> 
        	   if(confirm('장바구니에 담기 위해선 로그인이 필요합니다. 로그인 하시겠습니까?') )
        	   {
        		   location.href="loginForm?pageType="+$('#pageType').val()+"&type="+$('#type').val();  // 개별 상품에는    hover 장바구니 기능이 없어서   코딩이 다름
        	   }else { location.href="#"; }
        	   <% } %>
        	   
        	   <% if(session.getAttribute("logName") != null && session.getAttribute("logType") == "일반" ) { %> 
        	     evt.preventDefault();
          	   
	 
        			/* $(this).parents('.cartAlam').show(); */
             	var In = $('#cartAlam2');  /* .fadeIn("fast"); */
                 var Out = $('#cartAlam2');  /* .fadeOut(5000); */
               	
               	 var param = { param : $('#type').val() , param2 : $('input[type="number"]').val() };
           		 //ajax..
           		 $.ajax({
      			         type : 'get',
      			         data : param,
      			         url  : 'detailViewCart',
      			      success : function(redata){
      			    	  var num = parseInt( $('.cartCount').text() );
      			    	  num += 1; 
      			    	  $('.cartCount').text( num );
      			    	  In.fadeIn("fast");
      			    	  Out.fadeOut(5000);
      			    	 
      			      },
      			        error : function(err){
      			        	              alert('err');
      			                            }
                      });
           		 
        	   
        	   <% } %>
        	   }
           });
           
          
           $('#cartAlam2').hide();
           
           
           $('.section-heading3').click(function() {
        	   
        	   location.href = "market";
           });
           
        });

    </script>

  </body>

</html>
