<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

		<p></p>
		<h3 style="text-align: center">GIÀY CHÍNH HÃNG THỜI TRANG</h3>
					<p style="text-align: center">Chúng tôi cam kết mang lại sản phẩm chất lượng cao & thời tranng đến cho khách hàng khi mua hàng tại shop chúng tôi</p>
						<img src="images/Capture.PNG" width="100%" height="140px">;
		<section>
				<div class="container">
				 	
						<div class="row">
						<c:forEach var="item" items="${thuonghieu.content}">
						     <div class="col-md-3 col-sm-12">
								<div class="card">
									<a href="/sp?id=${item.getIdSP()}"><img class="card-img-top" src="images/${item.getHinhSP()}" height="200px"></a>
									<p style="text-align: center">${item.getTenSP()}</p>
									<p style="text-align: center;color:red;"><strong>${gia} VNĐ</strong></p>
									<form action="" method="post">
									<center><button class="btn btn-primary"
									 formaction="/ThemthuonghieuVaoGio?id=${item.getIdSP()}&ThuongHieu=${item.getThuonghieu().getId()}">Thêm vào giỏ</button></form></center>
								<br>
								
								</div>
							</div>
						</c:forEach>
							
							</div>
					
				
					<center>
       <a class="snip1582" href="?p=0&ThuongHieu=${idThuongHieu}">First</a>
    
     
         <a class="snip1582" href="?p=${thuonghieu.number-1}&ThuongHieu=${idThuongHieu}">Previous</a>
    
    
            <a class="snip1582" href="?p=${thuonghieu.number+1}&ThuongHieu=${idThuongHieu}">Next</a>
            <a class="snip1582" href="?p=${thuonghieu.totalPages-1}&ThuongHieu=${idThuongHieu}">Last</a>
    
</center>
				</div>				
			</section>	
		
				
	