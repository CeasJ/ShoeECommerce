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
                
   
				    <form:form action="/admin/user/add" method="POST" modelAttribute="account">
				        <form:errors path="Username" element="span" /><br>
				        <form:input type="text"  path="Username"  placeholder="UserName..."/><br>
				 		
				        <form:errors path="Fullname" element="span" /><br>
        <form:input type="text" path="Fullname"  placeholder="Nhập fullname..."/><br>
				        
				         
				        <form:errors path="Password" element="span" /><br>
                  <form:input type="password" path="Password"  placeholder="Password..."/><br>
				        
				       <form:errors path="Sdt" element="span" /><br>
                          <form:input path="Sdt" type="text" placeholder="SĐT..."/><br>
				        <form:errors path="Email" element="span" /><br>
				        <form:input type="email" path="Email" placeholder="Email..."/><br>
				        
				        <form:errors path="diachi" element="span" /><br>
				        <form:textarea path="diachi" rows="6" cols="70" placeholder="Địa chỉ..."></form:textarea>
				        <br>
				        <form:radiobutton path="vaitro" value="true" label="Quản Lý"/>
		                <form:radiobutton path="vaitro" value="false" label="Người Dùng"/>
				        <br>
				        <form:radiobutton path="trangthai" value="true" label="Hoạt động"/>
		                <form:radiobutton path="trangthai" value="false" label="Không hoạt động"/>
				       <hr>
				 		
				       <button formaction="/admin/user/add">THÊM</button>
				        <button formaction="/admin/user/update?id=${name}">SỬA</button>
				        <button formaction="/admin/user/clear">LÀM MỚI</button>
				        ${dk}
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
      <th scope="col">USERNAME</th>
      <th scope="col">HỌ VÀ TÊN</th>
      <th scope="col">PASSWORD</th>
       
      <th scope="col">SỐ ĐIỆN THOẠI</th>
      <th scope="col">EMAIL</th>
      <th scope="col">ĐỊA CHỈ</th>
      <th scope="col">VAI TRÒ</th>
      <th scope="col">Trạng Thái</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
     <c:forEach var="item" items="${users}">
         <tr>
      <th scope="row">${item.username}</th>
      <td>${item.fullname}</td>
      <td>${item.password}</td>
      
      <td>${item.sdt}</td>
      <td>${item.email}</td>
      <td>${item.diachi}</td>
      <td>${item.vaitro}</td>
      <td>${item.trangthai}</td>
      <td><a href="/admin/user/edit?id=${item.username}">Edit</a></td>
    </tr>
     </c:forEach>
    
    
  </tbody>
</table>
   
    
      
