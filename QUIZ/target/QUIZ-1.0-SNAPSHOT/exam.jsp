<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%
  String name = request.getParameter("name");

  Integer index = (Integer) session.getAttribute("index");
  Integer score = (Integer) session.getAttribute("score");

  if(index == null){
    index = 0;
    score = 0;
    session.setAttribute("score",0);
  }

  String[][] questions = {

          {"Which company created Java?","Microsoft","Sun Microsystems","Google","Apple","2"},
          {"Which language is used for Android?","Python","Java","C++","Swift","2"},
          {"Full form of CPU?","Central Process Unit","Central Processing Unit","Control Processing Unit","Computer Processing Unit","2"},
          {"HTML stands for?","Hyper Text Markup Language","High Text Machine Language","Hyperlinks Text Mark Language","None","1"},
          {"Which is an OS?","Windows","Oracle","Python","HTML","1"},
          {"Founder of Microsoft?","Bill Gates","Steve Jobs","Elon Musk","Mark","1"},
          {"Which is programming language?","Java","Chrome","Windows","Linux","1"},
          {"Software means?","Programs","Keyboard","Mouse","Monitor","1"},
          {"Brain of computer?","CPU","RAM","ROM","GPU","1"},
          {"Java is?","Programming Language","Hardware","Browser","OS","1"},
          {"Which company makes iPhone?","Apple","Samsung","Sony","Google","1"},
          {"Database example?","MySQL","Chrome","Java","Linux","1"},
          {"Which is browser?","Chrome","Windows","Java","Linux","1"},
          {"Which is mobile OS?","Android","Intel","Python","Oracle","1"},
          {"Who founded Apple?","Steve Jobs","Bill Gates","Mark","Larry","1"},
          {"Which language for web?","HTML","CPU","RAM","Mouse","1"},
          {"Which software for coding?","IDE","Monitor","Keyboard","Mouse","1"},
          {"Which device stores data?","Hard Disk","Mouse","Printer","Scanner","1"},
          {"RAM stands for?","Random Access Memory","Read Access Memory","Run Access Memory","None","1"},
          {"AI means?","Artificial Intelligence","Automatic Input","Advanced Internet","None","1"}

  };

  if(request.getParameter("answer") != null){

    int ans = Integer.parseInt(request.getParameter("answer"));

    if(ans == Integer.parseInt(questions[index][5])){
      score++;
    }

    index++;

    session.setAttribute("score",score);
  }

  session.setAttribute("index",index);

  if(index == questions.length){

    response.sendRedirect("result.jsp");
    return;

  }

%>

<!DOCTYPE html>
<html>
<head>

  <title>Exam</title>

  <style>

    body{
      font-family:Arial;
      background:#f4f4f4;
    }

    .box{
      width:600px;
      margin:80px auto;
      background:white;
      padding:30px;
      border-radius:10px;
      box-shadow:0px 3px 10px rgba(0,0,0,0.2);
    }

    button{
      background:#28a745;
      color:white;
      padding:10px 20px;
      border:none;
      border-radius:5px;
    }

  </style>

</head>

<body>

<div class="box">

  <h3>Student: <%= name %></h3>

  <h2>Question <%= index+1 %> / 20</h2>

  <form method="post">

    <p><%= questions[index][0] %></p>

    <input type="radio" name="answer" value="1" required> <%= questions[index][1] %> <br>
    <input type="radio" name="answer" value="2"> <%= questions[index][2] %> <br>
    <input type="radio" name="answer" value="3"> <%= questions[index][3] %> <br>
    <input type="radio" name="answer" value="4"> <%= questions[index][4] %> <br>

    <br>

    <button type="submit">Next</button>

  </form>

</div>

</body>
</html>