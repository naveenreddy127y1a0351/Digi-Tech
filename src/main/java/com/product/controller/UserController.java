package com.product.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.product.model.Customer;
import com.product.model.UserDetails;
import com.product.model.UserDetails1;
import com.product.model.Vw_Xmap_Ps;
import com.product.service.CustomerService;
import com.product.service.UserDetailsService;
import com.product.service.VwPsService;

@Controller
public class UserController {

	@Autowired
	private VwPsService vwpsservice;
	
	@Autowired
	private UserDetailsService userService;
	
	@Autowired
	private CustomerService customerService;
	
	
	
	@RequestMapping("/reqDisplayProductsUser")
	public String displayProductsUser(HttpSession hsession,Model m){
		//List<Vw_Xmap_Ps> psdata = vwpsservice.getVwPs(); 
		List<Vw_Xmap_Ps> psdata = vwpsservice.getBestVwPs(); 
	
		
		m.addAttribute("psdata", psdata);
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		m.addAttribute("loginusername",hsession.getAttribute("loginusername"));
		m.addAttribute("loginuserid",hsession.getAttribute("loginuserid"));
	
		
		int cartsize=userService.getUserById(hsession.getAttribute("loginuserid").toString()).getCustomer().getCart().getCartItems().size();
		hsession.setAttribute("cartsize", cartsize);
		m.addAttribute("cartsize",hsession.getAttribute("cartsize"));
		
		return "displayproductsuser";
	}
	
	
	
	@RequestMapping("/reqAllSuppProducts")
	public String displayAllSuppProducts(@RequestParam("pid")String pid,Model m,HttpSession hsession){		
		List<Vw_Xmap_Ps> data = vwpsservice.getAllSuppProducts(pid);
		m.addAttribute("products", data);
		m.addAttribute("productid", data.get(0).getProductid());
		m.addAttribute("productname", data.get(0).getProductname());		
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		m.addAttribute("loginusername",hsession.getAttribute("loginusername"));
		m.addAttribute("loginuserid",hsession.getAttribute("loginuserid"));
		m.addAttribute("cartsize",hsession.getAttribute("cartsize"));
		return "allSuppProducts";
	}
	
	@RequestMapping("/reqEditProfilePage")
	public String displayEditUserPage(HttpSession hsession,Model m){
		UserDetails1 ud = userService.getUserById(hsession.getAttribute("loginuserid").toString());
		m.addAttribute("loginusername", hsession.getAttribute("loginusername"));
		m.addAttribute("loginuserid", hsession.getAttribute("loginuserid"));
		m.addAttribute("cartsize",hsession.getAttribute("cartsize"));
		m.addAttribute("userObject", ud);
		
		return "editProfilePage";
	}
	
	@RequestMapping("/reqEditPrfileToDb")
	public String editProfileToDb(@ModelAttribute("userObject")UserDetails1 ud, HttpSession hsession){		
		userService.editUser(ud);
		
		
		Customer cust = customerService.getCustomerByUserId(ud.getUserid());
		
		hsession.setAttribute("loginusername", cust.getCustname());
		return "redirect:/reqDisplayProductsUser";
	}
	

	
}