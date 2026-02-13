<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Add Product</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body class="container">
  <h1>Add Product</h1>
  <form action="saveProduct" method="post" class="form">
    <div class="form-group">
      <label>product Id</label>
      <input class="form-control" type="number" name="productId" />
    </div>
    <div class="form-group">
      <label>product Name</label>
      <input class="form-control" type="text" name="productName" required/>
    </div>
    <div class="form-group">
      <label>product Brand</label>
      <input class="form-control" type="text" name="productBrand" />
    </div>
    <div class="form-group">
      <label>product Price</label>
      <input class="form-control" type="number" step="0.01" name="productPrice" />
    </div>
    <div class="form-group">
      <label>product Category</label>
      <input class="form-control" type="text" name="productCategory" />
    </div>
    <div class="form-group">
      <label>product Stock</label>
      <input class="form-control" type="number" name="productStock" />
    </div>
    <div class="form-group">
      <label>product Description</label>
      <textarea class="form-control" name="productDescription"></textarea>
    </div>
    <button class="btn btn-success" type="submit">Save</button>
    <a class="btn btn-default" href="viewProductForm">Cancel</a>
  </form>
</body>
</html>
