<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매자 회원가입 페이지</title>
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
                                <a href="company.do">회사소개</a>
                               
                            </li>
                            <li class="submenu">
                                <a href="javascript:;">고객센터</a>
                                <ul>
                                    <li><a href="http://192.168.0.79:8280/Administrator/getIokMenuList.do"><b>자주 묻는 질문</b></a></li>
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
                        <h2>판매자 회원 가입</h2>
                        <span>SAJO의 더 많은 서비스를 이용하기 위해 회원가입하는 단계입니다.</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

	<!--회원가입 시작  -->		
	
<section class="section" id="explore">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="left-content">
                        <h2>판매자 회원 가입</h2>
                        <span>저희 사이트를 방문해 주셔서 감사합니다</span>
                        <div class="quote">
                        <form  method="get" id="pmember_form">
                        <label>이름</label><br/>
						<input type="text" name="pname" placeholder="한글5자이내" pattern="[ㄱ-힝]{2,5}" required><br/>
						<hr>
						<label>주민번호</label><br/>
						<input type="text" name="pjnum" placeholder="123456-1234567" pattern="[0-9]{,14}" required><br/>
						<hr>
						<label>사업자 등록번호</label><br/>
						<input type="text" name="pnum" placeholder="a1a1a1" pattern="[0-9,a-z]{2,14}" required><br/>
						<hr>		
						<label>아이디</label><br/>
						<input type="text" name="pid" id="pid" pattern="[0-9a-z]{5,15}" min="5" max="15" required  placeholder="5자~15자 영어와 숫자조합"><input type="button" id="pcheck" value="아이디중복"><br/>
						<div id="pidmessage"></div>
						<hr>
						<label>비밀번호</label><br/>
						<input type="password" name="ppw" id="ppw" placeholder="4자 이상 영어와 숫자조합" pattern="[0-9a-z]{4,}" required><br/>
						<hr>
						<label>비밀번호확인</label><br/>
						<input type="password" name="ppws" id="ppws" placeholder="4자 이상 영어와 숫자조합" pattern="[0-9a-z]{4,}" required><br/>					
						<hr>
						<label> 우편번호</label><br/>
						<input type="text" id="pcode" name="pcode" placeholder="우편번호" required><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br/>
						<hr>
						<label> 주소</label><br/>
						<input type="text" id="paddr" name="paddr" placeholder="도로명주소" required  size="30"><br/>
						<hr>
						<label> 상세주소</label><br/>
						<input type="text" id="pdaddr" name="pdaddr" placeholder="상세주소"  size="30">&nbsp;(필수 아님)<br/>
						<hr>
						<label>이메일 </label><br/>
						<input type="email" name="pemail" placeholder="abcd@galil.com" required size="30"><br/>
						<hr>
						<label>전화번호</label><br/>
						<input type="text" name="ptel"placeholder="010-1234-5678" required><br/>
						<hr>
                        <div class="main-border-button">
                            <input type="submit" id="pmembership" value="회원가입">
                        </div>
                        </form>
					</div>
						 </div>
						 </div>
                   		<div class="col-lg-101">
                    <div class="right-content">
                        <div class="row">
                            <div class="col-lg-101">
                            
<form id="joinForm">
            <ul class="join_box">
                <li class="checkBox check01">
                    <ul class="clearfix">
                        <li>이용약관, 개인정보 수집 및 이용,
                            위치정보 이용약관(선택), 프로모션 안내
                            메일 수신(선택)에 모두 동의합니다.</li>
                      		<li class="checkAllBtn">
                            <input type="checkbox" name="chkAll" id="chkAll" class="chkAll">
                        </li>
                    </ul>
                </li>
                <li class="checkBox check02">
                    <ul class="clearfix">
                        <li>이용약관 동의(필수)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="chk1"> 
                        </li>
                    </ul>
                    <textarea>여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
				</textarea>
				</li>
                <li class="checkBox check03">
                    <ul class="clearfix">
                        <li>개인정보 수집 및 이용 안내(필수)</li>
                        <li class="checkBtn">
                        <input type="checkbox" name="chk" id="chk2">
                        </li>
                    </ul>
                    <textarea>여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
      		 		</textarea>
                	</li>
                	<li class="checkBox check03">
                    <ul class="clearfix">
                        <li>이벤트 등 프로모션 알림 메일수신(선택)</li>
                        <li class="checkBtn">
                            <input type="checkbox" name="chk" id="chk3">
                        </li>
                    </ul>
                    <textarea>여러분을 환영합니다.
네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
       				</textarea>
                </li>
               
            </ul>
</form>                    
                            </div>                         
                        </div>
                    </div>
                </div>
          </div>
          </div>
    </section>

<!-- 회원가입 끝 -->



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
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('pcode').value = data.zonecode;
                document.getElementById("paddr").value = roadAddr;
    
               new daum.Postcode({
        		onclose: function(state) {
           	 	//state는 우편번호 찾기 화면이 어떻게 닫혔는지에 대한 상태 변수 이며, 상세 설명은 아래 목록에서 확인하실 수 있습니다.
           	 	if(state === 'FORCE_CLOSE'){
                //사용자가 브라우저 닫기 버튼을 통해 팝업창을 닫았을 경우, 실행될 코드를 작성하는 부분입니다.

            	} else if(state === 'COMPLETE_CLOSE'){
                //사용자가 검색결과를 선택하여 팝업창이 닫혔을 경우, 실행될 코드를 작성하는 부분입니다.
                //oncomplete 콜백 함수가 실행 완료된 후에 실행됩니다.
            	}
       			 }
    			});
            }
        }).open();
    }
  
$(function () {
	$('#pmembership').click(function (evt) {
		
		var pidck = $('#pidmessage').text();
		
		if( pidck=="" ) {
			alert("아이디 중복체크 안함")
		}else if( pidck == "이미 사용 중인 아이디 입니다."){
			alert("이미 사용중인 아이디입니다.")
		}
	
		if( $('#ppw').val() != $('#ppws').val() ){
		alert("비밀번호가 일치하지 않습니다");
		evt.preventDefault();
        evt.stopPropagation();
		$('#ppw').focus();
		}
		if( $('#ppw').val() == $('#ppws').val() ){
			$("#pmember_form").attr("action","savePmember.do");
		}
		
		if(!chk1.checked ){ 
			//alert('필수 사항을 체크 안하셨습니다');
			evt.preventDefault();
	        evt.stopPropagation();
			return;	
		}
		if (!chk2.checked){
			//alert('필수 사항을 체크 안하셨습니다');
			evt.preventDefault();
	        evt.stopPropagation();
			return;
		}
		
		
			
	})//membership end


	$('#pcheck').click(function() {

		$.ajax({
			type: 'post',
			url:'pselect.do', // MVC 패턴으로 사용하기 .jsp 안됨
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8', // 한글처리
			//**************************************
			// memberVO의 변수명 : 화면에서 받아올 id 값 여기서는 id 값이 id 로 지정되어있음
			data:{ Pid : $('#pid').val()},
			success : idCheck
			
		})		
	})//click	
	
function idCheck(result){
$('#pidmessage').text(result);
}

	  // 전체 선택 / 해제
	  $("#chkAll").click(function(){
	    if($("#chkAll").is(":checked")){
	      $("input[name='chk']").prop("checked", true);
	    }else {
	      $("input[name='chk']").prop("checked", false);
	    }
	  });
	  
	  $("input[name='chk']").click(function(){
	    var totalArr = $("input[name='chk']").length;
	    var checked = $("input[name='chk']:checked").length;

	    if(totalArr != checked){
	      $("#chkAll").prop("checked", false);
	    }else{
	      $("#chkAll").prop("checked", true);
	    }
});
	
	
})// end of window
    
 
</script>



</body>
</html>
