<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

        
       <table id="cart" class="table table table-condensed">
          <tr>
          <td></td>
           <td></td>
            <td></td>
             <td></td>
              <td></td>
              <td>
                
   
				    <form:form action="/admin/sanpham/add" method="POST" modelAttribute="product" enctype="multipart/form-data">
				        <label>Id sản phẩm</label><br>
				        <form:input type="text" path="idSP"  placeholder="id Sản phẩm..." disabled="true"/><br>
				 		 <label>Tên sản phẩm</label><br>
				         <form:input type="text" path="TenSP" placeholder="Tên Sản phẩm..."/><br>
				         <label>Chọn ảnh</label><br>
				         <input type="file" name="file" ><br><br>
				          <label>Thương hiệu</label>
				           <select name="thuonghieu">
					         <option value="">---CHỌN THƯƠNG HIỆU---</option>
					           <c:forEach var="th" items="${th}">
					             <option  value="${th.id}">${th.name}</option>
					           </c:forEach>
					          </select>
					         
					         <label>Loại</label>
				          <select name="loai">
					         <option value="">---CHỌN LOẠI---</option>					           
					             <option value="true">Nam</option>
					             <option value="false">Nữ</option>					       
					         </select><br>
					         
				      	 <label>Số lượng</label><br>
				         <form:input type="number" path="sl" /><br>
				         <label>Giá</label><br>
				         <form:input type="text" path="gia"  placeholder="Giá..."/>
				       <hr>
				 		
				       <button>THÊM</button>
				        <button formaction="/admin/sanpham/update?id=${name}">SỬA</button>
				        <button  formaction="/admin/sanpham/delete?id=${name}">XÓA</button>
				        ${tbSP}
				    </form:form>
				    <br>
              </td>
              <td>
		             
              </td>
              <td></td>
               <td></td>
                <td></td>
                 <td></td>
                  <td></td>
                   
          </tr>
       </table>
   	    
   	    <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">TÊN SẢN PHẨM</th>
      <th scope="col">HÌNH SẢN PHẨM</th>
       <th scope="col">LOẠI</th>
       <th scope="col">THƯƠNG HIỆU</th>
      <th scope="col">SỐ LƯỢNG</th>
      <th scope="col">GIÁ</th>
       <th scope="col">NGÀY TẠO</th>
        <th scope="col">GHI CHÚ</th>
        <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
    <c:forEach var="sp" items="${sp.content}">
      <th scope="row">${sp.idSP}</th>
      <td>${sp.tenSP}</td>
      <td>${sp.hinhSP}</td>
      <td>${sp.loai}</td>
      <td>${sp.thuonghieu.id}</td>
      <td>${sp.sl}</td>
      <td>${sp.gia}</td>
      <td>${sp.ngaytao}</td>
      <td>${sp.ghichu}</td>
      <td><a href="/admin/sanpham/edit?id=${sp.idSP}">Edit</a></td>
    </tr>
    </c:forEach>
   
  </tbody>
</table>
    <center>
       <a class="snip1582" href="/admin/sanpham?p=0">First</a>
    
     
         <a class="snip1582" href="/admin/sanpham?p=${sp.number-1}">Previous</a>
    
    
            <a class="snip1582" href="/admin/sanpham?p=${sp.number+1}">Next</a>
            <a class="snip1582" href="/admin/sanpham?p=${sp.totalPages-1}">Last</a>
    
</center>
    
      
	