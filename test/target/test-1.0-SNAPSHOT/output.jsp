<%@ page import="com.hm.test.Result" %><%--
  Created by IntelliJ IDEA.
  User: soldesk
  Date: 2026-03-12
  Time: 오후 6:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  Result result = (Result)request.getAttribute("result");
%>

    <div> <%= result.getPeople()%>명이서 <%= result.getTotal()%> 원 나왔네요</div>
    <div> 한사람 당<%= result.getPay()%>원. <%= result.getPayname()%>에게 카뱅송금 하세요!</div>

</body>
</html>
