<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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

    <title>Hexashop Ecommerce HTML CSS Template</title>


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
                            <img src="${pageContext.request.contextPath}/resources/images/logo.png">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="sajo" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="#explore">리뷰</a></li>
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
    <div class="main-banner" id="mainTop">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="left-content">
                        <div class="thumb">
                            <div class="inner-content">
                                <h4>첫 방문이신가요?</h4>
                                <span>모든 구매자와 판매자에게 열려있는 오픈마켓! SAJO가 당신을 환영합니다.</span>
                               <span> 더 이상 헤매지 마십시오. SAJO에 다 있습니다.</span>
                               <span> SAJO가 처음이시라면 가이드를 받아보세요!</span>
                                <div class="main-border-button">
                                    <a href="guideLine.do">SAJO 이용 가이드 받기!</a>
                                </div>
                            </div>
                            <img id="base" src="${pageContext.request.contextPath}/resources/images/base.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="right-content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>리뷰</h4>
                                            <span>소비자들의 생생하다 못해 팔딱 뛰는 리뷰가 있는 곳입니다</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>리뷰</h4>
                                                <p>사용자들의 생생한 리뷰가 담겨있는 곳입니다</p>
                                                <div class="main-border-button">
                                                    <a href="#explore">자세히 보기</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="${pageContext.request.contextPath}/resources/images/mession.jpg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>싱싱마켓</h4>
                                            <span>못났지만 싱싱한 상품들을 만나보세요!</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>싱싱마켓</h4>
                                                <p>못났지만 싱싱한 상품들을 만나보세요!</p>
                                                <div class="main-border-button">
                                                    <a href="market">자세히 보기</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="${pageContext.request.contextPath}/resources/images/singsing.jpg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>레시피</h4>
                                            <span>어떻게 요리를 해야할지 레시피를 추천해드려요!</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>레시피</h4>
                                                <p>구입한 재료들로 어떤 요리를 할 수 있을 지 알아보세요!</p>
                                                <div class="main-border-button">
                                                    <a href="#">자세히 보기</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="${pageContext.request.contextPath}/resources/images/recipe.jpg">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-first-image">
                                    <div class="thumb">
                                        <div class="inner-content">
                                            <h4>회사소개</h4>
                                            <span>'SAJO'에 대해 알고싶으신가요?</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>'SAJO'는?</h4>
                                                <p>'SAJO'의 철학, 목표, 가치관 등에 대해 알아보세요!</p>
                                                <div class="main-border-button">
                                                    <a href="company.do">자세히 보기</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="${pageContext.request.contextPath}/resources/images/com.png">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Men Area Starts ***** -->
    <!--///////////////////////////////////////////////////////////////////////////////// 카피라이트 부분 -->
     <section class="section-copylight" id="men">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>SAJO와 못난이 식재료들의 신선한 지구 프로젝트!</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="men-item-carousel">
                        <div class="owl-men-item owl-carousel">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                       
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/copy1.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>가장 소량씩, 가장 신선하게</h4>
                                   <h5> 적은 양으로 부담없이 즐겨요.</h5>
                                   
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                      
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/copy2.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>친환경 채소를 가장 저렴하게!</h4>
                                    <h5>30% OFF, 합리적인 가격으로 만나요!</h5>
                                   
                                </div>
                            </div>
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                      
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/copy3.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>환경에 한 발 나은 선택</h4>
                                    <h5>환경에 더 가까운 생산과 소비를 지지해요.</h5>
                                 
                                </div>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        <!--///////////////////////////////////////////////////////////////////////////////// 카피라이트 부분 끝 -->
    <section class="section" id="men">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>지금 먹어야 제일 맛있는 야채!</h2>
                        <span>SAJO에서 현재 계절에 맞는 제철 야채들을 추천드립니다.</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="men-item-carousel">
                        <div class="owl-men-item owl-carousel">
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                  <a href="cart2" id="cartAlam" class="cartAlam">장바구니에 상품이 담겼어요! <b class="fast"> 바로가기</b></a>
                                        <ul>
                                            <li> <a href="detailView?imgName=apple"> 자세히 보기 </a> </li>
                                          
                                          
                                            <li><a class="cart" href="#"><input id="type" type="hidden" value="appleSingProduct"/> 장바구니</a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/sang.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>유기농 못난 상추 1kg</h4>
                                    <span>20,000원</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                     <a href="cart2" id="cartAlam" class="cartAlam">장바구니에 상품이 담겼어요! <b class="fast"> 바로가기</b></a>
                                        <ul>
                                             <li><a href="detailView?imgName=go">자세히 보기</a></li>
                                 
                                             <li><a class="cart" href="#"><input id="type" type="hidden" value="goSingProduct"/>장바구니</a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/go.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>욕지도 못난이</h4>
                                    <h4>꿀밤고구마 3kg</h4>
                                    <span>18,000원</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                     <a href="cart2" id="cartAlam" class="cartAlam">장바구니에 상품이 담겼어요! <b class="fast"> 바로가기</b></a>
                                        <ul>
                                              <li><a href="detailView?imgName=bu">자세히 보기</a></li>
                                
                                           <li><a class="cart" href="#"><input id="type" type="hidden" value="buSingProduct"/>장바구니</a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/bu.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>화이트 못난이</h4>
                                    <h4>일반 양송이 버섯 1kg</h4>
                                    <span>9,900원</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                     <a href="cart2" id="cartAlam" class="cartAlam">장바구니에 상품이 담겼어요! <b class="fast"> 바로가기</b></a>
                                        <ul>
                                             <li><a href="detailView?imgName=pote">자세히 보기</a></li>
                                  
                                            <li><a class="cart" href="#"><input id="type" type="hidden" value="poteSingProduct"/>장바구니</a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/pote.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>친환경 못난이 감자 4.5kg</h4>
                                    <span>20,000원</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Men Area Ends ***** -->

    <!-- ***** 제철 과일 추천 세션 Starts ************************************************************************** -->
    <section class="section" id="women">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>지금 먹어야 제일 맛있는 과일들!</h2>
                        <span>SAJO에서 현재 계절에 맞는 제철 과일들을 추천드립니다.</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="women-item-carousel">
                        <div class="owl-women-item owl-carousel">
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                     <a href="cart2" id="cartAlam" class="cartAlam">장바구니에 상품이 담겼어요! <b class="fast"> 바로가기</b></a>
                                        <ul>
                                    
                                             <li><a href="detailView?imgName=apple">자세히 보기</a></li>
                                 
                                            <li><a class="cart" href="#"><input id="type" type="hidden" value="appleSingProduct"/>장바구니</a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/apple.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>유기농 못난이 꿀사과 5kg</h4>
                                    <span>20,000원</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                     <a href="cart2" id="cartAlam" class="cartAlam">장바구니에 상품이 담겼어요! <b class="fast"> 바로가기</b></a>
                                        <ul>
                                             <li><a href="detailView?imgName=bae">자세히 보기</a></li>
                                     
                                             <li><a class="cart" href="#"><input id="type" type="hidden" value="baeSingProduct"/>장바구니</a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/bae.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>친환경 유기농 참배</h4>
                                    <span>19,000원</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                     <a href="cart2" id="cartAlam" class="cartAlam">장바구니에 상품이 담겼어요! <b class="fast"> 바로가기</b></a>
                                        <ul>
                                             <li><a href="detailView?imgName=cham">자세히 보기</a></li>
                                   
                                            <li><a class="cart" href="#"><input id="type" type="hidden" value="chamSingProduct"/>장바구니</a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/cham.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>유기농 참외 3kg</h4>
                                    <span>10,000원</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                     <a href="cart2" id="cartAlam" class="cartAlam">장바구니에 상품이 담겼어요! <b class="fast"> 바로가기</b></a>
                                        <ul>
                                            <li><a href="detailView?imgName=banana">자세히 보기</a></li>
                                   
                                            <li><a class="cart" href="#"><input id="type" type="hidden" value="bananaSingProduct"/>장바구니</a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/banana.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>유기농 어글리바나나 1.5kg</h4>
                                    <span>10,000원</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Women Area Ends ***** -->

    <!-- ***** Kids Area Starts ***** -->
    <section class="section" id="kids">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>HOT 인기 레시피!</h2>
                        <span>SAJO에서 못난이 과일/채소 등 상품들을 사용해 만들어진 맛있는 음식들을 소개합니다.</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="kid-item-carousel">
                        <div class="owl-kid-item owl-carousel">
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                           <li><a href="recipe?recipe=gofood">자세히 보기</a></li>
                          
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/goSingProduct1.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>고구마 칩</h4>
                                    <span>욕지도 꿀밤 고구마로 만들었어요!</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                             <li><a href="recipe?recipe=gofoods">자세히 보기</a></li>
                                
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/bufood.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>화이트 양송이 스프</h4>
                                    <span>못난이 양송이 버섯으로 만들었어요!</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                             <li><a href="recipe?recipe=gofoo">자세히 보기</a></li>
                                 
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/appleFood.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>봄동사과무침</h4>
                                    <span>유기농 못난이 꿀사과로 만들었어요!</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="item">
                                <div id="listView" class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="recipe?recipe=good">자세히 보기</a></li>
                                   
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/potefood.png" alt="">
                                </div>
                                <div class="down-content">
                                    <h4>감자전</h4>
                                    <span>못난이 감자의 화려한 변신!</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Kids Area Ends ***** -->

    <!-- ***** Explore Area Starts *******************************************************************************리뷰 -->
      <section class="section" id="explore">
        <div class="container">
            <div class="row">
             <div class="col-lg-6">
            <div class="left-content">
                        <h2>소비자들의 살아있는 리뷰</h2>
                        <span>소비자들의 생생하다 못해 살아있는 리뷰</span>
                        
                        <div class="quote">
                        
                        </div>
                        <h2>저희 사이트를 이용하신 소비자분</h2>
                        <h2>들의 소중한 리뷰가 담겨져 있는 곳입니다.</h2>
                        <p>저희 사이트는 절대 회원님들의 리뷰를 지워거나 수정하지 않습니다.</p>
                       <p>저희 사이트는 절대 회원님들에게 리뷰를 써달라고 돈을 드리는 행위는 일절 금하고 있습니다.</p> 
           
                        <div class="main-border-button">
                            <a href="review.do" class="reviews">리뷰 자세히 보기</a>
                            <a href="#" class="reviewa"><input type="hidden" id="typea">리뷰 작성하러 가기</a>
                        </div>
                         
                        
                    </div>
            </div>
                
                
                <div class="col-lg-6">
                    <div class="right-content">
                        
                            
                                            
                         <img src="${pageContext.request.contextPath}/resources/images/review.png" alt="">
                         
                      
                        
                </div> 
            </div>
        </div>
    </section>

      <!-- ***** Explore Area Starts *******************************************************************************리뷰 -->

    <!-- ***** Subscribe Area Starts ***** -->
    <div class="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="section-heading">
                        <h2>지금 바로 'SAJO'에 상품을 등록해보시겠어요?</h2>
                        <span>많은 고객님들이 아쉽게 버려질 위기에 처한 식재료들을 찾고 있습니다!</span>
                    </div>
                    <form id="subscribe" action="loginSales" method="post">
                        <div class="row">
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="id" type="text" id="id" placeholder="판매자님의 ID를 입력해주세요" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="password" type="password" id="password" pattern="^[0-9]*$" placeholder="판매자님의 비밀번호를 입력해주세요" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-2">
                          <div class="col-lg-108">
                            <fieldset>
                              <button type="submit" id="form-submits" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>
                            </fieldset>
                            </div>
                          </div>
                        </div>
                        
					<input type="hidden" id="pageType" name="pageType" value="insertProduct"/>
							
					
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
    <!-- ***** Subscribe Area Ends ***** -->
    
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
            
            
            $('.cart').click(function(evt) {
     

            	/*   세션은 자바단과  body 태그에서 인식 ,   스크립트단에선 인식 못함? */
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
          		   location.href="loginForm?pageType=index&type="+$(this).find('#type').val();
          	   }else { location.href="#"; }
          	   <% } %>
          	   
          	   <% if(session.getAttribute("logName") != null && session.getAttribute("logType") == "일반" ) { %> 
          	   
          	 
          	 evt.preventDefault();
          	var In = $(this).parents('ul').prev();  /* .fadeIn("fast"); */
            var Out = $(this).parents('ul').prev();  /* .fadeOut(5000); */
           	
           	 var param = { param : $(this).find('#type').val() };
       		 //ajax..
       		  $.ajax({
 			         type : 'get',
 			         data : param,
 			         url  : 'cart',
 			      success : function(redata){
 			    	  if(redata == "ok") {
 			    	  var num = parseInt( $('.cartCount').text() );
 			    	  num += 1; 
 			    	  $('.cartCount').text( num );
 			    	  In.fadeIn("fast");
 			    	  Out.fadeOut(5000);
 			    	  } else alert("해당 상품은 품절입니다.");
 			      },
 			        error : function(err){
 			        	              alert('err');
 			                            }
                 });
          	   <% }    %> 
           	
     	
            	
            });
            
         	
            $('#form-submit').click(function() {
            	if( $('#Duplicate').val() != null ) {
            		alert('현재 접속중인 계정을 로그아웃하고 이용해주세요');
            	}
            });
        	
            $('.cartAlam').hide(); 
            
       /* *************************************************************************************************************************************** */     
            $('.reviewa').click(function() {

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
                 }else { location.href="#"; }
                 <% } %>
                 
                 
                 <% if(session.getAttribute("logName") != null && session.getAttribute("logType") == "일반" ) { %> 
                 if( confirm("리뷰 작성 하러 가시겠습니까?"))
                 {
                    location.href="reviewSave.do?pageType=index&typea="+$(this).find('#typea').val();
                    
                 }else {
                    
                    if( confirm("이전 화면으로 돌아가시겠습니까?"))
                     {
                       location.href="sajo";
                     }
                 
                 }
                 <% }    %> 
             }); // end 리뷰달기
             
             
        });

    </script>

  </body>
</html>