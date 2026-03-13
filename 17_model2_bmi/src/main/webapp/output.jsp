<%@ page import="com.hm.bmi.Bean" %><%--
  Created by IntelliJ IDEA.
  User: soldesk
  Date: 2026-03-13
  Time: 오전 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>

        body {
            background: #f4f6f8;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0; /* 화면 꽉 차게 기본 여백 없애기 */
        }

        /* 전체 하얀색 박스 (입력 화면과 똑같은 디자인 적용) */
        .box {
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 320px;
            text-align: center; /* 사진과 글씨들을 예쁘게 가운데로 정렬 */
        }

        /* 제목 (BMI 결과) */
        .box h1 {
            font-size: 24px;
            font-weight: bold;
            margin-top: 0;
            margin-bottom: 20px;
            color: #333;
        }

        /* 업로드한 사진 */
        #img {
            border-radius: 8px; /* 사진 모서리도 박스처럼 살짝 둥글게 */
            margin-bottom: 20px; /* 사진 아래 띄어쓰기 */
            object-fit: cover; /* 사진이 찌그러지지 않게 보호 */
        }

        /* 이름, 키, 체중 정보 */
        .info {
            font-size: 16px;
            margin-bottom: 10px;
            color: #555;
        }

        /* BMI 수치와 최종 결과 */
        .bmi, .result {
            font-size: 18px;
            font-weight: bold;
            margin-top: 15px;
            color: #222;
        }

        /* 최종 결과 글씨에 포인트 주기 */
        .result {
            margin-bottom: 25px;
            color: #4CAF50; /* 버튼과 같은 초록색으로 예쁘게 통일! */
        }

        /* 다시하기 버튼 (입력 화면과 똑같이) */
        button {
            width: 100%;
            padding: 12px;
            border: none;
            background: #4CAF50;
            color: white;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
        }

        /* 버튼에 마우스 올렸을 때 */
        button:hover {
            background: #43a047;
        }

    </style>


</head>
<body>

<div class="box">
<% Bean rr = (Bean) request.getAttribute("bean");%>

        <h1>
  BMI 결과</h1>
  <div> <img id="img" style="width: 200px" src="uploadFile/<%= rr.getImgF() %>"> </div>

  <div class="info">이름 : <%= rr.getName() %></div>
  <div class="info">키 : <%= rr.getCm() %> cm</div>
  <div class="info">체중 : <%= rr.getKg() %> kg</div>

  <div class="bmi">BMI : <%= rr.getBmi() %></div>

  <div class="result">결과 : <%= rr.getResult() %></div>

  <button onclick="history.back()">다시하기</button>
</div>

</body>
</html>
