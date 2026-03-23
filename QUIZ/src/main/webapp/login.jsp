<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>

  <title>Exam Portal</title>

  <style>

    body{
      font-family:Arial;
      background:#f4f4f4;
    }

    .box{
      width:350px;
      margin:120px auto;
      background:white;
      padding:30px;
      border-radius:10px;
      box-shadow:0px 4px 10px rgba(0,0,0,0.2);
      text-align:center;
    }

    button{
      background:#007bff;
      color:white;
      border:none;
      padding:10px 20px;
      border-radius:5px;
    }

  </style>

</head>

<body>

<div class="box">

  <h2>Exam Portal</h2>

  <form action="exam.jsp">

    <input type="text" name="name" placeholder="Enter Name" required>

    <br><br>

    <button type="submit">Start Exam</button>

  </form>

</div>

</body>
</html>