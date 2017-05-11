package com.product.controller;

import java.security.Principal;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.product.model.BillingAddress;
import com.product.model.Cart;
import com.product.model.CartItem;
import com.product.model.Customer;
import com.product.model.ShippingAddress;
import com.product.model.UserDetails;
import com.product.model.UserDetails1;
import com.product.service.CustomerService;
import com.product.service.UserDetailsService;

@Controller
public class HomeController {

	@Autowired
	private UserDetailsService userdetailsservice;
	
	@Autowired
	private CustomerService customerService;
	
/*	@RequestMapping("/")
	public String displayHomePage(Model model){
		
		return "testpage";
	}*/
	
	@RequestMapping("/")
	public String displayHomePage(Model model){
		model.addAttribute("userObject", new UserDetails());
		model.addAttribute("userObject1", new UserDetails());
		
		Customer cust = new Customer();			
		ShippingAddress shippingAddress = new ShippingAddress();		
		UserDetails1 userDetails1 = new UserDetails1();
		
		cust.setUserDetails1(userDetails1);
		cust.setShippingAddress(shippingAddress);		
		
		model.addAttribute("customerObject", cust);
		
		model.addAttribute("imagenum", CommonController.generateRandomNum());
		return "index";
	}
	
	@RequestMapping("/home")
	public String displayHomePage1(Model model){
		model.addAttribute("userObject", new UserDetails());
		model.addAttribute("userObject1", new UserDetails());
		
		Customer cust = new Customer();			
		ShippingAddress shippingAddress = new ShippingAddress();		
		UserDetails1 userDetails1 = new UserDetails1();
		
		cust.setUserDetails1(userDetails1);
		cust.setShippingAddress(shippingAddress);		
		
		model.addAttribute("customerObject", cust);
		model.addAttribute("imagenum", CommonController.generateRandomNum());
		return "index";
	}
	
	@RequestMapping("/reqForLoginPage") // to display loginpage
	public String displayLoginpage(Model m){
		m.addAttribute("userObject", new UserDetails());
		
		return "loginpage";
	}
	
	@RequestMapping("/reqForSignupPage") // to display signuppage
	public String displaySignuppage(Model m){
		UserDetails temp=new UserDetails();
		m.addAttribute("userObject",  temp);
		return "signuppage";
	}
	
	@RequestMapping("/reqSendSignupData")
	public String addUser(@ModelAttribute("userObject1")UserDetails ud, Model m){
		
		String uid = userdetailsservice.addUser(ud);
		m.addAttribute("message", "1");
		m.addAttribute("message1", "Signup is successfull. New userid : " + uid);
		UserDetails temp=new UserDetails();
		m.addAttribute("userObject1",  temp);
		m.addAttribute("userObject",  new UserDetails());
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		return "index";
	}
	
	@RequestMapping("/reqLoginCheck")
	public String authenticate(@ModelAttribute("userObject")UserDetails ud,Model m,HttpSession hsession){
		
		UserDetails1 result = userdetailsservice.loginCheck(ud);
		if(result==null){
			m.addAttribute("message", "0");
			m.addAttribute("userObject", new UserDetails());
			m.addAttribute("userObject1", new UserDetails());
			m.addAttribute("imagenum", CommonController.generateRandomNum());
			return "index";
		}
		else { // login success
			Customer cust = customerService.getCustomerByUserId(result.getUserid().toString());
			if(result.getRole().equals("ROLE_ADMIN")){
				
				hsession.setAttribute("loginusername", cust.getCustname());
				hsession.setAttribute("loginuserid",result.getUserid() );
				m.addAttribute("loginusername", cust.getCustname());
				m.addAttribute("loginuserid", result.getUserid());	
				m.addAttribute("imagenum", CommonController.generateRandomNum());
				return "loginsuccessadmin";
			}
			else{
				m.addAttribute("imagenum", CommonController.generateRandomNum());
				hsession.setAttribute("loginusername",cust.getCustname() );
				hsession.setAttribute("loginuserid",result.getUserid() );
				
				m.addAttribute("loginusername", cust.getCustname());
				m.addAttribute("loginuserid", result.getUserid());				
				return "loginsuccessuser";
			}
		}
		
	}
	
	@RequestMapping("/reqLogout")
	public String logout(HttpSession hsession){
		hsession.setAttribute("loginusername", null);
		hsession.setAttribute("loginuserid", null);
		return "redirect:/home";
	}
	
	
	//  spring security
	
	@RequestMapping("/reqspringloginpage")
	public String displaySpringLoginPage(){
		return "springloginpage";
	}
	
	
	@RequestMapping("/loginCheck1") // to check which user loged in
	public String loginCheck(Principal principal,HttpSession hsession,Model m){
		System.out.print("\nHome Controller - loginCheck()");		
		System.out.println("\nName : " + principal.getName());		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();		
		String userrole = authentication.getAuthorities().toString().substring(1, 10);
		System.out.println("\nRole : " + userrole); 
		UserDetails1 ud = (UserDetails1)userdetailsservice.getUserById(principal.getName());
		
		if(userrole.equals("ROLE_USER")){				
			Customer cust = customerService.getCustomerByUserId(ud.getUserid());			
			m.addAttribute("loginusername",cust.getCustname());
			m.addAttribute("loginuserid", ud.getUserid());
			m.addAttribute("cartsize",cust.getCart().getCartItems().size());
			
			m.addAttribute("imagenum", CommonController.generateRandomNum());
			hsession.setAttribute("loginusername",cust.getCustname());
			hsession.setAttribute("loginuserid", ud.getUserid());
			hsession.setAttribute("cartsize", cust.getCart().getCartItems().size());
			
			return "redirect:/reqDisplayProductsUser";
		}
		
		if(userrole.equals("ROLE_ADMI")){	
			m.addAttribute("loginusername",ud.getUserid());
			m.addAttribute("loginuserid", ud.getUserid());
			hsession.setAttribute("loginusername",ud.getUserid());
			hsession.setAttribute("loginuserid", ud.getUserid());
			return "loginsuccessadmin";	
		}
				
			
		
		
			return null;
	}
	
	@RequestMapping("/reqSendSignupDataToDB")
	public String addUserToDb(@ModelAttribute("customerObject")Customer customer, Model m){
		
		BillingAddress ba = new BillingAddress();
		ba.setHouseno(customer.getShippingAddress().getHouseno());
		ba.setStreet(customer.getShippingAddress().getStreet());
		ba.setArea(customer.getShippingAddress().getArea());
		ba.setCity(customer.getShippingAddress().getCity());
		ba.setState(customer.getShippingAddress().getState());
		ba.setCountry(customer.getShippingAddress().getCountry());
		ba.setPincode(customer.getShippingAddress().getPincode());
		customer.setBillingAddress(ba);
		customer.setCart(new Cart());
		String custid = customerService.addCustomer(customer);
		
		/*String cid = userdetailsservice.addUser(ud);*/
		m.addAttribute("message", "1");
		m.addAttribute("message1", "Signup is successfull. Your login id : " + custid);
		UserDetails temp=new UserDetails();
		m.addAttribute("userObject1",  temp);
		m.addAttribute("userObject",  new UserDetails());
		Customer cust = new Customer();			
		ShippingAddress shippingAddress = new ShippingAddress();		
		UserDetails1 userDetails1 = new UserDetails1();
		
		cust.setUserDetails1(userDetails1);
		cust.setShippingAddress(shippingAddress);		
		
		m.addAttribute("customerObject", cust);	
		
		m.addAttribute("imagenum", CommonController.generateRandomNum());
		
		return "index";
	}

}


















