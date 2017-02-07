package com.niit.frontend.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.backend1.dao.CartDao;
import com.niit.backend1.dao.ItemDao;
import com.niit.backend1.dao.ProductDao;
import com.niit.backend1.dao.UserDao;
import com.niit.backend1.dao.UserOrderDao;
import com.niit.backend1.model.Cart;
import com.niit.backend1.model.Item;
import com.niit.backend1.model.Product;
import com.niit.backend1.model.User;
import com.niit.backend1.model.UserOrder;

@Controller
public class CartController {

	@Autowired
	UserDao userDao;
	
	@Autowired
	UserOrderDao userOrderDao;
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	ItemDao itemDao;
	
	@Autowired
	ProductDao productDao;
	


	
	
	@RequestMapping("cart/{productId}")
	public String cartInsertion(@PathVariable("productId") int productId, Principal principal) {
		User user = userDao.getUserByUsername(principal.getName());
		Cart cart = user.getCart();
		List<Item> items = itemDao.getCartItems(cart.getCartId());
		
		
		System.out.println(items.size());
		Product product = productDao.getById(productId);
		for (int i = 0; i < items.size(); i++) {
			if (product.getProductId() == items.get(i).getProduct().getProductId()) {
				Item item = items.get(i);
				item.setQuantity(item.getQuantity() + 1);
				item.setItemTotal(product.getPrice() * item.getQuantity());
				System.out.println("items" + i);
				itemDao.add(item);

				return "redirect:/productDetails/"+productId;
			}

		}

		Item item = new Item();
		item.setProduct(product);
		item.setQuantity(1);
		item.setItemTotal(product.getPrice()); 
		item.setCart(cart);
		System.out.println("first item");
		try {
			itemDao.add(item);
		} catch (Exception e) {
			System.out.print(e);
		}
		return "redirect:/productDetails/"+productId;
	}

	
	/*@RequestMapping("/addToCart/{productId")
	public ModelAndView cart(@PathVariable("productId") int productId, Principal principal) {
		ModelAndView model = new ModelAndView("cart");
		
		User user = userDao.getUserByUsername(principal.getName());
		model.addObject("user", user);
		Cart cart = user.getCart();
		Product product = productDao.getById(productId);
		List<Item> items = cart.getItems();
		
		// Check if the item exists in the cart
		for (Item item : items) {
			if (product.getProductId() == item.getProduct().getProductId()) {
				// If the item exists, increment the quantity and the total
				item.setQuantity(item.getQuantity() + 1);
				item.setItemTotal(item.getQuantity() * product.getPrice());
				itemDao.add(item);
				
				return model;
			}
		}
		
		// If the item does not exist in the cart
		Item item = new Item();
		item.setProduct(product);
		item.setQuantity(1);
		item.setItemTotal(item.getQuantity() * product.getPrice());
		item.setCart(cart);
		
		itemDao.add(item);
		
		return model;
	}
	*/
	
	@RequestMapping("/order")
	public String orderGo(Principal principal, Model model) {
		User user = userDao.getUserByUsername(principal.getName());
		Cart cart = user.getCart();
		UserOrder userorder = new UserOrder();
		userorder.setUser(user);
		userorder.setCart(cart);
		userOrderDao.add(userorder);
		model.addAttribute("orderid", userorder.getUserOrderId());
		return "redirect:/cartFlow";

	}

	
	/*@RequestMapping(value = "/placeOrder/{cartId}")
	public String placeOrder(@PathVariable("cartId") int cartId) {
		UserOrder userOrder = new UserOrder();
		Cart cart = cartDao.getById(cartId);
		userOrder.setCart(cart);
		
		User user = cart.getUser();
		userOrder.setUser(user);
		
		userOrderDao.add(userOrder);
		
		return "redirect:/checkout?userOrderId=" + userOrder.getUserOrderId();
	}
	*/
	/*@RequestMapping("/showCart")
	public ModelAndView showCart(Principal principal) {
		ModelAndView model = new ModelAndView("cart");
		User user = userDao.getUserByUsername(principal.getName());
		model.addObject("user", user);
		System.out.println(user.getFullName());
		return model;
	}*/
	
	@RequestMapping("/cart")
	public String Products(Model model, Principal principal) {
		User user = userDao.getUserByUsername(principal.getName());
		Cart cart = user.getCart();
		List<Item> items = itemDao.getCartItems(cart.getCartId());
		
		double total = 0;

		for (Item item : items) {

			total = total + item.getItemTotal();

		}

		model.addAttribute("items", items);

		model.addAttribute("totalprice", total);
		return "cartpage";

	}
	@RequestMapping("/cart/remove/{itemId}")
	public String remove(@PathVariable("itemId") int itemId, Model model) {

		itemDao.remove(itemDao.getItemById(itemId));
		return "redirect:/cart";
	}

	
}
