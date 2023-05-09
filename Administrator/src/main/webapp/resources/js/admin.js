$(function(){

	// 메뉴 카테고리
	var selectedMenu_left = document.querySelector(".templatemo-left-nav a.active");
	var selectedMenu_top = document.querySelector(".text-uppercase a.active");

	var category_menu = document.getElementById("category_menu");
	category_menu.textContent = selectedMenu_left.textContent + "   >   " + selectedMenu_top.textContent;
	

	//************ 판매승인****************
	
	// 클릭한 행의 색을 lightyellow로 변경하고, 다른 행의 색을 원래 색으로 돌리는 함수
	function highlightRow($row) {
 		$row.siblings().css('background-color', function() {
   			return $(this).hasClass('even') ? '#f9f9f9' : '#ffffff';
  		});
  		$row.css('background-color', 'lightyellow');
	}	
	
	// 초기 로딩 시 홀수 행에는 #f9f9f9, 짝수 행에는 #ffffff 색상 적용
	$('#table_iok tbody > tr:odd').addClass('odd');
	$('#table_iok tbody > tr:even').addClass('even');
	
	// 행 클릭 시 색상 변경
	$('#table_iok tbody > tr').click(function() {
  		highlightRow($(this));
	});
	
	$('#table_iok tbody > tr').click(function() {
      // 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_iok').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailInfo의 tr의 td에 해당 값을 넣음
		var clickedPid = $(this).find("td:first").text();
		$("#table_detailInfo tbody tr:first td:eq(1)").text(clickedPid);
		var clickedPname = $(this).find("td:eq(1)").text();
		$("#table_detailInfo tbody tr:first td:eq(3)").text(clickedPname);
		var clickedCategory = $(this).find("td:eq(2)").text();
		$("#table_detailInfo tbody tr:eq(1) td:eq(1)").text(clickedCategory);
		var clickedName = $(this).find("td:eq(3)").text();
		$("#table_detailInfo tbody tr:eq(1) td:eq(3)").text(clickedName);
		var clickedPrice = $(this).find("td:eq(4)").text();
		$("#table_detailInfo tbody tr:eq(2) td:eq(1)").text(clickedPrice);
		var clickedDate = $(this).find("td:eq(5)").text();
		$("#table_detailInfo tbody tr:eq(2) td:eq(3)").text(clickedDate);
		var clickedWarehoused = $(this).find("td:eq(6)").text();
		$("#table_detailInfo tbody tr:eq(3) td:eq(1)").text(clickedWarehoused);
 		var clickedIok = $(this).find("td:eq(7)").text();
 		$("#table_detailInfo .select_detail_non_colored option").each(function() {
   			if ($(this).val() === clickedIok) {
      			$(this).prop("selected", true);
      			return false; // 일치하는 옵션을 찾았으므로 반복문을 종료합니다.
    		}
  		});
  		var clickedIokwhy = $(this).find("td:eq(8)").text();
		$("#table_detailInfo tbody tr:eq(4) td:eq(1) textarea").val(clickedIokwhy);
    });
    
    //취소버튼
    $('button.btn_cancel').click(function() {
    	$('form#detailInfo_iok').css('display', 'none');
    });
    
    //수정버튼
	$('button.btn_modify').on('click', function() {
		var pid = $('#table_detailInfo tr:first-child td:nth-child(2)').text(); // 선택한 테이블의 pid 값을 가져옴

  		var iok = $('table#table_detailInfo').find('tr:eq(3) td:eq(3) select').val(); // 선택한 승인여부값 가져오기
  		$("#table_iok tr[data-pid='" + pid + "'] td:eq(7)").text(iok); // 값 대입
  		var iokwhy = $('table#table_detailInfo').find('tr:eq(4) td:eq(1) textarea').val(); // 선택한 승인거부사유값 가져오기
  		$("#table_iok tr[data-pid='" + pid + "'] td:eq(8)").val(iokwhy); // 값 대입
  		
 
  		
  		$.ajax({
    		type: 'post',
    		url: 'getIokMenuList.do/' + pid,
    		data: { pid: pid, iok: iok, iokwhy: iokwhy},
	  		success: function(result) {
	  			location.reload();
      			$('form#detailInfo_iok').css('display', 'none');
    		},
    		error: function(err) {
      			alert('오류가 발생했습니다.');
      			console.log(err);
    		}
  		});
	});
	
	
	
	//************ 정산****************

	// 초기 로딩 시 홀수 행에는 #f9f9f9, 짝수 행에는 #ffffff 색상 적용
	$('#table_calculate tbody > tr:odd').addClass('odd');
	$('#table_calculate tbody > tr:even').addClass('even');
	
	// 행 클릭 시 색상 변경
	$('#table_calculate tbody > tr').click(function() {
  		highlightRow($(this));
	});
	
	$('#table_calculate tbody > tr').click(function() {
      // 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_calculate').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailInfo의 tr의 td에 해당 값을 넣음
		var clickedPid = $(this).find("td:first").text();
		$("#table_detailCalculate tbody tr:first td:eq(1)").text(clickedPid);
		var clickedPname = $(this).find("td:eq(1)").text();
		$("#table_detailCalculate tbody tr:first td:eq(3)").text(clickedPname);
		var clickedName = $(this).find("td:eq(2)").text();
		$("#table_detailCalculate tbody tr:eq(1) td:eq(1)").text(clickedName);
		var clickedPrice = $(this).find("td:eq(3)").text();
		$("#table_detailCalculate tbody tr:eq(1) td:eq(3)").text(clickedPrice);
		var clickedDprice = $(this).find("td:eq(4)").text();
		$("#table_detailCalculate tbody tr:eq(2) td:eq(1)").text(clickedDprice);
		var clickedCommission = $(this).find("td:eq(5)").text();
		$("#table_detailCalculate tbody tr:eq(2) td:eq(3)").text(clickedCommission);
		var clickedTotalCalculate = $(this).find("td:eq(6)").text();
		$("#table_detailCalculate tbody tr:eq(3) td:eq(1)").text(clickedTotalCalculate);
		var clickedCalculateok = $(this).find("td:eq(7)").text();
 		$("#table_detailCalculate .select_detail_non_colored option").each(function() {
   			if ($(this).val() === clickedCalculateok) {
      			$(this).prop("selected", true);
      			return false; // 일치하는 옵션을 찾았으므로 반복문을 종료합니다.
    		}
  		});
  		var clickedCalculateDate = $(this).find("td:eq(8)").text().slice(0, 10);
  		$("#table_detailCalculate .select_date_colored").val(clickedCalculateDate);
    });
    
    //취소버튼
    $('button.btn_cancel').click(function() {
    	$('form#detailInfo_calculate').css('display', 'none');
    });
    
    //수정버튼
    $('button.btn_modify').on('click', function() {
		var pid = $('#table_detailCalculate tr:first-child td:nth-child(2)').text(); // 선택한 테이블의 pid 값을 가져옴
  		var jungsan = $('table#table_detailCalculate').find('tr:eq(3) td:eq(3) select').val(); // 선택한 정산상태값 가져오기
  		$("#table_calculate tr[data-pid='" + pid + "'] td:eq(7)").text(jungsan); // 값 대입
  		
		var jungsandateInput = $('table#table_detailCalculate').find('tr:eq(4) td:eq(1) input');
  		var jungsandate = jungsandateInput.val(); // 선택한 입금일값 가져오기
	  
		  // Date 객체에서 YYYY-MM-DD 형식의 문자열로 변환
		  if (jungsandateInput.attr('type') === 'date') {
		    var dateObj = new Date(jungsandate);
		    var year = dateObj.getFullYear();
		    var month = String(dateObj.getMonth() + 1).padStart(2, '0');
		    var day = String(dateObj.getDate()).padStart(2, '0');
		    jungsandate = year + '-' + month + '-' + day;
		  }
 		
  		$.ajax({
    		type: 'post',
    		url: 'getCalculateMenuList.do/' + pid,
    		data: { pid: pid, jungsan: jungsan, jungsandate: jungsandate },
	  		success: function(result) {
	  			location.reload();
      			$('form#detailInfo_calculate').css('display', 'none');
    		},
    		error: function(err) {
      			alert('오류가 발생했습니다.');
      			console.log(err);
    		}
  		});
	});
    
    
    
    
    

	//************ 배송 ****************

	// 초기 로딩 시 홀수 행에는 #f9f9f9, 짝수 행에는 #ffffff 색상 적용
	$('#table_delivery tbody > tr:odd').addClass('odd');
	$('#table_delivery tbody > tr:even').addClass('even');
	
	// 행 클릭 시 색상 변경
	$('#table_delivery tbody > tr').click(function() {
  		highlightRow($(this));
	});
	
	$('#table_delivery tbody > tr').click(function() {
    	// 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_delivery').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailInfo의 tr의 td에 해당 값을 넣음
		var clickedDnum = $(this).find("td:first").text();
		$("#table_detailDelivery tbody tr:first td:eq(1)").text(clickedDnum);
		var clickedOnum = $(this).find("td:eq(1)").text();
		$("#table_detailDelivery tbody tr:first td:eq(3)").text(clickedOnum);
		var clickedDaddr = $(this).find("td:eq(2)").text();
		$("#table_detailDelivery tbody tr:eq(1) td:eq(1)").text(clickedDaddr);
		var clickedDok = $(this).find("td:eq(3)").text();
		$("#table_detailDelivery .select_detail_non_colored_delivery option").each(function() {
   			if ($(this).val() === clickedDok) {
      			$(this).prop("selected", true);
      			return false; // 일치하는 옵션을 찾았으므로 반복문을 종료합니다.
    		}
  		});
		var clickedDdate = $(this).find("td:eq(4)").text();
  		$("#table_detailDelivery .select_date_colored").val(clickedDdate);
		var clickedEok = $(this).find("td:eq(5)").text();
		$("#table_detailDelivery tbody tr:eq(2) td:eq(3)").text(clickedEok);
		var clickedRok = $(this).find("td:eq(6)").text();
		$("#table_detailDelivery tbody tr:eq(3) td:eq(1)").text(clickedRok);
    });
    
    //취소버튼
    $('button.btn_cancel').click(function() {
    	$('form#detailInfo_delivery').css('display', 'none');
    });
    
    //수정버튼
    $('button.btn_modify').on('click', function() {
		var dnum = $('#table_detailDelivery tr:first-child td:nth-child(2)').text(); // 선택한 테이블의 pid 값을 가져옴
  		var dok = $('table#table_detailDelivery').find('tr:eq(1) td:eq(3) select').val(); // 선택한 정산상태값 가져오기
  		$("#table_delivery tr[data-dnum='" + dnum + "'] td:eq(3)").text(dok); // 값 대입
  		
		var ddateInput = $('table#table_detailDelivery').find('tr:eq(2) td:eq(1) input');
  		var ddate = ddateInput.val(); // 선택한 배송일값 가져오기
	  
		  // Date 객체에서 YYYY-MM-DD 형식의 문자열로 변환
		  if (ddateInput.attr('type') === 'date') {
		    var dateObj = new Date(ddate);
		    var year = dateObj.getFullYear();
		    var month = String(dateObj.getMonth() + 1).padStart(2, '0');
		    var day = String(dateObj.getDate()).padStart(2, '0');
		    ddate = year + '-' + month + '-' + day;
		  }
 		
  		$.ajax({
    		type: 'post',
    		url: 'getDeliveryMenuList.do/' + dnum,
    		data: { dnum: dnum, dok: dok, ddate: ddate },
	  		success: function(result) {
	  			location.reload();
      			$('form#detailInfo_delivery').css('display', 'none');
    		},
    		error: function(err) {
      			alert('오류가 발생했습니다.');
      			console.log(err);
    		}
  		});
	});
    
    
    
        //************ 교환 ****************

	   // 초기 로딩 시 홀수 행에는 #f9f9f9, 짝수 행에는 #ffffff 색상 적용
	   $('#table_exchange tbody > tr:odd').addClass('odd');
	   $('#table_exchange tbody > tr:even').addClass('even');
	   
	   // 행 클릭 시 색상 변경
	   $('#table_exchange tbody > tr').click(function() {
	        highlightRow($(this));
	   });
	   
	   $('#table_exchange tbody > tr').click(function() {
	       // 클릭된 td의 값을 가져와서 변수에 저장
	       var value = $(this).text();      
	        $('form#detailInfo_exchange').css('display', 'block');
	
	       // 클릭한 tr의 td값을 저장, table_detailInfo의 tr의 td에 해당 값을 넣음
	      var clickedDnum = $(this).find("td:first").text();
	      $("#table_detailExchange tbody tr:first td:eq(1)").text(clickedDnum);
	      var clickedOnum = $(this).find("td:eq(1)").text();
	      $("#table_detailExchange tbody tr:first td:eq(3)").text(clickedOnum);
	      var clickedDaddr = $(this).find("td:eq(2)").text();
	      $("#table_detailExchange tbody tr:eq(1) td:eq(1)").text(clickedDaddr);
	      var clickedDok = $(this).find("td:eq(3)").text();
	      $("#table_detailExchange tbody tr:eq(1) td:eq(3)").text(clickedDok);
	      var clickedDdate = $(this).find("td:eq(4)").text();
	      $("#table_detailExchange tbody tr:eq(2) td:eq(1)").text(clickedDdate);
	      var clickedEok = $(this).find("td:eq(5)").text();
	      $("#table_detailExchange .select_detail_colored option").each(function() {
	            if ($(this).val() === clickedEok) {
	               $(this).prop("selected", true);
	               return false; // 일치하는 옵션을 찾았으므로 반복문을 종료합니다.
	          }
	      });
	      var clickedEokwhy = $(this).find("td:eq(6)").text();
		  $("#table_detailExchange tbody tr:eq(3) td:eq(1) textarea").val(clickedEokwhy);
	      
	    });
	    
	    //취소버튼
	    $('button.btn_cancel').click(function() {
	       $('form#detailInfo_exchange').css('display', 'none');
	    });
	    
	    //수정버튼
	    $('button.btn_modify').on('click', function() {
		var onum = $('#table_detailExchange tr:first-child td:nth-child(4)').text(); // 선택한 테이블의 onum 값을 가져옴
  		var eok = $('table#table_detailExchange').find('tr:eq(2) td:eq(3) select').val(); // 선택한 교환여부 가져오기
  		$("#table_exchange tr[data-onum='" + onum + "'] td:eq(5)").text(eok); // 값 대입
  		
		var eokwhy = $('table#table_detailExchange').find('tr:eq(3) td:eq(1) textarea').val(); // 선택한 승인거부사유값 가져오기
  		$("#table_exchange tr[data-onum='" + onum + "'] td:eq(6)").val(eokwhy); // 값 대입
 		
  		$.ajax({
    		type: 'post',
    		url: 'getExchangeMenuList.do/' + onum,
    		data: { onum: onum, eok: eok, eokwhy: eokwhy },
	  		success: function(result) {
	  			location.reload();
      			$('form#detailInfo_exchange').css('display', 'none');
    		},
    		error: function(err) {
      			alert('오류가 발생했습니다.');
      			console.log(err);
    		}
  		});
	});
	    
    
    
    //************ 환불 ****************

	// 초기 로딩 시 홀수 행에는 #f9f9f9, 짝수 행에는 #ffffff 색상 적용
	$('#table_refund tbody > tr:odd').addClass('odd');
	$('#table_refund tbody > tr:even').addClass('even');
	
	// 행 클릭 시 색상 변경
	$('#table_refund tbody > tr').click(function() {
  		highlightRow($(this));
	});
	
	$('#table_refund tbody > tr').click(function() {
    	// 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_refund').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailInfo의 tr의 td에 해당 값을 넣음
		var clickedDnum = $(this).find("td:first").text();
		$("#table_detailRefund tbody tr:first td:eq(1)").text(clickedDnum);
		var clickedOnum = $(this).find("td:eq(1)").text();
		$("#table_detailRefund tbody tr:first td:eq(3)").text(clickedOnum);
		var clickedDaddr = $(this).find("td:eq(2)").text();
		$("#table_detailRefund tbody tr:eq(1) td:eq(1)").text(clickedDaddr);
		var clickedDok = $(this).find("td:eq(3)").text();
		$("#table_detailRefund tbody tr:eq(1) td:eq(3)").text(clickedDok);
		var clickedDdate = $(this).find("td:eq(4)").text().slice(0, 10);
  		$("#table_detailRefund tbody tr:eq(2) td:eq(1)").text(clickedDdate);
		var clickedRok = $(this).find("td:eq(5)").text();
		$("#table_detailRefund .select_detail_colored option").each(function() {
   			if ($(this).val() === clickedRok) {
      			$(this).prop("selected", true);
      			return false; // 일치하는 옵션을 찾았으므로 반복문을 종료합니다.
    		}
  		});
  		var clickedRokwhy = $(this).find("td:eq(6)").text();
	$("#table_detailRefund tbody tr:eq(3) td:eq(1) textarea").val(clickedRokwhy);
		
    });
    
    //취소버튼
    $('button.btn_cancel').click(function() {
    	$('form#detailInfo_refund').css('display', 'none');
    });
    
    //수정버튼
    $('button.btn_modify').on('click', function() {
		var onum = $('#table_detailRefund tr:first-child td:nth-child(4)').text(); // 선택한 테이블의 onum 값을 가져옴
  		var rok = $('table#table_detailRefund').find('tr:eq(2) td:eq(3) select').val(); // 선택한 환불여부 가져오기
  		$("#table_refund tr[data-onum='" + onum + "'] td:eq(5)").text(rok); // 값 대입
  		
		var rokwhy = $('table#table_detailRefund').find('tr:eq(3) td:eq(1) textarea').val(); // 선택한 승인거부사유값 가져오기
  		$("#table_refund tr[data-onum='" + onum + "'] td:eq(6)").val(rokwhy); // 값 대입
 		
  		$.ajax({
    		type: 'post',
    		url: 'getRefundMenuList.do/' + onum,
    		data: { onum: onum, rok: rok, rokwhy: rokwhy },
	  		success: function(result) {
	  			location.reload();
      			$('form#detailInfo_refund').css('display', 'none');
    		},
    		error: function(err) {
      			alert('오류가 발생했습니다.');
      			console.log(err);
    		}
  		});
    });
    
    
    
    
    
    //************ 일반회원****************
	
	// 초기 로딩 시 홀수 행에는 #f9f9f9, 짝수 행에는 #ffffff 색상 적용
	$('#table_member tbody > tr:odd').addClass('odd');
	$('#table_member tbody > tr:even').addClass('even');
	
	// 행 클릭 시 색상 변경
	$('#table_member tbody > tr').click(function() {
  		highlightRow($(this));
	});
	
	$('#table_member tbody > tr').click(function() {
      // 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_member').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailInfo의 tr의 td에 해당 값을 넣음
		var clickedMnum = $(this).find("td:first").text();
		$("#table_detailMember tbody tr:first td:eq(1)").text(clickedMnum);
		var clickedMid = $(this).find("td:eq(1)").text();
		$("#table_detailMember tbody tr:first td:eq(3)").text(clickedMid);
		var clickedMaddr = $(this).find("td:eq(2)").text();
		$("#table_detailMember tbody tr:eq(1) td:eq(1)").text(clickedMaddr);
		var clickedMtel = $(this).find("td:eq(3)").text();
		$("#table_detailMember tbody tr:eq(1) td:eq(3)").text(clickedMtel);
		var clickedMemail = $(this).find("td:eq(4)").text();
		$("#table_detailMember tbody tr:eq(2) td:eq(1)").text(clickedMemail);
		var clickedMdate = $(this).find("td:eq(5)").text();
		$("#table_detailMember tbody tr:eq(2) td:eq(3)").text(clickedMdate);
		var clickedMout = $(this).find("td:eq(6)").text();
 		$("#table_detailMember .select_detail_non_colored option").each(function() {
   			if ($(this).val() === clickedMout) {
      			$(this).prop("selected", true);
      			return false; // 일치하는 옵션을 찾았으므로 반복문을 종료합니다.
    		}
  		});
    });
    
    //취소버튼
    $('button.btn_cancel').click(function() {
    	$('form#detailInfo_member').css('display', 'none');
    });
    
    //수정버튼
    
    
    
     //************ 판매자회원****************
	
	// 초기 로딩 시 홀수 행에는 #f9f9f9, 짝수 행에는 #ffffff 색상 적용
	$('#table_psale tbody > tr:odd').addClass('odd');
	$('#table_psale tbody > tr:even').addClass('even');
	
	// 행 클릭 시 색상 변경
	$('#table_psale tbody > tr').click(function() {
  		highlightRow($(this));
	});
	
	$('#table_psale tbody > tr').click(function() {
      // 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_psale').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailInfo의 tr의 td에 해당 값을 넣음
		var clickedPnum = $(this).find("td:first").text();
		$("#table_detailPsale tbody tr:first td:eq(1)").text(clickedPnum);
		var clickedPid = $(this).find("td:eq(1)").text();
		$("#table_detailPsale tbody tr:first td:eq(3)").text(clickedPid);
		var clickedPaddr = $(this).find("td:eq(2)").text();
		$("#table_detailPsale tbody tr:eq(1) td:eq(1)").text(clickedPaddr);
		var clickedPtel = $(this).find("td:eq(3)").text();
		$("#table_detailPsale tbody tr:eq(1) td:eq(3)").text(clickedPtel);
		var clickedPemail = $(this).find("td:eq(4)").text();
		$("#table_detailPsale tbody tr:eq(2) td:eq(1)").text(clickedPemail);
		var clickedPdate = $(this).find("td:eq(5)").text();
		$("#table_detailPsale tbody tr:eq(2) td:eq(3)").text(clickedPdate);
		var clickedPout = $(this).find("td:eq(6)").text();
 		$("#table_detailPsale .select_detail_non_colored option").each(function() {
   			if ($(this).val() === clickedPout) {
      			$(this).prop("selected", true);
      			return false; // 일치하는 옵션을 찾았으므로 반복문을 종료합니다.
    		}
  		});
    });
    
    //취소버튼
    $('button.btn_cancel').click(function() {
    	$('form#detailInfo_psale').css('display', 'none');
    });
    
    //수정버튼

});