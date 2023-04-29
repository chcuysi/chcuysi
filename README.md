### 

v.1  -------

＊ 재구매율 높은 상품 상세보기 (눈 아이콘) 클릭 시 상세 페이지에서 클릭한 상품 출력하기             </br>
＊ [ SAJO와 못난이 식재료들의 신선한 지구 프로젝트! ] 세션 추가 ( 카피라이트 + 그림 아이콘 포함 부분 ) </br>
＊ 카테고리 부분 폰트 색상 노란색으로 변경 </br>


v2 -------

＊ html -> jsp 파일 확장자 변환 </br>
＊ mybatis, spring 적용 </br>
  - db는 아직 안써서 mybatis-config부분은 비어있습니다. </br>
  - 특정 jsp에 이미지,css,js를 변경하거나 추가하거나 삭제해주시려면 
    resources 폴더 안에서 추가하거나 변경해주셔야합니다 </br>

＊ mvc (model, view, control) 패턴 적용 및 url처리 </br>
   - 앞으로 모든 a태그 url을 controller에 있는 requestMapping value값으로 주는 방식으로 처리해야합니다 </br>
   - sts에서 jsp파일 구동시킬 때 무조건 webapp 안에  index.jsp 로 실행해야합니다. </br>
     그 외 jsp들은 web inf / views  (보안폴더) 에 들어가있어서 무조건 404에러뜹니다. </br>
     
   - 아직 html인 파일들이 있는데 jsp로 만드실 때 </br>
    html 내용 복사하신다음 jsp 새로 만들어서 거기다가 그대로 복붙하시고, </br>
     ctrl + F 누르셔서 </br>
     Find 칸에 assets,</br>
     Replace with 칸에 ${pageContext.request.contextPath}/resources 넣으시고  </br>
     replace all 하시면 됩니다.</br>
     

<!--
**chcuysi/chcuysi** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
