<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<p></p>
		<h3 style="text-align: center">GIÀY CHÍNH HÃNG THỜI TRANG</h3>
					<p style="text-align: center">Chúng tôi cam kết mang lại sản phẩm chất lượng cao & thời tranng đến cho khách hàng khi mua hàng tại shop chúng tôi</p>
						<img src="images/Capture.png" width="100%" height="140px">;
		<section>
				<div class="container">
				 	<h3 style="text-align: center">SẢN PHẨM NỔI BẬT</h3>
						
					<div class="row mb-3">
						<c:forEach var="item" items="${spNoiBac.content}">
						     <div class="col-md-3 col-sm-12 mb-4">
								<div class="card">
									<a href="/sp?id=${item.getIdSP()}"><img class="card-img-top" src="images/${item.getHinhSP()}" ></a>
									<p style="text-align: center">${item.getTenSP()}</p>
									<p style="text-align: center;color:red;"><strong>${giaNB} VNĐ</strong></p>
									<form action="" method="post">
									<center><button class="btn btn-primary" formaction="ThemVaoGioindex?id=${item.getIdSP()}">Thêm vào giỏ</button></form></center>
								<br>
								</div>
							</div>
						</c:forEach>		
							</div>			 
				</div>				
			</section>	
		<section class="section-1">
						<div class="container">
							<p></p>
							<h3 style="text-align: center">GIÀY NAM</h3>
								<div class="row">
						<c:forEach var="item" items="${spNam.content}">
						     <div class="col-md-3 col-sm-12 mb-4">
								<div class="card">
									<a href="/sp?id=${item.getIdSP()}"><img class="card-img-top" src="images/${item.getHinhSP()}" ></a>
									<p style="text-align: center">${item.getTenSP()}</p>
									<p style="text-align: center;color:red;"><strong>${giaNam} VNĐ</strong></p>
									<form action="" method="post">
									<center><button class="btn btn-primary mb-4" formaction="?id=${item.getIdSP()}">Thêm vào giỏ</button></form></center>
								</div>
							</div>
						</c:forEach>
							
							</div>
							
							<!----Hiển Thị Thêm--->
							<div class="container-fluid">
										<div class="row justify-content-md-center">
											<div class="col-md-2">
												<div class="input-group ml-2">
													<a href="/Nam?loai=true"><button class="btn btn-secondary">Hiển Thị Thêm</button></a>
												</div>
											</div>
				
										</div>
									</div>
						</div>
					</section>
				<section class="section-2">
						<div class="container">
							<p></p>
							<h3 style="text-align: center">GIÀY NỮ</h3>
								<div class="row">
						<c:forEach var="item" items="${spNu.content}">
						     <div class="col-md-3 col-sm-12 mb-4">
								<div class="card">
									<a href="/sp?id=${item.getIdSP()}"><img class="card-img-top" src="images/${item.getHinhSP()}" height="200px"></a>
									<p style="text-align: center">${item.getTenSP()}</p>
									<p style="text-align: center;color:red;"><strong>${giaNu} VNĐ</strong></p>
									<form action="" method="post">
									<center><button class="btn btn-primary" formaction="?id=${item.getIdSP()}">Thêm vào giỏ</button></form></center>
								<br>
								</div>
							</div>
						</c:forEach>
							
							</div>
									<div class="container-fluid">
										<div class="row justify-content-md-center">
											<div class="col-md-2">
												<div class="input-group">
													<a href="/Nu?loai=true"><button class="btn btn-secondary">Hiển Thị Thêm</button></a>
												</div>
											</div>
										</div>
									</div>
						</div>
					</section>