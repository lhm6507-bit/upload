<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>

        body{
            background:#f4f6f8;
            font-family:Arial, sans-serif;
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;
        }

        /* 전체 박스 */
        form > div{
            background:white;
            padding:40px;
            border-radius:12px;
            box-shadow:0 8px 20px rgba(0,0,0,0.1);
            width:320px;
        }

        /* 제목 */
        form > div > div:first-child{
            font-size:24px;
            font-weight:bold;
            text-align:center;
            margin-bottom:25px;
        }

        /* 입력 줄 */
        form > div > div{
            margin-bottom:15px;
        }

        /* input */
        input{
            width:100%;
            padding:10px;
            margin-top:5px;
            border:1px solid #ccc;
            border-radius:6px;
            font-size:14px;
        }

        /* 버튼 */
        button{
            width:100%;
            padding:12px;
            border:none;
            background:#4CAF50;
            color:white;
            font-size:16px;
            border-radius:6px;
            cursor:pointer;
        }

        /* 버튼 hover */
        button:hover{
            background:#43a047;
        }

    </style>
</head>
<body>

<form action="hello-servlet" method="post" enctype="multipart/form-data">
    <div>

        <div>BMI검사</div>
        <div>이름 <input name="name"> </div>
        <div>키 (CM) <input type="number" name="cm"> </div>
        <div>체중 (KG) <input type="number" name="kg"> </div>
        <div class="items">
            <div>사진</div>
            <div>
                <input type="file" name="imgFile">
            </div>
        </div>
        <div> <button>계산</button> </div>

</body>
</html>