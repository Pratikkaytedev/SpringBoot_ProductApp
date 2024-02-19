<%@page import="com.spring.model.Product"%>
<%@page import="java.util.List"%>
<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.spring.dao.ProductDao"%>
<html>

<head>
<%@include file="./base.jsp"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>

<body>

	<div class="container mt-3">

		<div class="row">

			<div class="col-md-12">

				<h1 class="text-center mb-3">Welcome to Product App</h1>



				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">Sr No.</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>


						<%-- <c:forEach items="${list }" var="p">
  <tr>
      <th scope="row">${p.id }</th>
     
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td class="&#8377; &#x20B9">${p.price }</td>
    </tr>
  
  
  
  </c:forEach> --%>



						<%
						List<Product> list = (List<Product>) request.getAttribute("list");

						for (Product p : list) {
						%>
						<tr>
							<th scope="row"><%=p.getId()%></th>

							<td><%=p.getName()%></td>
							<td><%=p.getDescription()%></td>
							<td><%=p.getPrice()%></td>
							<td><a href="delete/<%=p.getId()%>"><i
									class="fas fa-trash"></i></a> <a href="update/<%=p.getId()%>"><i
									class="fas fa-user-edit"></i></a></td>
						</tr>

						<%
						}
						%>



					</tbody>
				</table>

				<div class="container text-center">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>

				</div>


			</div>

		</div>


	</div>
</body>
</html>
