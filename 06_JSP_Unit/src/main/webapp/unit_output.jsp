<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.cm{
background:#cfe2ff;
}

.m{
background:#d4edda;
}

.c{
background:#ffe5b4;
}

.km{
background:#e2d5ff;
}

.box{
padding:40px;
width:300px;
text-align:center;
border-radius:10px;
margin:auto;
margin-top:100px;
}

button{
padding:10px 20px;
border:none;
border-radius:6px;
font-size:16px;
cursor:pointer;
margin-top:20px;
}

/* 단위별 버튼 색 */

button.cm{
background:#5a8bd6;
color:white;
}

button.m{
background:#4caf50;
color:white;
}

button.c{
background:#ff9800;
color:white;
}

button.km{
background:#9c27b0;
color:white;
}

button:hover{
opacity:0.85;
}
</style>
</head>
<body>

<%
		
	double value =	Double.parseDouble(request.getParameter("value"));
		String unit = request.getParameter("unit");
		double result = 0;
		
		if(unit.equals("cm")){
			result = value * 0.3937;
		}else if(unit.equals("m")){
			result = value * 0.3025;
		}
		else if(unit.equals("c")){
			result = value * 1.8 + 32;
		
		}else if(unit.equals("km")){
			result = value *  0.621371;
		}
%>

<%
String colorClass = "";

if(unit.equals("cm")){
    colorClass = "cm";
}
else if(unit.equals("m")){
    colorClass = "m";
}
else if(unit.equals("c")){
    colorClass = "c";
}
else if(unit.equals("km")){
    colorClass = "km";
}
%>
<%

String beforeunit = "";
String afterunit = "";

if(unit.equals("cm")){
    beforeunit = "cm";
    afterunit = "inch";
}
if(unit.equals("m")){
    beforeunit = "㎡";
    afterunit = "평";
}
if(unit.equals("c")){
    beforeunit = "℃";
    afterunit = "℉";
}
if(unit.equals("km")){
    beforeunit = "km/h";
    afterunit = "mi/h";
}

%>
<div class="box <%=colorClass%>">

		<h1>변환결과 </h1>
		<h1><%=value %> <%=beforeunit %> </h1>
		<h1>↓</h1>
		<h1> <%= String.format("%.1f", result) %> <%=afterunit %> </h1>
		<button class="<%=colorClass%>" onclick="location.href='test.html'">돌아가기</button>
</div>

</body>
</html>