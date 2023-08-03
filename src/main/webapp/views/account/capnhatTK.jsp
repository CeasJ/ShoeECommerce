<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
  input[type="email"] {
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
</style>
<meta charset="UTF-8">
<title>Cập nhật tài khoản</title>
</head>
<body>
 <br><br><br><br><br>
	<div class="container">
   	<center><h2 style="color: red;">CẬP NHẬT TÀI KHOẢN</h2></center>
   	<center><mark>${capNhat}</mark></center>
    <form action="/update" method="POST">
      <label>Username</label>
      <input type="text" name="usename" value="${User.getUsername()}" readonly>
        <label>Mật khẩu</label>
        <input type="text" name="password" value="${User.getPassword()}" placeholder="Mật khẩu...">
 		 <label>Email</label>
        <input type="email" name="email" value="${User.getEmail()}" placeholder="Email...">
      	 <label>Fullname</label>
        <input type="text" name="fullname" value="${User.getFullname()}" placeholder="FullName...">
        <label>Số điện thoại</label>
        <input type="text" name="sdt" value="${User.getSdt()}" placeholder="Số điện thoại...">
        
        <textarea name="diachi" rows="6" cols="60" placeholder="Địa chỉ...">${User.getDiachi()}</textarea>
       <hr>
 		<a  class="button" href="/index">HỦY</a>
        <button class="button">Cập nhật</button>
        <button class="button" formaction="/login">Đăng nhập</button>
    </form>
   

</div>
</body>
</html>