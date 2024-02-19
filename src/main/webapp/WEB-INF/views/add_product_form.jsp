<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
    <div class="container mt-5">
        <h2>Add a New Product</h2>
        <form action="handle-product" method="post">
            <div class="mb-3">
                <label for="productName" class="form-label">Product Name</label>
                <input type="text" class="form-control" name="name" placeholder="Enter product name">
            </div>
            <div class="mb-3">
                <label for="productDescription" class="form-label">Product Description</label>
                <textarea class="form-control" name="description" rows="4" placeholder="Enter product description"></textarea>
            </div>
            <div class="mb-3">
                <label for="productPrice" class="form-label">Product Price</label>
                <input type="text" class="form-control" name="price" placeholder="Enter product price">
            </div>
            
            <div class="container text-center">
            <a href="${pageContext.request.contextPath }/" class="btn btn-danger">Back</a>
            <button type="submit" class="btn btn-primary">add</button>
            
            </div>
        </form>
    </div>
</body>
</html>