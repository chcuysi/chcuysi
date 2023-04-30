<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
                            </li>                         <!-- session.invalidate(); -->
                            
                            <li class="scroll-to-section"><a href="#explore">마이페이지</a></li>
                            
                            <c:choose>
                            
                            <c:when test="${sessionScope.logName ne null}">
                             <li class="submenu">
                               <a id="userLogin" href="javascript:;">${sessionScope.logName}</a>
                                 <ul>
                                    <li><a href="logOut"><b>로그아웃</b></a></li>
                                </ul>
                             </li>
                                
                            </c:when>
                            <c:otherwise>  <li class="scroll-to-section"><a href="loginForm?pageType=index">로그인하기</a></li>
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
    <div class="main-banner" id="top">
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
                                    <a href="#">SAJO 이용 가이드 받기!</a>
                                </div>
                            </div>
                            <img src="${pageContext.request.contextPath}/resources/images/base.png" alt="">
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
                                            <h4>미션</h4>
                                            <span>지구와 우리 그리고 나를 위해!</span>
                                        </div>
                                        <div class="hover-content">
                                            <div class="inner">
                                                <h4>미션</h4>
                                                <p>지구와 우리 그리고 나를 위해! 다같이 실천하는 친환경적 소비생활!</p>
                                                <div class="main-border-button">
                                                    <a href="#">자세히 보기</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="${pageContext.request.contextPath}/resources/images/mission.png">
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
                                                    <a href="#">자세히 보기</a>
                                                </div>
                                            </div>
                                        </div>
                                        <img src="${pageContext.request.contextPath}/resources/images/singsing.png">
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
                                        <img src="${pageContext.request.contextPath}/resources/images/re1.png">
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
                                                    <a href="#">자세히 보기</a>
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
                        <h2>재구매율 높은 상품 리스트!</h2>
                        <span>SAJO에서 판매된 상품들 중 재구매율이 높은 순으로 보여드리는 리스트입니다.</span>
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
                                        <ul>
                                            <li><a href="apple"><i class="fa fa-eye"></i></a></li>
                                          
                                          
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                             <li><a href="go"><i class="fa fa-eye"></i></a></li>
                                 
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                              <li><a href="bu"><i class="fa fa-eye"></i></a></li>
                                
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                             <li><a href="pote"><i class="fa fa-eye"></i></a></li>
                                  
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                             <li><a href="apple"><i class="fa fa-eye"></i></a></li>
                                 
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                             <li><a href="bae"><i class="fa fa-eye"></i></a></li>
                                     
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                             <li><a href="cham"><i class="fa fa-eye"></i></a></li>
                                   
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="banana"><i class="fa fa-eye"></i></a></li>
                                   
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                       
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/gofood.png" alt="">
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                       
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="single-product.html"><i class="fa fa-eye"></i></a></li>
                                    
                                            <li><a href="cart.html"><i class="fa fa-shopping-cart"></i></a></li>
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

    <!-- ***** Explore Area Starts ***** -->
    <section class="section" id="explore">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="left-content">
                        <h2>우리의 미션! 지속 가능한 식탁</h2>
                        <span>소비자의 선택을 받기 위해, 그리고 대형 유통 체인 내의 관리 편의를 위해 균일하고 깨끗한 농산물들이 ‘정상품’으로 분류돼 시장으로 나오고, 나머지는 규격 외 농산물로 분류됩니다.</span>
                        <div class="quote">
                            <i class="fa fa-quote-left"></i><p>농산물의 폐기는 유통과 소비 모든 단계에서 사회적 손실을 야기합니다. 'SAJO'는 불필요한 낭비를 줄여 환경 보호에 기여하고, 농부의 노력에 대한 정당한 보상을 제공합니다.</p>
                        </div>
                        <p>이 규격 외 농산물들은 맛도 영양도 다를 바 없지만, 크기가 조금 작거나 크거나 개성있다는 이유로 적절한 판로를 찾기가 어렵습니다.</p>
                        <p>판로를 찾지 못한 농산물의 상당 양은 폐기로 이어집니다. 농산물의 폐기는 온실가스를 배출해 환경을 오염시키고, 생산에 투입된 물과 비료, 노동력의 낭비로 직결돼 큰 사회적·경제적·환경적 손실입니다. 못난이 농산물을 헐값에 사들이는 관행을 깨고, 합리적인 가격으로 정산하여 건강한 생산과 남김없는 소비가 지속되도록 노력합시다.  <a rel="nofollow" href="https://paypal.me/templatemo" target="_blank">지금 바로 실천하기!</a></p>
                        <div class="main-border-button">
                            <a href="products.html">미션 자세히 보기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="right-content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="leather">
                                    <h4>미정</h4>
                                    <span>남김없는 생산이 가능하도록</span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                 <div class="leather">
                                    <h4>미정</h4>
                                    <span>지속가능한 농법이 확산될 수 있도록</span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="leather">
                                    <h4>미정</h4>
                                    <span>생산자와 소비자가 서로 지지하며 믿을 수 있도록</span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="types">
                                    <h4>미정</h4>
                                    <span>친환경 생산의 확대로 지속가능한 땅을 늘려나갈 수 있도록</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Explore Area Ends ***** -->

    <!-- ***** Social Area Starts ***** -->
    <section class="section" id="social">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2>판매 예정 상품</h2>
                        <span>지금은 아쉽게 만날 수 없지만 곧 여러분들께 다가갈 상품들입니다.</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row images">
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>Fashion</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="${pageContext.request.contextPath}/resources/images/missionEx2.PNG" alt="">
                    </div>
                </div>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>New</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="${pageContext.request.contextPath}/resources/images/missionEx2.PNG" alt="">
                    </div>
                </div>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>Brand</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="${pageContext.request.contextPath}/resources/images/missionEx2.PNG" alt="">
                    </div>
                </div>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>Makeup</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="${pageContext.request.contextPath}/resources/images/missionEx2.PNG" alt="">
                    </div>
                </div>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>Leather</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="${pageContext.request.contextPath}/resources/images/missionEx2.PNG" alt="">
                    </div>
                </div>
                <div class="col-2">
                    <div class="thumb">
                        <div class="icon">
                            <a href="http://instagram.com">
                                <h6>Bag</h6>
                                <i class="fa fa-instagram"></i>
                            </a>
                        </div>
                        <img src="${pageContext.request.contextPath}/resources/images/missionEx2.PNG" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Social Area Ends ***** -->

    <!-- ***** Subscribe Area Starts ***** -->
    <div class="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="section-heading">
                        <h2>지금 바로 'SAJO'에 상품을 등록해보시겠어요?</h2>
                        <span>많은 고객님들이 아쉽게 버려질 위기에 처한 식재료들을 찾고 있습니다!</span>
                    </div>
                    <form id="subscribe" action="" method="get">
                        <div class="row">
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="name" type="text" id="name" placeholder="판매자님의 ID를 입력해주세요" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="판매자님의 비밀번호를 압력해주세요" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-2">
                            <fieldset>
                              <button type="submit" id="form-submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>
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
    <!-- ***** Subscribe Area Ends ***** -->
    
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
            
            
            if( )
            
           
        });

    </script>

  </body>
</html>