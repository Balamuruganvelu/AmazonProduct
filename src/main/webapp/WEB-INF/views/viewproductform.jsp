<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Product List</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body class="container">
  <h1 class="mt-3">Product List</h1>
  <a class="btn btn-warning" href="productForm">Add Product</a>
  <br/><br/>

  <table class="table table-striped table-hover">
    <thead>
      <tr>
        <th>ID</th><th>Name</th><th>Brand</th><th>Price</th><th>Category</th><th>Stock</th><th>Description</th><th colspan="2">Actions</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="product" items="${list}">
        <tr>
          <td>${product.productId}</td>
          <td>${product.productName}</td>
          <td>${product.productBrand}</td>
          <td>${product.productPrice}</td>
          <td>${product.productCategory}</td>
          <td>${product.productStock}</td>
          <td>${product.productDescription}</td>
          <td><a class="btn btn-primary btn-xs" href="editForm/${product.productId}">Edit</a></td>
          <td><a class="btn btn-danger btn-xs" href="deleteproduct/${product.productId}" onclick="return confirm('Delete this product?');">Delete</a></td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>
