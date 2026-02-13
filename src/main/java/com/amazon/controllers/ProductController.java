package com.amazon.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.amazon.beans.ProductDetails;
import com.amazon.dao.ProductDao;

@Controller
public class ProductController {

    @Autowired
    ProductDao productDao;

    // 1️⃣ Show add product form
    @RequestMapping("/productForm")    
    public String showForm(Model m){    
        m.addAttribute("command", new ProductDetails());  
        return "productform";   
    } 

    // 2️⃣ Save new product
    @RequestMapping(value="/saveProduct", method=RequestMethod.POST)    
    public String save(@ModelAttribute("command") ProductDetails p){    
        productDao.save(p);    
        return "redirect:/viewProductForm";   
    } 

    // 3️⃣ Show all products (Product View)
    @RequestMapping("/viewProductForm")    
    public String viewProduct(Model m){    
        List<ProductDetails> list = productDao.getProducts();
        m.addAttribute("list", list);  
        return "viewproductform";    
    }

    // 4️⃣ Show edit form for a product
    @RequestMapping("/editForm/{id}")    
    public String edit(@PathVariable int id, Model m){    
        ProductDetails p = productDao.getProductById(id);
        m.addAttribute("command", p);    
        return "editproduct";    
    }

    // 5️⃣ Update product
    @RequestMapping(value="/updateProduct", method=RequestMethod.POST)    
    public String update(@ModelAttribute("p") ProductDetails p){    
        productDao.update(p);    
        return "redirect:/viewProductForm";    
    }

    // 6️⃣ Delete product
    @RequestMapping("/deleteproduct/{id}")    
    public String delete(@PathVariable int id){    
        productDao.delete(id);    
        return "redirect:/viewProductForm";    
    }
}
