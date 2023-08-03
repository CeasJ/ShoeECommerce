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
                
   
				    <form:form action="/admin/thuonghieu/add" method="POST" modelAttribute="thuonghieu">
				        <label>Id</label><br>
				        <form:input type="text" path="id"  /><br>
				 		 <label>Tên thương hiệu</label><br>
				         <form:input type="text" path="name"/><br>
				         
				       <hr>
				 		
				       <button>THÊM</button>
				        <button formaction="/admin/thuonghieu/update?idTh=${name}">SỬA</button>
				        <button  formaction="/admin/thuonghieu/delete?idTh=${name}">XÓA</button>
				        ${tbth}
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
      <th scope="col">TÊN THƯƠNG HIỆU</th>
        <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
    <c:forEach var="sp" items="${sp.content}">
      <th scope="row">${sp.id}</th>
      <td>${sp.name}</td>
    
      <td><a href="/admin/thuonghieu/edit?id=${sp.id}">Edit</a></td>
    </tr>
    </c:forEach>
   
  </tbody>
</table>
    <center>
       <a class="snip1582" href="/admin/thuonghieu?p=0">First</a>
    
     
         <a class="snip1582" href="/admin/thuonghieu?p=${sp.number-1}">Previous</a>
    
    
            <a class="snip1582" href="/admin/thuonghieu?p=${sp.number+1}">Next</a>
            <a class="snip1582" href="/admin/thuonghieu?p=${sp.totalPages-1}">Last</a>
    
</center>
    
      
	