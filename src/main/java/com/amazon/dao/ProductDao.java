package com.amazon.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.amazon.beans.ProductDetails;

public class ProductDao {

    private JdbcTemplate template;

    public JdbcTemplate getTemplate() {
        return template;
    }

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Save new product
    public int save(ProductDetails p) {
        String sql = "INSERT INTO product(productId, productName, productBrand, productPrice, productCategory, productStock, productDescription) "
                   + "VALUES(?, ?, ?, ?, ?, ?, ?)";
        return template.update(sql, p.getProductId(), p.getProductName(), p.getProductBrand(), p.getProductPrice(),
                                    p.getProductCategory(), p.getProductStock(), p.getProductDescription());
    }

    
    
    // Get all products
    public List<ProductDetails> getProducts() {
        return template.query("SELECT * FROM product", new BeanPropertyRowMapper<>(ProductDetails.class));
    }

    // Get product by ID
    public ProductDetails getProductById(int id) {
        String sql = "SELECT * FROM product WHERE productId=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(ProductDetails.class));
    }

    // Update product
//    public int update(ProductDetails p) {
//        String sql = "UPDATE product SET productName=?, productBrand=?, productPrice=?, productCategory=?, productStock=?, productDescription=? WHERE productId=?";
//        return template.update(sql, p.getProductName(), p.getProductBrand(), p.getProductPrice(),
//                                    p.getProductCategory(), p.getProductStock(), p.getProductDescription(), p.getProductId());
//    }

	public int update(ProductDetails p){    
	    String sql="update product set productName='"+p.getProductName()+"', productBrand='"+p.getProductBrand()+"', productPrice='"+p.getProductPrice()+"', productCategory='"+p.getProductCategory()+"', productStock='"+p.getProductStock()+"', productDescription='"+p.getProductDescription()+"' where productId="+p.getProductId()+"";
	    return template.update(sql);    
	} 
    
   
    // Delete product
    public int delete(int id) {
        String sql = "DELETE FROM product WHERE productId=?";
        return template.update(sql, id);
    }
}
