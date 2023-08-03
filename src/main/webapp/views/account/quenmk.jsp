<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quên mật khẩu</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

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
  

input[type=submit] {
    
     height:20px;padding: 0px 0px;background-color:#f2f2f2;color:black;
   
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
 
input[type=submit]:hover {
    color:orange;
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
  text-decoration: none;
}
a:hover {
	text-decoration: none;
	color: orange;
}
</style>
</head>
<body>
	<br><br><br><br><br>
	<div class="container">
   	<center><h2 style="color: red;">QUÊN MẬT KHẨU</h2></center>
   	<center><mark>${tbforgotPassword}</mark></center>
    <form action="/forgotPassword" method="post" enctype="multipart/form-data">
        <label>UserName</label>
        <input type="text" name="UserName" placeholder="UserName..." value="${username}">
 		 <label>Email</label><br>
        <div class="input-group mb-3">
  <input name ="email" type="email" class="form-control" value="${email}" placeholder="Email..." aria-label="Recipient's username" aria-describedby="button-addon2"/>
  
  <button formaction="/QuenMKsendOTP" class="btn btn-outline-secondary"  id="button-addon2">Gửi</button>
  
</div>
      	<input type="text" name="ma" placeholder="Nhập mã OTP...">
       <hr>
 		<a  class="button" href="/index">HỦY</a>
        <button class="button">Lấy lại mật khẩu</button>
        
    </form>
</div>
</body>
</html>