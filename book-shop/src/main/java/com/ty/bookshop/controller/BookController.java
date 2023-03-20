package com.ty.bookshop.controller;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ty.bookshop.model.BookCart;
import com.ty.bookshop.model.Books;
import com.ty.bookshop.model.Order;
import com.ty.bookshop.model.User;
import com.ty.bookshop.service.ShopService;

@Controller
public class BookController {

	@Autowired
	private ShopService service;
	private int cartNumber;

	@GetMapping("/delete-cart")
	public String deleteCart(@RequestParam("id") int id, Model model) {

		BookCart bookCart = service.getByCartId(id);

		if (bookCart != null) {
			BookCart deleted = service.deleteCart(bookCart);
			if (deleted != null) {
				return "redirect:/cart-table";
			}
		}
		return "/books-display";
	}

	@GetMapping("/order")
	public String getOrder(@RequestParam("bookTitle") String bookTitle, @RequestParam("price") double price,
			@RequestParam("quantity") int quantity, @RequestParam("author") String author,
			@RequestParam("email") String email, Model model) {

		Order order = new Order();
		order.setBookTitle(bookTitle);
		order.setAuthor(author);
		order.setQuantity(quantity);
		order.setPrice(price);
		order.setTotalPrice(price * quantity);

		User userSearched = service.getByEmail(email);
		if (userSearched == null) {

			model.addAttribute("invalid", "Enter Your Email !!");
			return "user-register-form";
		} else {
			order.setUser(userSearched);
			model.addAttribute("orderBills", order);
			return "bill-table";

		}

	}

	@GetMapping("/my-order")
	public String getMyOrder(@RequestParam("email") String email, Model model) {
		User user = service.getByEmail(email);
		if (user != null) {
			List<Order> order = service.getOrdersById(user.getId());
			if (!order.isEmpty()) {
				model.addAttribute("order", order);
				return "order-table";

			}
		}
		model.addAttribute("error", "NO ORDER FOUND !!");
		return "forward:/books-display";
	}

	@GetMapping("/cart")
	public String addCart(@RequestParam("id") int id, Model model, HttpServletRequest request) {

		Books books = service.getBook(id);
		BookCart bookCart = new BookCart();
		bookCart.setBookTitle(books.getBookTitle());
		bookCart.setAuthor(books.getAuthor());
		bookCart.setPrice(books.getPrice());

		BookCart savedCart = service.addCart(bookCart);
		if (savedCart != null) {
			cartNumber = savedCart.getCartId();
			List<BookCart> bookCarts = service.getCart();
			if (!bookCarts.isEmpty()) {
				model.addAttribute("bookCarts", bookCarts);
				return "redirect:/cart-table";
			}
		}

		return null;

	}

	@GetMapping("/cart-table")
	public String myCart(Model model) {

		List<BookCart> user = service.getCart();
		if (user != null) {
			List<BookCart> bookCart = service.getCart();

			if (!bookCart.isEmpty()) {
				model.addAttribute("bookCarts", bookCart);
				return "cart-table";
			} else {
				return "redirect:/books-display";
			}
		} else {
			return "redirect:/books-display";
		}
	}

	@GetMapping("/order-success")
	public String getOrdered(@RequestParam("bookTitle") String bookTitle, @RequestParam("price") double price,
			@RequestParam("quantity") int quantity, @RequestParam("author") String author,
			@RequestParam("email") String email, @RequestParam("totalPrice") double totalPrice, Model model,
			HttpServletRequest request) {

		Order order = new Order();
		order.setBookTitle(bookTitle);
		order.setAuthor(author);
		order.setQuantity(quantity);
		order.setPrice(price);
		order.setTotalPrice(totalPrice);

		User userSearched = service.getByEmail(email);
		if (userSearched == null) {
			User user = new User();
			user.setName(userSearched.getName());
			user.setEmail(userSearched.getEmail());
			user.setMobile(userSearched.getMobile());
			order.setUser(user);
		} else {
			order.setUser(userSearched);
		}

		Order ordered = service.saveUserMap(order);
		if (ordered != null) {

			BookCart bookCart = service.getByCartId(cartNumber);
			if (bookCart != null) {
				BookCart deleted = service.deleteCart(bookCart);
				cartNumber = 0;
			}
			ServletContext context = request.getServletContext();
			context.setAttribute("ordered", ordered);
			return "redirect:/books-display";
		}
		return null;
	}

	@GetMapping("/track-order")
	public String getTrackForm() {

		return "TrackOrder";

	}

	@GetMapping("/track")
	public String getTrackDetails(@RequestParam("orderId") int orderId, Model model) {

		Order order = service.getOrderById(orderId);
		if (order != null) {
			model.addAttribute("orderBills", order);
			return "ordered-table";

		}

		return null;

	}

}
