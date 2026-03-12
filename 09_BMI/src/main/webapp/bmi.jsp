<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.nio.file.Path"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 결과</title>

<style>

body{
background:linear-gradient(135deg,#eef2f7,#d9e4f5);
font-family:'Segoe UI',sans-serif;
display:flex;
justify-content:center;
align-items:center;
height:100vh;
margin:0;
}

/* 카드 */
.box{
background:white;
padding:45px;
width:340px;
border-radius:16px;
box-shadow:0 15px 35px rgba(0,0,0,0.15);
text-align:center;
transition:0.3s;
}

.box:hover{
transform:translateY(-5px);
}

/* 제목 */
h1{
margin-bottom:25px;
color:#333;
}

/* 정보 줄 */
.info{
background:#f5f7fb;
padding:10px;
border-radius:8px;
margin:8px 0;
font-size:15px;
}

/* BMI 강조 */
.bmi{
margin-top:15px;
font-size:22px;
font-weight:bold;
color:#2ecc71;
}

/* 결과 */
.result{
margin-top:12px;
font-size:18px;
font-weight:bold;
}

/* 다시하기 버튼 */
.btn{
margin-top:20px;
display:inline-block;
padding:10px 18px;
background:#4CAF50;
color:white;
text-decoration:none;
border-radius:8px;
font-size:14px;
transition:0.2s;
}

.btn:hover{
background:#43a047;
}
button{
margin-top:20px;
padding:10px 20px;
border:none;
border-radius:8px;
background:#4CAF50;
color:white;
font-size:15px;
cursor:pointer;
transition:0.2s;
}

button:hover{
background:#43a047;
transform:scale(1.05);
}

button:active{
transform:scale(0.98);
}

</style>

</head>

<body>

<%


String path = request.getServletContext().getRealPath("uploadFile");
System.out.println(path);

MultipartRequest mr = new MultipartRequest(
        request,
        path,
        1024 * 1024 * 20,
        "utf-8",
        new DefaultFileRenamePolicy()
);





String name = mr.getParameter("name");
int cm = Integer.parseInt(mr.getParameter("cm"));
int kg = Integer.parseInt(mr.getParameter("kg"));

String imgF = mr.getFilesystemName("imgFile");

String result = "";

double m = cm / 100.0;
double bmi = kg / (m * m);

if (bmi < 18.5) {
    result = "저체중";
}
else if (bmi < 23.0) {
    result = "정상";
}
else if (bmi < 25.0) {
    result = "비만전단계";
}
else if (bmi < 30.0) {
    result = "1단계 비만";
}
else if (bmi < 35.0) {
    result = "2단계 비만";
}
else {
    result = "3단계 비만";
}
%>

<div class="box">

<h1>BMI 결과</h1>
<div> <img id="img" style="width: 200px" src="uploadFile/<%=imgF %>"> </div>

<div class="info">이름 : <%= name %></div>
<div class="info">키 : <%= cm %> cm</div>
<div class="info">체중 : <%= kg %> kg</div>

<div class="bmi">BMI : <%= String.format("%.1f", bmi) %></div>

<div class="result">결과 : <%= result %></div>

<button onclick="location.href='BMI.html'">다시하기</button>
</div>

</body>
</html>