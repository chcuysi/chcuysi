$(function(){

	//************ getIokMenuList
	
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
		var clickedStock = $(this).find("td:eq(6)").text();
		$("#table_detailInfo tbody tr:eq(3) td:eq(1)").text(clickedStock);
 		
    });
    
    //취소버튼
    $('button.btn_cancel').click(function() {
    	$('form#detailInfo_iok').css('display', 'none');
    });
    
    //수정버튼
	$('button.btn_modify').on('click', function() {
		var pid = $('#table_detailInfo tr:first-child td:nth-child(2)').text(); // 선택한 테이블의 pid 값을 가져옴
  		var iok = $('table#table_detailInfo').find('tr:eq(3) td:eq(3) select').val(); // 선택한 값 가져오기
  		$("#table_iok tr[data-pid='" + pid + "'] td:eq(7)").text(iok); // 값 대입
 
  		
  		$.ajax({
    		type: 'post',
    		url: 'getIokMenuList.do/' + pid,
    		data: { pid: pid, iok: iok },
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
	

});