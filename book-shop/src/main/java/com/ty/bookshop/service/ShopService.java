package com.ty.bookshop.service;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ty.bookshop.model.Admin;
import com.ty.bookshop.model.BookCart;
import com.ty.bookshop.model.Books;
import com.ty.bookshop.model.Category;
import com.ty.bookshop.model.Order;
import com.ty.bookshop.model.User;
import com.ty.bookshop.repository.ShopRepository;

@Service
public class ShopService {

	@Autowired
	private ShopRepository repository;

	public User saveUser(User user) {
		return repository.saveUser(user);

	}

	public User login(String email, String pss) {
		return repository.login(email, pss);

	}

	public Category saveBooks(Category category) {
		return repository.saveBooks(category);
	}

	public List<Books> getBooks() {
		return repository.getBooks();
	}

	public Books getBook(int id) {
		return repository.getBook(id);
	}

	public Books updateBooks(Books books) {
		
		
		return repository.updateBooks(books);
	}


	public Books getById(int id) {
		
		
		return repository.getById(id);
	}

	public Books deleteBook(Books searchedId) {

		return repository.deleteBook(searchedId);
	}

	public List<Books > getBooksByCategory(String name) {
		return repository.getBooksByCategory(name);
	}

	public List<Books> getBooksbyTitle(String bookTitle) {
		return repository.getBooksBytitle(bookTitle);
	}

	public Category getByIdCategory(int categoryId) {
		return repository.getByIdCategory(categoryId);
	}

	public Category updateCategory(Category category) {

		return repository.updateCategory(category);
	}

	public List<Books> getAuthors() {
		return repository.getAuthors();
	}

	public BookCart addCart(BookCart bookCart) {
		return repository.addCart(bookCart);
	}

	public List<BookCart> getCart() {
		return repository.getCart();
	}

	public BookCart getByCartId(int id) {
		return repository.getByCartId(id);
	}

	public BookCart deleteCart(BookCart bookCart) {

		return repository.deleteCart(bookCart);
	}

	public User getByEmail(String email) {
		return repository.getByEmail(email);
	}

	public Order saveUserMap(Order order) {
		return repository.saveUserMap(order);
	}

	public List<Order> getOrdersById(int id) {
		
		return repository.getOrdersById(id);
	}

	public User getUserById(int id) {
		return repository.getUserById(id);
	}

	public List<BookCart> getCartByUser(int id) {
		return repository.getCartByUser(id);
	}

	public Admin saveAdmin(Admin admin) {
		return repository.savedAdmin(admin);
	}

	public Admin loginAdmin(String email, String password) {
		return repository.loginAdmin(email,password);
	}

	public Order getOrderById(int orderId) {
		return repository.getOrderById(orderId);
	}

}
