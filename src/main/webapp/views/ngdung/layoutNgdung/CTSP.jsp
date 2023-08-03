<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!DOCTYPE html>
<html>
<head>

 
<meta charset="UTF-8">

<link rel="stylesheet" href="css/styleSP.css">
</head>
<body>
	<div class="container">
		<table width="100%" style="align-content: center">
			<tr>
				<td width="40%">
					<div class="bg">
					<img src="images/${ctsp.getHinhSP()}" width = "10" height="20">
					</div>
				</td>
				<td width="60%"> 
					<h2><strong>${ctsp.getTenSP()}</strong></h2>
					
					<p><strong>Giá sản phẩm:</strong>&ensp;<strong style="color: red">${gia} VNĐ</strong> </p>
				<div class="chi-tiet">		
					<p>
            			&emsp;<i class="fa fa-map-marker" aria-hidden="true"></i>&emsp;<span>Mua sản phẩm tại showroom của <strong>sneaker</strong></span>
            		</p>
					
					<p>
            			&emsp;<i class="fa fa-truck" aria-hidden="true"></i>&emsp;<span>Miễn phí vận chuyển trên toàn quốc</span>
					</p>
					<p>
            			&emsp;<i class="fa fa-heartbeat" aria-hidden="true"></i>&emsp;<span>Bảo hành chính hãng</span>
					</p>
					<p>
            			&emsp;<i class="fa fa-gift" aria-hidden="true"></i>&emsp;<span>Quà tặng hấp dẫn khi mua kèm sản phẩm</span>
					</p>
					<p>
            			&emsp;<i class="fa fa-refresh" aria-hidden="true"></i>&emsp;<span>Đổi hàng miễn phí trong 7 ngày khi chưa sử dụng</span>
					</p>
					</div>
					<p></p>
					<form action="/gioHang?id=${ctsp.getIdSP()}" method="post">
					<button style="background-color: black; color: white; margin-left: 200px">THÊM VÀO GIỎ</button>				
			           </form>
				</td>
			</tr>
		</table>				
	</div>
	
<div class="container">
	<div class="bg-table">
		<table>
			<tr>
				<td width="5%"></td>
				<td width="30%">
					<p><strong>Giới thiệu sản phẩm</strong></p>
				</td>
				<td width = "30%"></td>
				<td width="5%"></td>
				<td width = "40%">
				</td>
			</tr>
			<tr>
				<td></td>
				<td class="chi-tiet-1">
					<p><strong>Bảo hành chính hãng</strong></p>
					<p><strong>Chống nước</strong></p>
					<p><strong>Đế cao</strong></p>
					<p><strong>Giới tính</strong></p>
					<p><strong>Chất liệu</strong></p>
					<p><strong>Loại giày</strong></p>
					<p><strong>Size</strong></p>
					<p><strong>Thương hiệu</strong></p>
					<p><strong>Xuất xứ</strong></p>
				</td>
				<td  class="chi-tiet-2">
					<p>Giày thời trang</p>
					<p>Vải cao cấp</p>
					<p>Sneaker</p>
					<p>Nam</p>
					<p>Đế khâuu</p>
					<p>Full box</p>
					<p>Đế cao 2-3cm</p>
					<p>Nike</p>
					<p>Việt Nam</p>
				</td>
				<td></td>
				<td>
					<img src="images/baohanh.jpeg" width="500px" height="550px">
				</td>
			</tr>
		</table>
	</div>
</div>
	
		
</div>
	<button onclick="topFunction()" id="myBtn" title="Go to top">^</button>
	<div class="lien-he">
		<img src="images/lienhe.png" width="100%">
	</div>
	