<%@ page import="com.hm.test.Result" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Result r = (Result) request.getAttribute("result");
        // 값만 받는곳.
%>

<hr>

<h1> -회원 정보 확인 -</h1>
<h1> 이름 : <%= r.getName()%></h1>
<h1> 나이 : <%= r.getAge()%></h1>
<h1> 성별 : <%= r.getGender()%></h1>
<h1>관심사 : <%= r.getHabit()%></h1>


</body>
</html>
