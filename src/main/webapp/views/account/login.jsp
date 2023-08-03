<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<style>
body{
	background-image:url("images/nen.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
	.container {
    width: 30%;
    margin: auto;
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
  	top:60px;
    left :80px;
}
    input[type="text"] {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}
  input[type="password"] {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
 
input[type=submit]:hover {
    background-color: #45a049;
}
.button{
background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
.button:hover {
color: white;
	 background-color: #45a049;
}
a{
 text-decoration:none;
}
a:hover {
	color: orange;
}
</style>
</head>
<body>
<br><br><br><br><br><br><br>
	<div class="container">
   	<center><h2 style="color: red;">ĐĂNG NHẬP</h2></center>
   	 <center><mark>${dn}</mark></center>
   	
    <form action="/login" method="POST">
        <label>UserName</label>
        <input type="text" name="UserName" placeholder="UserName...">
 		 <label>Password</label>
        <input type="password" name="password" placeholder="Password...">
      	<a href="/forgotPassword">Quên mật khẩu</a>
       <hr>
 		 <a  class="button" href="/index">HỦY</a>
       <button class="button">ĐĂNG NHẬP</button>
        <button class="button" formaction="/registration">ĐĂNG KÝ</button>
    </form>
    <br>
   
    
</div>
</body>
</html>