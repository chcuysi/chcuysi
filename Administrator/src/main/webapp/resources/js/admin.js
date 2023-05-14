$(function(){

	// 좌측 메뉴에서 선택된 대카테고리명
	var selectedMenu_left = document.querySelector(".templatemo-left-nav a.active");
	// 위의 메뉴에서 선택된 소카테고리명
	var selectedMenu_top = document.querySelector(".text-uppercase a.active");
	// 카테고리명을 담을 곳
	var category_menu = document.getElementById("category_menu");
	// 대카테고리명과 소카테고리명을 담을 곳에다 담음
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
	
	// 행 클릭 시 상세정보창에 값 가져옴
	$('#table_iok tbody > tr').click(function() {
      // 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_iok').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailInfo의 tr의 td에 해당 값을 넣음
		var clickedPid = $(this).find("td:first").text();
		$("#table_detailInfo tbody tr:first td:eq(1)").text(clickedPid);
		var clickedCategory = $(this).find("td:eq(1)").text();
		$("#table_detailInfo tbody tr:first td:eq(3)").text(clickedCategory);
		var clickedName = $(this).find("td:eq(2)").text();
		$("#table_detailInfo tbody tr:eq(1) td:eq(1)").text(clickedName);
		var clickedPrice = $(this).find("td:eq(3)").text();
		$("#table_detailInfo tbody tr:eq(1) td:eq(3)").text(clickedPrice);
		var clickedWarehoused = $(this).find("td:eq(4)").text();
		$("#table_detailInfo tbody tr:eq(2) td:eq(1)").text(clickedWarehoused);
 		var clickedIok = $(this).find("td:eq(5)").text();
 		$("#table_detailInfo .select_detail_colored option").each(function() {
   			if ($(this).val() === clickedIok) {
      			$(this).prop("selected", true);
      			return false; // 일치하는 옵션을 찾았으므로 반복문을 종료합니다.
    		}
  		});
  		var clickedIokwhy = $(this).find("td:eq(6)").text();
		$("#table_detailInfo tbody tr:eq(3) td:eq(1) textarea").val(clickedIokwhy);
		var clickedInum = $(this).find("td:eq(7)").text();
		$("#table_detailInfo tbody tr:first td:eq(5)").text(clickedInum);
		
    });	// end of click
    
    //취소버튼
    $('button.btn_cancel_iok').click(function() {
    	$('form#detailInfo_iok').css('display', 'none');
    });
    
    //수정버튼
	$('button.btn_modify_iok').on('click', function() {
		// 선택한 테이블의 inum 값을 가져옴
		var inum = $('#table_detailInfo tr:first-child td:nth-child(6)').text();
		// 선택한 승인여부값 가져오기
  		var iok = $('table#table_detailInfo').find('tr:eq(2) td:eq(3) select').val(); 
		// 값 대입
  		$("#table_iok tr[data-inum='" + inum + "'] td:eq(5)").text(iok); 
  		// 선택한 승인거부사유값 가져오기
  		var iokwhy = $('table#table_detailInfo').find('tr:eq(3) td:eq(1) textarea').val(); 
		// 값 대입
  		$("#table_iok tr[data-inum='" + inum + "'] td:eq(6)").val(iokwhy);
  		// 수정한 값을 DB에 비동기 통신으로 넣기
  		$.ajax({
    		type: 'post',
    		url: 'getIokMenuList.do/' + inum,
    		data: { inum: inum, iok: iok, iokwhy: iokwhy},
	  		success: function(result) {
				// 화면 자동 새로고침
	  			location.reload();
	  			// 상세정보창 다시 숨기기
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
	
	// 행 클릭 시 상세정보창에 값 가져옴
	$('#table_calculate tbody > tr').click(function() {
      // 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_calculate').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailCalculate의 tr의 td에 해당 값을 넣음
		var clickedInum = $(this).find("td:first").text();
		$("#table_detailCalculate tbody tr:first td:eq(1)").text(clickedInum);
		var clickedPid = $(this).find("td:eq(1)").text();
		$("#table_detailCalculate tbody tr:first td:eq(3)").text(clickedPid);
		var clickedName = $(this).find("td:eq(2)").text();
		$("#table_detailCalculate tbody tr:eq(1) td:eq(1)").text(clickedName);
		var clickedSell_total = $(this).find("td:eq(3)").text();
		$("#table_detailCalculate tbody tr:eq(1) td:eq(3)").text(clickedSell_total);
		var clickedDelivery = $(this).find("td:eq(4)").text();
		$("#table_detailCalculate tbody tr:eq(2) td:eq(1)").text(clickedDelivery);
		var clickedOcharge = $(this).find("td:eq(5)").text();
		$("#table_detailCalculate tbody tr:eq(2) td:eq(3)").text(clickedOcharge);
		var clickedJungsanmoney = $(this).find("td:eq(6)").text();
		$("#table_detailCalculate tbody tr:eq(3) td:eq(1)").text(clickedJungsanmoney);
		var clickedJok = $(this).find("td:eq(7)").text();
 		$("#table_detailCalculate .select_detail_non_colored option").each(function() {
   			if ($(this).val() === clickedJok) {
      			$(this).prop("selected", true);
      			return false; // 일치하는 옵션을 찾았으므로 반복문을 종료합니다.
    		}
  		});
  		var clickedJokDate = $(this).find("td:eq(8)").text().slice(0, 10);
  		$("#table_detailCalculate .select_date_colored").val(clickedJokDate);
    });// end of click
    
    //취소버튼
    $('button.btn_cancel_calculate').click(function() {
    	$('form#detailInfo_calculate').css('display', 'none');
    });
    
    //수정버튼
    $('button.btn_modify_calculate').on('click', function() {
    	// 선택한 테이블의 inum 값을 가져옴
		var inum = $('#table_detailCalculate tr:first-child td:nth-child(2)').text();
		// 선택한 정산상태값 가져오기
  		var jok = $('table#table_detailCalculate').find('tr:eq(3) td:eq(3) select').val();
		// 값 대입
  		$("#table_calculate tr[data-inum='" + inum + "'] td:eq(7)").text(jok);
  		
  		// 선택한 테이블의 jokdate 값을 가져옴
		var jokdateInput = $('table#table_detailCalculate').find('tr:eq(4) td:eq(1) input');
		// 그 값을 String형으로 형변환함
		var jokdate = String(jokdateInput.val());
	  
 		// 수정한 값을 DB에 비동기 통신으로 넣기
  		$.ajax({
    		type: 'post',
    		url: 'getCalculateMenuList.do/' + inum,
    		data: { inum: inum, jok: jok, jokdate : jokdate },
	  		success: function() {
	  			// 화면 자동 새로고침
	  			location.reload();
	  			// 상세정보창 다시 숨기기
      			$('form#detailInfo_calculate').css('display', 'none');
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
	// 행 클릭 시 상세정보창에 값 가져옴
	$('#table_refund tbody > tr').click(function() {
    	// 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_refund').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailRefund의 tr의 td에 해당 값을 넣음
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
		
    });	// end of click
    
    //취소버튼
    $('button.btn_cancel').click(function() {
    	$('form#detailInfo_refund').css('display', 'none');
    });
    
    //수정버튼
    $('button.btn_modify').on('click', function() {
    	// 선택한 테이블의 onum 값을 가져옴
		var onum = $('#table_detailRefund tr:first-child td:nth-child(4)').text();
		// 선택한 환불여부 가져오기
  		var rok = $('table#table_detailRefund').find('tr:eq(2) td:eq(3) select').val();
		// 값 대입
  		$("#table_refund tr[data-onum='" + onum + "'] td:eq(5)").text(rok);
  		// 선택한 승인거부사유값 가져오기
		var rokwhy = $('table#table_detailRefund').find('tr:eq(3) td:eq(1) textarea').val(); 
		// 값 대입
  		$("#table_refund tr[data-onum='" + onum + "'] td:eq(6)").val(rokwhy); 
 		// 수정한 값을 DB에 비동기 통신으로 넣기
  		$.ajax({
    		type: 'post',
    		url: 'getRefundMenuList.do/' + onum,
    		data: { onum: onum, rok: rok, rokwhy: rokwhy },
	  		success: function(result) {
	  			// 화면 자동 새로고침
	  			location.reload();
	  			// 상세정보창 다시 숨기기
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
	// 행 클릭 시 상세정보창에 값 가져옴
	$('#table_member tbody > tr').click(function() {
      	// 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_member').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailMember의 tr의 td에 해당 값을 넣음
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
  		var clickedMoutwhy = $(this).find("td:eq(7)").text();
		$("#table_detailMember tbody tr:eq(4) td:eq(1) textarea").val(clickedMoutwhy);
    });
    
    //취소버튼
    $('button.btn_cancel_member').click(function() {
    	$('form#detailInfo_member').css('display', 'none');
    });
    
    //수정버튼
    $('button.btn_modify_member').on('click', function() {
    	// 선택한 테이블의 mnum 값을 가져옴
		var mnum = $('#table_detailMember tr:first-child td:nth-child(2)').text();
		// 선택한 일반회원탈퇴여부 가져오기
  		var mout = $('table#table_detailMember').find('tr:eq(3) td:eq(1) select').val(); 
		// 값 대입
  		$("#table_member tr[data-mnum='" + mnum + "'] td:eq(6)").text(mout);
  		// 선택한 탈퇴사유값 가져오기
		var moutwhy = $('table#table_detailMember').find('tr:eq(4) td:eq(1) textarea').val(); 
		// 값 대입
  		$("#table_member tr[data-mnum='" + mnum + "'] td:eq(7)").val(moutwhy);
 		// 수정한 값을 DB에 비동기 통신으로 넣기
  		$.ajax({
    		type: 'post',
    		url: 'getMemberMenuList.do/' + mnum,
    		data: { mnum: mnum, mout: mout, moutwhy: moutwhy },
	  		success: function(result) {
	  			// 화면 자동 새로고침
	  			location.reload();
	  			// 상세정보창 다시 숨기기
      			$('form#detailInfo_member').css('display', 'none');
    		},
    		error: function(err) {
      			alert('오류가 발생했습니다.');
      			console.log(err);
    		}
  		});
    });
    
    
     //************ 판매자회원****************
	
	// 초기 로딩 시 홀수 행에는 #f9f9f9, 짝수 행에는 #ffffff 색상 적용
	$('#table_psale tbody > tr:odd').addClass('odd');
	$('#table_psale tbody > tr:even').addClass('even');
	
	// 행 클릭 시 색상 변경
	$('#table_psale tbody > tr').click(function() {
  		highlightRow($(this));
	});
	
	// 행 클릭 시 상세정보창에 값 가져옴
	$('#table_psale tbody > tr').click(function() {
      // 클릭된 td의 값을 가져와서 변수에 저장
    	var value = $(this).text();      
        $('form#detailInfo_psale').css('display', 'block');

	    // 클릭한 tr의 td값을 저장, table_detailPsale의 tr의 td에 해당 값을 넣음
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
  		var clickedPoutwhy = $(this).find("td:eq(7)").text();
		$("#table_detailPsale tbody tr:eq(4) td:eq(1) textarea").val(clickedPoutwhy);
    });	// end of click
    
    //취소버튼
    $('button.btn_cancel_psale').click(function() {
    	$('form#detailInfo_psale').css('display', 'none');
    });
    
    //수정버튼
    $('button.btn_modify_psale').on('click', function() {
    	// 선택한 테이블의 pnum 값을 가져옴
		var pnum = $('#table_detailPsale tr:first-child td:nth-child(2)').text();
		// 선택한 일반회원탈퇴여부 가져오기
  		var pout = $('table#table_detailPsale').find('tr:eq(3) td:eq(1) select').val(); 
		// 값 대입
  		$("#table_psale tr[data-pnum='" + pnum + "'] td:eq(6)").text(pout);
  		// 선택한 탈퇴사유값 가져오기
		var poutwhy = $('table#table_detailPsale').find('tr:eq(4) td:eq(1) textarea').val();
		// 값 대입
  		$("#table_psale tr[data-pnum='" + pnum + "'] td:eq(7)").val(poutwhy);
 		// 수정한 값을 DB에 비동기 통신으로 넣기
  		$.ajax({
    		type: 'post',
    		url: 'getPsaleMenuList.do/' + pnum,
    		data: { pnum: pnum, pout: pout, poutwhy: poutwhy },
	  		success: function(result) {
		  		// 화면 자동 새로고침
	  			location.reload();
	  			// 상세정보창 다시 숨기기
      			$('form#detailInfo_psale').css('display', 'none');
    		},
    		error: function(err) {
      			alert('오류가 발생했습니다.');
      			console.log(err);
    		}
  		});
    });

});