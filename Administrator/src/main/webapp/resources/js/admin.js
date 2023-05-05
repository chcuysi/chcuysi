$(function(){

   
   
   function showSelect() {
        var selectDiv = document.getElementById("mySelect");
        if (selectDiv.style.display === "none") {
          selectDiv.style.display = "block";
        } else {
          selectDiv.style.display = "none";
        }
   }
   
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
   

});