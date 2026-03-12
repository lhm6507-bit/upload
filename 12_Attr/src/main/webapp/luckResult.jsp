<%@page import="com.hm.attr.Luck"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
			Luck l = (Luck)request.getAttribute("myluck");
%>
 <h1>운세</h1>

	<div>
		<div>이름 : <%= l.getName() %> </div>
		<div>좋아하는 숫자 : <%=l.getNum() %> </div>
		<div>운세 : <%= l.getScore() %> </div>
	
	
	
	</div>


</body>
</html>