<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
   <html>
<head>
  <title>Product Update</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
        <h1>Edit Product Details</h1>  
       <form:form method="POST" action="/AmazonProduct/updateProduct">    
        <table class="table table-striped table-bordered table-hover">    
        <tr>  
        <td></td>    
         <td><form:hidden  path="productId" /></td>  
         </tr>   
        <tr>  
          <div class="form-group">    
          <td><label for="email">Product Name :</label> </td>   
          <td><form:input path="productName"  class="form-control"/></td>  
         </div>
         </tr>
         
         <tr> 
         <div class="form-group">   
          <td><label for="email">Product Brand:</label> </td>   
          <td><form:input path="productBrand" class="form-control" /></td> 
          </div> 
         </tr>    
         <tr> 
         <div class="form-group">      
          <td><label for="email">Product Price :</label> </td>    
          <td><form:input path="productPrice" class="form-control" /></td>  
        </div>
         </tr>   
         <tr> 
         <div class="form-group">      
          <td><label for="email">Product Category :</label></td>    
          <td><form:input path="productCategory" class="form-control"/></td>
         </div>  
         </tr>
         <tr> 
         <div class="form-group">      
          <td><label for="email">Product Stock :</label></td>    
          <td><form:input path="productStock" class="form-control"/></td>  
        </div>
         </tr>
         <tr>  
         <div class="form-group">     
          <td><label for="email">Product Description :</label></td>    
          <td><form:input path="productDescription" class="form-control"/></td>  
        </div>
         </tr> 
         
         <tr>    
          <td> </td>    
          <td><input class="btn btn-success" type="submit" value="Edit Save" /></td>    
         </tr>    
        </table>    
       </form:form>    
</body>
</html>