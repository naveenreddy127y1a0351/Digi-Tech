package com.product.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.product.model.Cart;
import com.product.model.CartItem;
import com.product.model.Customer;

@Repository
public class CartItemDAOImpl implements CartItemDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCartItem(CartItem cartItem) {
		Session session=sessionFactory.openSession();
		cartItem.setCartitemid(generateCartItemId());
		session.save(cartItem);
		session.flush();		
		session.close();
		
		
		

	}

	public CartItem getCartItem(String cartItemId) {
		Session session=sessionFactory.openSession();
		CartItem cartItem=(CartItem)session.get(CartItem.class, cartItemId);
		session.flush();
		session.close();
		return cartItem;
	}

	@Transactional
	public void removeCartItem(String cartItemId) {
		Session session=sessionFactory.openSession();
		CartItem critem = session.get(CartItem.class, cartItemId);
		session.delete(critem);
		session.flush();
		session.close();
	}

	public void removeAllCartItems(String customerid) {
		Session session=sessionFactory.openSession();
		Customer customer = session.get(Customer.class, customerid);
		Cart cart = customer.getCart();
		List<CartItem> cartItems=cart.getCartItems();		
		for(CartItem cartItem:cartItems)
			removeCartItem(cartItem.getCartitemid());
	}

	public void removeAllCartItems1(Cart cart) {
		/*Session session=sessionFactory.openSession();
		Customer customer = session.get(Customer.class, customerid);
		Cart cart = customer.getCart();
		*/
		List<CartItem> cartItems=cart.getCartItems();		
		for(CartItem cartItem:cartItems)
			removeCartItem(cartItem.getCartitemid());
	}
	
	
	private String generateCartItemId(){		
		String newCid="";		
		Session s = sessionFactory.openSession();
		Query qr = s.createQuery("from CartItem");
		List<Customer> data = qr.list();
		s.close();
		if(data.size()==0){
			newCid="CITM00001";
		}
		else{
			Session ss = sessionFactory.openSession();		
			Query q = ss.createQuery("select max(cartitemid) from CartItem");
			String prevId = q.list().get(0).toString();
			System.out.print("\nExisting : "+prevId);
			int id = Integer.parseInt(prevId.substring(4));
			System.out.print("\nExisting id : "+id);		
			id=id+1;
			if(id<=9)
				newCid="CITM0000"+id;
			else if(id<=99)
				newCid="CITM000"+id;
			else if(id<=999)
				newCid="CITM00"+id;
			else if(id<=9999)
				newCid="CITM0"+id;
			else
				newCid="CITM"+id;		
			System.out.print("\nGenerated : "+newCid);	
			ss.flush();
			ss.close();		
		}
			return newCid;
	}
	
}
