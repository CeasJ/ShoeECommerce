<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
			<div class="container-fluid">
				<a class="navbar-branch" href="/index">
					<img src="/images/logo.png" style="margin-left: 50px"height="60" width="210">
				</a>
					<button class="navbar-toggler" data-toggle="collapse" data-target="#navbarResponsive">
						<span class="navbar-toggler-icon"></span>
					</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						
						<li class="nav-item">
							<a class="nav-link " href="/admin/sanpham">SẢN PHẨM</a>
						</li>
						<li class="nav-item">
							<a class="nav-link " href="/admin/thuonghieu">THƯƠNG HIỆU</a>
						</li>
						<li class="nav-item">
							<a class="nav-link " href="/admin/user">NGƯỜI DÙNG</a>
						</li>
						<li class="nav-item">
							<a class="nav-link " href="/admin/thongke">THỐNG KÊ</a>
						</li>
						
						<li>
							<div class="dropdown">
    							<c:choose>
				             <c:when test="${empty sessionScope.user}">
				                <a style="border-color: #EEEEEE; background-color: #EEEEEE;text-decoration:none;" class="dropdown-toggle"  data-toggle="dropdown">Xin chào,Bạn</a>
				             </c:when>
				             <c:otherwise>
				                 <a style="border-color: #EEEEEE; background-color: #EEEEEE;text-decoration:none;" class="dropdown-toggle"  data-toggle="dropdown">Xin chào,${sessionScope.user.username}</a>
				             </c:otherwise>
				          </c:choose>
    					<ul class="dropdown-menu">
    					 <c:choose>
    					<c:when test="${empty sessionScope.user}">
    					      <li><a class="nav-link " href="/login">Đăng nhập</a></li>
      						<li><a class="nav-link " href="/registration">Đăng ký</a></li>
     						<li><a class="nav-link " href="/forgotPassword">Quên mật khẩu</a></li>
    					</c:when>
    					<c:otherwise>
    					     <c:if test="${sessionScope.user.vaitro == true}">
    					           <li><a class="nav-link " href="/admin/sanpham">Admin</a></li>
    					      </c:if>
    					     
    					     <li><a class="nav-link " href="/QLdonHang">Đơn đã mua</a></li>
    					    <li><a class="nav-link " href="/changePassword">Đổi mật khẩu</a></li>
    					    <li><a class="nav-link " href="/update">Cập nhật tài khoản</a></li>
    					    <hr>
    					    <li><a class="nav-link " href="/login">Đăng xuất</a></li>
    					</c:otherwise>
    					</c:choose>	
   						</ul>
  </div>		
							
						</li>

						
						
						<li class="nav-item">
							<a class="nav-link " href="/gioHang" ><img src="/images/giohang.png" width = "30px" height="30px">
        						
							</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>