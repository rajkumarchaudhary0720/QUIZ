<%@ page contentType="text/html;charset=UTF-8" %>

<%
  Integer score = (Integer) session.getAttribute("score");
  Integer index = (Integer) session.getAttribute("index");

  session.invalidate();
%>

<!DOCTYPE html>
<html>
<head>

  <title>Result</title>

  <style>

    body{
      font-family:Arial;
      text-align:center;
      background:cornflowerblue;
    }

    .box{
      width:400px;
      margin:120px auto;
      background:white;
      padding:30px;
      border-radius:10px;
      box-shadow:0px 3px 10px rgba(0,0,0,0.2);
    }

  </style>

</head>

<body>

<div class="box">

  <h2>Exam Finished</h2>

  <h1>Your Score: <%= score %> / 20</h1>

  <a href="login.jsp">Take Exam Again</a>

</div>

</body>
</html>