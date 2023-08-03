<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
<meta charset="UTF-8">
<title>Sneaker</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="tim-kiem">
		<div style="float: right;"></div>
	<header>
		<tiles:insertAttribute name="menu"/>
		
	</header>
	<div class="wraper">
            <tiles:insertAttribute name="slide"/>
    </div>	
	<content>
		<tiles:insertAttribute name="body"/>
	</content>
<button onclick="topFunction()" id="myBtn" title="Go to top">^</button>
	<div class="lien-he">
		<p></p>
		<h3 style="text-align: center">THƯƠNG HIỆU GIÀY</h3>
		<img src="images/thuonghieu.jpg" width="100%">
		<img src="images/lienhe.png" width="100%">
	</div>
	<footer>
		<tiles:insertAttribute name="footer"/>
	</footer>
<script type="text/javascript" src="js/js.js"></script>
	
</body>
</html>