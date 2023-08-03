<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Đăng ký</title>
<style>
body{
	background-image:url("images/nen.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
	.container {
    width: 40%;
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
    text-decoration: none;
}
.button:hover {
	 background-color: #45a049;
	 color: white;
}
 [id$=".errors"] {
	color: red;
	border: 1px dotted rgb(211, 77, 219);
	font-style: italic;
	border-radius: 5px;
	padding: 3px;
	margin: 5px;
	display: inline-block;
	
}
p{
    color: red;
	
	font-style: italic;
	border-radius: 5px;
	padding: 3px;
	margin: 5px;
	display: inline-block;
}
</style>
</head>
<body>
	<br><br>
	<div class="container">
	<p>${dk }</p>
   	<center><h2 style="color: red;">ĐĂNG KÝ</h2></center>
    <form:form action="/registration" method="post" enctype="multipart/form-data"
     modelAttribute="account">
       <form:errors path="Username" element="span" /><br>
       <p>${user}</p>
        <form:input type="text"  path="Username"  placeholder="UserName..."/>
         
 		 <form:errors path="Password" element="span" /><br>
        <form:input type="password" path="Password"  placeholder="Password..."/>
       
      	<p>${loiPass}</p>
        <form:input type="password" path="" value="${passNL}" name="password2" placeholder="Nhập lại Password..."/>
        
       <form:errors path="Fullname" element="span" /><br>
        <form:input type="text" path="Fullname"  placeholder="Nhập fullname..."/>
       <p>${email}</p>
       <p>${otp}</p>
        <form:errors path="Email" element="span" /><br>
       <div class="input-group mb-3">
  <form:input path="Email"  type="email" class="form-control" placeholder="Email..." aria-label="Recipient's username" aria-describedby="button-addon2"/>
  
  <button formaction="/DKsendOTP" class="btn btn-outline-secondary"  id="button-addon2">Gửi</button>
  
</div>
       
        <p>${maXN}</p>
        <form:input path="" name="maXN" type="text"  placeholder="Mã xác nhận..."/>
         <p>${sdt}</p>
       <form:errors path="Sdt" element="span" /><br>
        <form:input path="Sdt" type="text" placeholder="SĐT..."/>
        
          <form:errors path="diachi" element="span" /><br>
         <form:textarea path="diachi" rows="6" cols="70" placeholder="Địa chỉ..."></form:textarea>
         
       <hr>
 		 <a  class="button" href="/index">HỦY</a>
      <button class="button">ĐĂNG KÝ</button>
        <button class="button" formaction="/login">ĐĂNG NHẬP</button>
        
    </form:form>
</div>
</body>
</html>