package com.ty.bookshop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ty.bookshop.model.Admin;
import com.ty.bookshop.model.Books;
import com.ty.bookshop.model.Category;
import com.ty.bookshop.model.User;
import com.ty.bookshop.service.ShopService;

@Controller
public class AdminController {

	@Autowired
	private ShopService service;

	@GetMapping("/admin-page")
	public String getAdminPage() {
		return "admin-login";

	}
	
	
	@GetMapping("/admin-regi")
	public String getAdminRegisterPage() {
		return "admin-register-form";

	}
	

	@PostMapping("/admin")
	public ModelAndView saveUser(ModelAndView modelAndView, Admin admin, Model model) {

		Admin savedAdmin = service.saveAdmin(admin);
		if (savedAdmin != null) {
			modelAndView.setViewName("home");
			model.addAttribute("msg", "Registeration done");
			modelAndView.setViewName("admin-login");

		} else {
			model.addAttribute("unsave", "Registeration Not done");
			modelAndView.setViewName("user-register-form");

		}

		return modelAndView;

	}

	@GetMapping("/login-admin")
	public String logInAdmin(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpServletRequest request, Model model) {
		Admin searchAdmin = service.loginAdmin(email, password);
		if (searchAdmin != null) {
			return "admin";

		} else {
			model.addAttribute("invalid", "Bad credentials");
			return "admin-login";
		}

	}

	@GetMapping("/admin")
	public String getAdmin() {
		return "admin";

	}

	@GetMapping("/addbook")
	public String getAddBook() {
		return "addbooks";

	}

	@PostMapping("/addBooks")
	public String saveBooks(Category categ, Books books, Model model) {

		Category category = new Category();
		category.setName(categ.getName());

		List<Books> list = new ArrayList<>();
		Books books1 = new Books();
		books1.setBookTitle(books.getBookTitle());
		books1.setAuthor(books.getAuthor());
		books1.setPrice(books.getPrice());
		books1.setCategory(category);

		Books books2 = new Books();
		books2.setBookTitle(books.getBookTitle());
		books2.setAuthor(books.getAuthor());
		books2.setPrice(books.getPrice());
		books2.setCategory(category);

		list.add(books1);
		list.add(books2);

		category.setBooks(list);
		Category savedBooks = service.saveBooks(category);
		if (savedBooks != null) {
			model.addAttribute("msg", "Added done");
			return "redirect:/displaybooks";

		} else {
			model.addAttribute("msg", "NOT Added");
			return "/addbooks";
		}
	}

	@GetMapping("/displaybooks")
	public ModelAndView getBooks(Model model, ModelAndView modelAndView) {
		List<Books> list = service.getBooks();
		model.addAttribute("list", list);
		return modelAndView;

	}

	@RequestMapping(value = "/action", method = RequestMethod.GET)
	public ModelAndView getEditForm(@RequestParam("id") int categoryId, Model model, ModelAndView modelAndView) {
		Books books = service.getBook(categoryId);
		model.addAttribute("book", books);
		modelAndView.setViewName("editform");
		return modelAndView;
	}

	@PostMapping("/update-book")
	public String updateBooks(@ModelAttribute("book") Books books, @ModelAttribute("category") Category category,
			ModelAndView modelAndView) {
		System.out.println(books);
		System.out.println(category.getId());
		books.setCategory(category);
		System.out.println(books);

		Books updatedBooks = service.updateBooks(books);

		if (updatedBooks != null) {
			return "redirect:/displaybooks";
		}

		return "editform";

	}

	@GetMapping("/delete")
	public String deleteBook(@RequestParam("id") int id, Model model) {
		Books searchedId = service.getById(id);
		if (searchedId != null) {
			service.deleteBook(searchedId);
			return "redirect:/displaybooks";

		}
		return "/admin";
	}
}
