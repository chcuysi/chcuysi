<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 페이지</title>

  <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl-carousel.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/lightbox.css">

</head>
<body>

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
                            <li class="scroll-to-section"><a href="recipe.do">레시피</a></li>
                            
                            <li class="scroll-to-section">
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
    
    
    
     <!-- ***** Main Banner Area Start ***** -->
    <div class="page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2>이용자들의 생생한 리뷰</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->
    
	<!-- ***** 카테고리 시작***** -->
    <section class="section" id="products">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">                   
                        <hr/>
                                  
                         <h1 id="CategoryHeader">${viewType}</h1>
                         <h5 id="CategorySub"></h5>
  
                            <hr/>
                    </div> 
                    </div>
                </div>
            </div>
     

            <!-- ************************************************************* 리뷰 리스트 불러오기 ************************************************************************************ -->
        <div class="container">
            <div class="row" id="review_list"> 
      	 	<c:forEach items="${review}" var="i"> 
                <div class="col-lg-4" >
                    <div class="item">
                        <div class="thumb">
                            <div class="hover-content">
                                <input type="hidden" value="${i.renum}" id="renumber">
                                <ul>
                                    <li><a href="#" id="form">자세히 보기</a></li>
                                </ul>
                            </div>
                         <c:choose>
       
                          <c:when test="${i.frealfname ne null}">
                            <img class="review"  width="350" height="368" src="${pageContext.request.contextPath}/resources/images/${i.frealfname}" alt="">
                           </c:when>
                           
                          <c:otherwise>
                            <img class="review"  width="350" height="368"  src="${pageContext.request.contextPath}/resources/images/${i.type2}.png" alt="">
                       </c:otherwise> 
                           </c:choose>  
                        </div>
                        
                        
                        <div class="down-content">
                            <h4>${i.retitle}</h4>
                            <span>${i.recontent}</span>
                            <span>${i.redate}</span>
                            
                        </div>              
                    </div>
                </div>
                
            </c:forEach>
            </div>
            <div class="left-contents">
			 		<div class="main-border-button">
                            <a href="#" id="save"><input type="hidden" id="typs">리뷰 작성하러 가기</a>                          
                        </div>
                        
                        </div>
        </div>
    </section>
    <!-- ***** Products Area Ends ***** -->
	
	
	
    

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
	            
		
	$('#review_list').on("click","li",function(evt) {
		alert('리뷰 자세히 보기를 클릭하셨습니다.');
		
		var renum =$(this).parent().parent().children().eq(0).val();
		 location.href = "reviewModify.do?renum="+renum;
		 
		//return location.href = "review.do";
	    });
	
	
	$('#save').click(function () {
		
		/*   세션은 자바단과  body 태그에서 인식 ,   스크립트단에선 인식 못함? */
    	 <% if(session.getAttribute("logName") != null && session.getAttribute("logType") == "판매자" ) {      %>
    
		if ( confirm('판매자는 이용할 수 없는 서비스입니다. 일반 계정으로 로그인 하시겠습니까?.')  ) {
		
		 location.href="logOut?pageType=index";
		
		}else { 
		
			 location.href="#";
		}

	<% } %>
	
	 <% if(session.getAttribute("logName") == null ) { %> 
 	   if(confirm('리뷰 작성을 위해서는 로그인이 필요합니다. 로그인 하시겠습니까?') )
 	   {
 		   location.href="loginForm?pageType=index&type="+$(this).find('#type').val();
 	   }else { location.href="#"; 
 	   }
 	   <% } %>
 	   
 	   <% if(session.getAttribute("logName") != null && session.getAttribute("logType") == "일반" ) { %> 
 	   if( confirm("리뷰 작성 하러 가시겠습니까?"))
 	   {
 		   location.href="reviewSave.do?pageType=index&type="+$(this).find('#typs').val();
 		  
 	   }else {
 		   
 		   if( confirm("이전 화면으로 돌아가시겠습니까?"))
     	   {
 			   location.href="sajo";
     	   }
 	   
 	   }
 	   <% }    %> 
		
 	  
		
		
		
		
		
	});
	
	
	
	    });
		 

	
	
	
	
	

</script>
</body>
</html>