<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
    <style type="text/css">
    
    input[type=text],[type=password],[type=email] {
    width: 600px;
    
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
button{
background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
button:hover {
	 background-color: #45a049;
}
a{
 text-decoration:none;
}
a:hover {
	color: orange;
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
.select {
    width: 600px;
    
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}
    </style>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<meta charset="UTF-8">
<title>Sản phẩm</title>
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
    <div class="tim-kiem"> </div>			  
	<header>
		<tiles:insertAttribute name="menu"/>
	</header>
	
	<content>
        
          <tiles:insertAttribute name="body"/>
      
	</content>
<button onclick="topFunction()" id="myBtn" title="Go to top">^</button>
	<div class="lien-he">
		<p></p>
		<h3 style="text-align: center">THƯƠNG HIỆU GIÀY</h3>
		<img src="/images/thuonghieu.jpg" width="100%">
		<img src="/images/lienhe.png" width="100%">
	</div>
	<footer>
		<tiles:insertAttribute name="footer"/>
	</footer>
<script type="text/javascript" src="/js/js.js"></script>
	<script type="text/javascript">
	function myFunction() {
		  alert(${dk});
		}
	</script>
</body>
</html>