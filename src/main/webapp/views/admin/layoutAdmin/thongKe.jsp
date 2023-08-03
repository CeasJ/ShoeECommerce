<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

        
       <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Loại</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">THỜI GIAN</a>
  </li>
 
</ul>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
      <br>   
        <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">THƯƠNG HIỆU</th>
      <th scope="col">TỔNG GIÁ</th>
      <th scope="col">SỐ SẢN PHẨM</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var="item" items="${report}">
           <tr>
      <th scope="row">${item.group}</th>
      <td>${item.sum}</td>
      <td>${item.count}</td>
      
    </tr>
    </c:forEach>
   
    
  </tbody>
</table>
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
        <br>
        <form action="/report/year" method="post">
            <center><select name="date">
          <option>---CHỌN NĂM---</option>
           <c:forEach var="nam" items="${nam}">
               <option value="${nam}">${nam}</option>
           </c:forEach>
         </select>
          <button class="btn btn-warning">Seach</button>
         </center><br>
        </form>
        
        <table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">NGÀY MUA</th>
      <th scope="col">NGƯỜI MUA</th>
      <th scope="col">TỔNG TIỀN</th>
      <th scope="col">TRẠNG THÁI</th>
      
    </tr>
  </thead>
  <tbody>
    <c:forEach var="dh" items="${donhang}">
      <tr>
        <td>${dh.ngaymua}</td>
        <td>${dh.user.fullname}</td>
        <td>${dh.tongtien}</td>
        <td>${dh.trangthai}</td>
      </tr>
    </c:forEach>
   
     
  </tbody>
</table>
  </div>
 
</div>
   	    
   	   
   
    
      
	