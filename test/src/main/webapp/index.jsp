<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%--
            점심값 뿜빠이. (카드깡)
            [입력화면]
            낸사람 : sw

            같이 먹은사람 : 4명
            결제 금액 : 44000원
            [결과 화면]
            4명이서 44000원 나왔네요.
            한 사람당 11000원. sw에게 카뱅송금 하세요!
--%>
<form action="hello-servlet">
    <div> 낸사람 : <input name="payname"> </div>
    <div> 같이 먹은사람 : <input name="people"> </div>
    <div> 결제 금액 : <input name="total"> </div>
    <div> <button>뿜빠이</button> </div>


</form>


</body>
</html>