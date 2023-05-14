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
                        <h2>진짜 판매가 이루어지는 곳</h2>
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
                        <h2>상품 정보</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                    </div>
                    <form id="insertProduct" action="insertProduct" method='post' enctype="multipart/form-data">
                        <div class="row">
                      
                          <div class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b> 상품명</b></label> 
                            <input name="name" type="text" placeholder="상품명" required>
                            </fieldset>
                          </div>
                          
                          <div class="col-lg-5">
                            <fieldset>
                            <label  id="insertLabel"><b>상품가격</b></label>
                            <input name="price" type="text" pattern="^[0-9]*$" placeholder="상품 가격" required>
                            </fieldset>
                          </div>
                          
                          <!--  testing ************************************************************ -->
                          
                            <div class="col-lg-5">
                            <fieldset>
                            <label  id="insertLabel"><b>상품가격</b></label>
                            <input name="iNum" type="text" pattern="^[0-9]*$" placeholder="inum" required>
                            </fieldset>
                          </div>
                          
                           <div class="col-lg-5">
                            <fieldset>
                            <label  id="insertLabel"><b>상품가격</b></label>
                            <input name="delivery" type="text" pattern="^[0-9]*$" placeholder="delivery" required>
                            </fieldset>
                          </div>
                          
                          <div class="col-lg-5">
                            <fieldset>
                            <label  id="insertLabel"><b>상품가격</b></label>
                            <input name="iCount" type="text" pattern="^[0-9]*$" placeholder="수량" required>
                            </fieldset>
                          </div>

                          
                          
                          
                           <div class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>상품카테고리</b></label> 
                            <!-- <input name="id" type="text" id="id" placeholder="상품명" required> -->
                            <select id="insertProductSelect" name="category" > 
                            <option value="과일" selected>과일</option>
                            <option value="채소">채소</option>
                            <option></option>
                            </select>
                            </fieldset>
                          </div>
                          
                
                          <!-- zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz -->
                         <div class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>상품 세부 카테고리</b></label> 
                            <!-- <input name="id" type="text" id="id" placeholder="상품명" required> -->
                            <select id="insertProductSelect2" name="category2"> 
                            <option value="사과/배" selected>사과/배</option>
                            <option value="수박/참외">수박/참외</option>
                            <option></option>
                            </select>
                            </fieldset>
                          </div>
                          
                    
                           <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>상품 상세 정보</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div> 
                    
                           <div  class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>상품 설명</b></label> 
                            <textarea name="detail" rows="10" cols="75" placeholder="상품 상세 소개  *200자 이내로 작성해주세요." required></textarea>
                            </fieldset>
                          </div>
                          
                     
                       <div id="insertProduct-sectionHeading2" class="section-heading">
                        <div  class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>상품 설명 요약</b></label> 
                            <input name="say" type="text" id="productSay" placeholder="간단하게 한줄로 상품을 나타내주세요!" required>
                            </fieldset>
                          </div>
                         </div> 
                       
                          
                   
                          
                           <div class="col-lg-5">
                            <fieldset>
                            <label  id="insertLabel"><b>상품타입</b></label> 
                            <input name="type" type="text"  placeholder="상품타입" value="" required>
                            </fieldset>
                          </div>
 
                          
                          
                          
                     
                          
                           <div class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>imgname</b></label> 
                            <input name="imgName"   class="Fileimg" type="text"  placeholder="상품명" value="" required>
                            </fieldset>
                          </div>
              
                          
                           <div class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>type2</b></label> 
                            <input name="type2"   class="Fileimg" type="text" placeholder="상품명" value="" required>
                            </fieldset>
                          </div>
                          
                           <div class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>승인 상태</b></label> 
                            <input name="iok"   class="Fileimg" type="text" value="000" placeholder="상품명" required>
                            </fieldset>
                          </div>
                          
                          
                           <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>상품 이미지 등록</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div> 
                   
                          <label id="insertLabel3"><b>이미지 등록</b></label>
                         <input type="file" name="file" id="file">
                          <!-- 기본 정보 입력 끝 ********************************************************** -->
                        
                          
                          <!-- 상품 상세 설명 시작 ******************************************************************* -->
                          
                            <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>상품 상세 정보 입력란</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div> 
                         
                          <div class="col-lg-5">
                            <fieldset>
                            <label  id="insertLabel"><b>핵심 문장</b></label> 
                            <input name="head" type="text"  placeholder="핵심 키워드" value="" required>
                            </fieldset>
                          </div>
                          
                           <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>상세 정보 이미지 등록</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div> 
                           <label id="insertLabel3"><b>이미지 등록1</b></label>
                         <input type="file" name="fileDetail1" id="file">
                          
                         <div  class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>핵심 문장2</b></label> 
                                <input name="contentHead" type="text"  id="productSay"  placeholder="핵심 컨텐트 키워드  (*줄바꿈을 원하신다면 '/'를 끝에 입력해주세요! ) " value="" required>
                            </fieldset>
                          </div>
                          
                           <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>상품 상세설명</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div> 
                             <div  class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>상세 설명</b></label> 
                            <textarea name="content" rows="10" cols="75" placeholder="상품 상세 소개  *200자 이내로 작성해주세요. (*줄바꿈을 원하신다면 '/'를 끝에 입력해주세요! )" required></textarea>
                            </fieldset>
                          </div>
                          
                          
                              <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>상품 상세 정보 입력란2</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div> 
                         
                           <div class="col-lg-5">
                            <fieldset>
                            <label  id="insertLabel"><b>핵심 문장2-1</b></label> 
                            <input name="head2" type="text"  id="productSay" placeholder="핵심 키워드" value="" required>
                            </fieldset>
                          </div>
                          
                           <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>상품 상세 정보 이미지 등록2</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div> 
                         
                              <label id="insertLabel3"><b> 이미지 등록2</b></label>
                         <input type="file" name="fileDetail2" id="file">
                         
                         <div  class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>핵심문장2-2</b></label> 
                                <input name="contentHead2" type="text"  id="productSay" placeholder="핵심 컨텐트 키워드  (*줄바꿈을 원하신다면 '/'를 끝에 입력해주세요! ) " value="" required>
                            </fieldset>
                          </div>
                          
                          
                           <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>상품 상세설명2</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div> 
                         
                             <div  class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>상세 설명2</b></label> 
                            <textarea name="content2" rows="10" cols="75" placeholder="상품 상세 소개  *200자 이내로 작성해주세요. (*줄바꿈을 원하신다면 '/'를 끝에 입력해주세요! )" required></textarea>
                            </fieldset>
                          </div>
                          
                          
                          
                          
                        <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>배송 정보</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div>  
                         
                        
                          <div class="col-lg-5">
                            <fieldset>
                            <label  id="insertLabel"><b>배송 정보 요약</b></label> 
                            <input name="delivery_Detail_head" type="text"  placeholder="배송 정보 요약" value="" required>
                            </fieldset>
                          </div>
                    
                    <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>배송 정보</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div> 
                          
                         
                         
                         <div  class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>배송 정보 상세 </b></label> 
                      <textarea name="delivery_content" rows="10" cols="75" placeholder="필독사항  *200자 이내로 작성해주세요. (*줄바꿈을 원하신다면 '/'를 끝에 입력해주세요! )" required></textarea>  
                            </fieldset>
                            </div>
                            
                            
                            <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>상세 정보 이미지 등록</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div> 
                           <label id="insertLabel3"><b>이미지 등록3</b></label>
                         <input type="file" name="fileDetail3" id="file">
                            
                            
                            <div id="insertProduct-sectionHeading" class="section-heading">
                        <h2>필독사항</h2>
                        <span>상품 정보를 양식에 맞게 기입해주세요.</span>
                         </div>  
                       
                             <div  class="col-lg-5">
                            <fieldset>
                            <label id="insertLabel"><b>필독 사항 </b></label> 
                            <textarea name="save" rows="10" cols="75" placeholder="필독사항  *200자 이내로 작성해주세요. (*줄바꿈을 원하신다면 '/'를 끝에 입력해주세요! )" required></textarea>
                            </fieldset>
                          </div>
                          
                          
 
                   
                            
                          <div class="col-lg-5">
                            <fieldset>
                          
                              
                            
										<input type="hidden" id="pid" name="pid" value="${sessionScope.logName}">
								

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
                                 <button type="submit" id="insertProductSubmit" class="main-dark-button">상품 등록하기</button>
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
