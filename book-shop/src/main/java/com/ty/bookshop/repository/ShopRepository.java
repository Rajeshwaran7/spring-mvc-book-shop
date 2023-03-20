package com.ty.bookshop.repository;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Id;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.DeleteMapping;

import com.ty.bookshop.model.Admin;
import com.ty.bookshop.model.BookCart;
import com.ty.bookshop.model.Books;
import com.ty.bookshop.model.Category;
import com.ty.bookshop.model.Order;
import com.ty.bookshop.model.User;

@Repository
public class ShopRepository {

	@Autowired
	private EntityManagerFactory factory;

	public User saveUser(User user) {

		EntityManager entityManager = factory.createEntityManager();
		EntityTransaction tx = entityManager.getTransaction();
		try {
			tx.begin();
			entityManager.persist(user);
			tx.commit();
			return user;

		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
		}

	}

	public User login(String email, String pass) throws NoResultException {
		EntityManager entityManager = factory.createEntityManager();
		String jpql = "FROM User u WHERE email = :email AND password = :password";
		TypedQuery<User> query = entityManager.createQuery(jpql, User.class);
		query.setParameter("email", email);
		query.setParameter("password", pass);
		User user = null;
		try {
			user = query.getSingleResult();
			return user;
		} catch (NoResultException e) {
			return null;
		}

	}

	public Category saveBooks(Category category) {
		EntityManager entityManager = factory.createEntityManager();
		EntityTransaction tx = entityManager.getTransaction();
		try {
			tx.begin();
			entityManager.persist(category);
			tx.commit();
			return category;

		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
		}

	}

	public List<Books> getBooks() {
		EntityManager manager = factory.createEntityManager();

		List<Books> books = manager.createQuery("SELECT b FROM Books b JOIN FETCH b.category", Books.class)
				.getResultList();
		return books;

	}

	public Books getBook(int id) {
		EntityManager manager = factory.createEntityManager();

		return manager.find(Books.class, id);
	}

	public Books updateBooks(Books books) {
		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.merge(books);
			transaction.commit();
			return books;

		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
			return null;

		}

	}

	public Books deleteBook(Books searchedId) {

		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			Books books = manager.merge(searchedId);
			manager.remove(books);
			transaction.commit();
			return books;

		} catch (Exception e) {

			transaction.rollback();
			e.printStackTrace();
			return null;
		}
	}

	public Books getById(int id) {
		EntityManager manager = factory.createEntityManager();

		return manager.find(Books.class, id);
	}

	public List<Books> getBooksByCategory(String name) {
		EntityManager manager = factory.createEntityManager();
		String jpql = "SELECT b FROM Books b JOIN FETCH b.category WHERE name = :nm";
		Query query = manager.createQuery(jpql);
		query.setParameter("nm", name);
		return query.getResultList();
	}

	public List<Books> getBooksBytitle(String bookTitle) {
		EntityManager manager = factory.createEntityManager();
		String jpql = "FROM Books WHERE bookTitle = :nm";
		Query query = manager.createQuery(jpql);

		query.setParameter("nm", bookTitle);

		return query.getResultList();
	}

	public Category getByIdCategory(int categoryId) {
		EntityManager manager = factory.createEntityManager();

		return manager.find(Category.class, categoryId);
	}

	public Category updateCategory(Category category) {

		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			manager.merge(category);
			transaction.commit();
			return category;

		} catch (Exception e) {
			transaction.rollback();
			e.printStackTrace();
			return null;
		}
	}

	public List<Books> getAuthors() {
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("SELECT b.author FROM Books b");
		List<Books> resultList = query.getResultList();
		return resultList;

	}

	public BookCart addCart(BookCart bookCart) {
		EntityManager entityManager = factory.createEntityManager();
		EntityTransaction tx = entityManager.getTransaction();
		try {
			tx.begin();
			entityManager.persist(bookCart);
			tx.commit();
			return bookCart;

		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
		}
	}

	public List<BookCart> getCart() {
		EntityManager manager = factory.createEntityManager();

		List<BookCart> carts = manager.createQuery("FROM BookCart", BookCart.class).getResultList();
		return carts;
	}

	public BookCart getByCartId(int id) {
		EntityManager manager = factory.createEntityManager();

		return manager.find(BookCart.class, id);
	}

	public BookCart deleteCart(BookCart bookCart) {

		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			BookCart bookCart2 = manager.merge(bookCart);
			manager.remove(bookCart2);
			transaction.commit();

			return bookCart;
		} catch (Exception e) {

			transaction.rollback();
			e.printStackTrace();
			return null;
		}
	}

	public User getByEmail(String email) {
		EntityManager entityManager = factory.createEntityManager();

		try {

			TypedQuery<User> query = entityManager.createQuery("FROM User WHERE email = :em ", User.class);
			query.setParameter("em", email);

			return query.getSingleResult();

		} catch (Exception e) {

			return null;
		}
	}

	public Order saveUserMap(Order order) {

		EntityManager manager = factory.createEntityManager();
		EntityTransaction transaction = manager.getTransaction();
		try {
			transaction.begin();
			User user = manager.merge(order.getUser());
			order.setUser(user);
			manager.persist(order);
			transaction.commit();
			return order;
		} catch (Exception e) {

			e.printStackTrace();
			transaction.rollback();
			return null;
		} finally {
			manager.close();
		}
	}

	public List<Order> searchEmail(String email) {
		EntityManager entityManager = factory.createEntityManager();

		try {
			String jpql = "select o, u from Order o inner join o.user u where u.email = :email";
			Query query = entityManager.createQuery(jpql);
			query.setParameter("em", email);

		} catch (Exception e) {

			return null;
		}
		return null;
	}

	public List<Order> getOrdersById(int id) {
		EntityManager entityManager = factory.createEntityManager();
		TypedQuery<Order> query = entityManager.createQuery("SELECT o FROM Order o JOIN o.user u WHERE u.id = :userId",
				Order.class);
		query.setParameter("userId", id);
		List<Order> orders = query.getResultList();

		return orders;
	}

	public User getUserById(int id) {
		EntityManager manager = factory.createEntityManager();

		return manager.find(User.class, id);
	}

	public List<BookCart> getCartByUser(int id) {
		EntityManager entityManager = factory.createEntityManager();
		String jpql = "SELECT bc FROM BookCart bc " + "WHERE bc.user.id = :userId";
		List<BookCart> bookCarts = entityManager.createQuery(jpql, BookCart.class).setParameter("userId", id)
				.getResultList();
		return bookCarts;

	}

	public Admin savedAdmin(Admin admin) {
		EntityManager entityManager = factory.createEntityManager();
		EntityTransaction tx = entityManager.getTransaction();
		try {
			tx.begin();
			entityManager.persist(admin);
			tx.commit();
			return admin;

		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
		}

	}

	public Admin loginAdmin(String email, String password) {
		EntityManager entityManager = factory.createEntityManager();
		String jpql = "FROM Admin a WHERE email = :email AND password = :password";
		TypedQuery<Admin> query = entityManager.createQuery(jpql, Admin.class);
		query.setParameter("email", email);
		query.setParameter("password", password);
		Admin admin = null;
		try {
			admin = query.getSingleResult();
			return admin;
		} catch (NoResultException e) {
			return null;
		}

	}

	public Order getOrderById(int orderId) {

		EntityManager entityManager = factory.createEntityManager();

		return entityManager.find(Order.class, orderId);
	}

}
