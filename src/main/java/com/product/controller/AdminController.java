package com.product.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.product.model.Product;
import com.product.model.Supplier;
import com.product.model.UserDetails1;
import com.product.model.XMAP_Product_Supplier;
import com.product.service.ProductService;
import com.product.service.SupplierService;
import com.product.service.UserDetailsService;
import com.product.service.XmapPsService;

@Controller
public class AdminController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private SupplierService supplierService;
	
	@Autowired
	private XmapPsService xpsservice;
	
	@Autowired
	private UserDetailsService userService;
	
	@RequestMapping("/reqProductForm")
	public String displayAddProductForm(Model m,HttpSession hsession){
		m.addAttribute("productObject", new Product());
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		m.addAttribute("imagenum",CommonController.generateRandomNum());
		return "addProduct";
	}
	
	@RequestMapping(value={"/addProductToDB"},method = RequestMethod.POST)
	public String addProductToDb(@ModelAttribute("productObject")Product prd,Model m,HttpSession hsession){	
		m.addAttribute("username", hsession.getAttribute("userlogedin"));	
		productService.addProduct(prd);		
		return "redirect:/reqDisplayProdcutsAdmin";  // displays admins home page			
	}
	
	@RequestMapping("/reqDisplayProdcutsAdmin")
	public String displayProductsAdmin(Model m,HttpSession hsession){
		List<Product> data = productService.getProducts();
		m.addAttribute("username", hsession.getAttribute("userlogedin"));
		m.addAttribute("products",data);
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "displayproductsadmin";
	}
	
	@RequestMapping("/reqAddSupplierForm")
	public String addSuppierPage(Model m){
		m.addAttribute("supplierObject", new Supplier());
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "addSupplier";
	}
	
	@RequestMapping("/reqAddSupplierToDb")
	public String addSupplierToDB(@ModelAttribute("supplierObject")Supplier sup){
		supplierService.addSupplier(sup);
		return "redirect:/reqDisplaySuppliers";
	}
	
	@RequestMapping("/reqDisplaySuppliers")
	public String displaySuppliers(Model m ){
		
		List<Supplier> data = supplierService.getSuppliers();
		m.addAttribute("suppliersData", data);
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "displaySuppliers";
	}
	
	@RequestMapping("/reqAddProdSuppForm")
	public String displayAddProdSuppForm(Model m){
		List<Product> prdata = productService.getProducts();
		List<Supplier> supdata = supplierService.getSuppliers();
		m.addAttribute("products", prdata);
		m.addAttribute("suppliers", supdata);
		m.addAttribute("prodsuppObject", new XMAP_Product_Supplier());
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "addProdSupp";
	}
	
	@RequestMapping("/reqAddProdSuppDataToDb")
	public String addProdSuppToDb(@ModelAttribute("prodsuppObject")XMAP_Product_Supplier xps){
		//System.out.println(xps.getProductid());
		xpsservice.addXmapPs(xps);
		return "redirect:/reqDisplayXps";
	}
	
	@RequestMapping("/reqDisplayXps")
	public String displayXps(Model m){
		List<XMAP_Product_Supplier> xpsdata =  xpsservice.displayXmapPs();
		m.addAttribute("xpsdata", xpsdata);
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "displayXps";
	}
	
	
	@RequestMapping("/reqDeleteSupplier")
	public String deleteSupplier(@RequestParam("sid")String supid){
		//System.out.println(supid);
		supplierService.deleteSupplier(supid);
		return "redirect:/reqDisplaySuppliers";
	}
	
	@RequestMapping("/reqEditProductPage")
	public String editProduct(@RequestParam("pid")String pid,Model model){		
		Product temp = productService.getProductById(pid);
		model.addAttribute("productObj", temp);
		model.addAttribute("imagenum", CommonController.generateRandomNum());
		return "editProductPage";
	}
	
	
/*	@RequestMapping("/reqEditProductPage/{pid}")
	public String editProduct(@PathVariable("pid")String pid,Model model){		
		Product temp = productService.getProductById(pid);
		model.addAttribute("productObj", temp);
		model.addAttribute("imagenum", CommonController.generateRandomNum());
		return "editProductPage";
	}*/
	
	@RequestMapping("/reqEditProductToDb")
	public String editproducttodb(@ModelAttribute("productObj")Product prd){
		productService.editProduct(prd);
		return "redirect:/reqDisplayProdcutsAdmin";
	}	
	
	
	@RequestMapping("/reqDisplayUsers")
	public String displayUsers(Model m){		
		List<UserDetails1> userdata = userService.getAllUsers();
		m.addAttribute("userdata", userdata);
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "displayUsers";
	}

	@RequestMapping("reqDisableUser")
	public String disableUser(@RequestParam("uid")String uid){
		userService.disbleUser(uid);
		return "redirect:/reqDisplayUsers";
	}
	
	@RequestMapping("reqEnableUser")
	public String enableUser(@RequestParam("uid")String uid){
		userService.enableUser(uid);
		return "redirect:/reqDisplayUsers";
	}
	
}




















