package com.ty.bookshop.controller;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ty.bookshop.model.Books;
import com.ty.bookshop.service.ShopService;

@Controller
public class FetchBookController {

	@Autowired
	private ShopService service;

	@GetMapping("/get-novel")
	public ModelAndView getNovels(Model model, ModelAndView modelAndView) {
		String name = "Novel";
		List<Books> novels = service.getBooksByCategory(name);
		if (!novels.isEmpty()) {
			modelAndView.setViewName("novels");
			model.addAttribute("novels", novels);

			return modelAndView;
		} else {
			modelAndView.setViewName("nav");
			return modelAndView;
		}

	}

	@GetMapping("/get-translation")
	public ModelAndView getTranslation(Model model, ModelAndView modelAndView) {
		String name = "Translation";
		List<Books> transations = service.getBooksByCategory(name);
		if (!transations.isEmpty()) {
			modelAndView.setViewName("translation");
			model.addAttribute("translation", transations);

			return modelAndView;
		} else {
			modelAndView.setViewName("nav");
			return modelAndView;
		}

	}

	@GetMapping("/get-selfhelp")
	public ModelAndView getSelfHelp(Model model, ModelAndView modelAndView) {
		String name = "Self help";
		List<Books> selfhelp = service.getBooksByCategory(name);
		if (!selfhelp.isEmpty()) {
			modelAndView.setViewName("selfhelp");
			model.addAttribute("selfhelp", selfhelp);

			return modelAndView;
		} else {
			modelAndView.setViewName("nav");
			return modelAndView;
		}

	}

	@GetMapping("/get-history")
	public ModelAndView getHistory(Model model, ModelAndView modelAndView) {
		String name = "History";
		List<Books> getHistory = service.getBooksByCategory(name);
		if (!getHistory.isEmpty()) {
			modelAndView.setViewName("getHistory");
			model.addAttribute("getHistory", getHistory);

			return modelAndView;
		} else {
			modelAndView.setViewName("nav");
			return modelAndView;
		}

	}

	@GetMapping("/get-biography")
	public ModelAndView getBiography(Model model, ModelAndView modelAndView) {
		String name = "Biography";
		List<Books> getBiography = service.getBooksByCategory(name);
		if (!getBiography.isEmpty()) {
			modelAndView.setViewName("getBiography");
			model.addAttribute("getBiography", getBiography);

			return modelAndView;
		} else {
			modelAndView.setViewName("nav");
			return modelAndView;
		}

	}

	@GetMapping("/get-science")
	public ModelAndView getScience(Model model, ModelAndView modelAndView) {
		String name = "Science";
		List<Books> getScience = service.getBooksByCategory(name);
		if (!getScience.isEmpty()) {
			modelAndView.setViewName("getScience");
			model.addAttribute("getScience", getScience);

			return modelAndView;
		} else {
			modelAndView.setViewName("nav");
			return modelAndView;
		}

	}

	@GetMapping("/get-poetry")
	public ModelAndView getPoetry(Model model, ModelAndView modelAndView) {
		String name = "Poetry";
		List<Books> getPoetry = service.getBooksByCategory(name);
		if (!getPoetry.isEmpty()) {
			modelAndView.setViewName("getPoetry");
			model.addAttribute("getPoetry", getPoetry);

			return modelAndView;
		} else {
			modelAndView.setViewName("nav");
			return modelAndView;
		}

	}

	@GetMapping("/search")
	public ModelAndView getBookByTitle(@RequestParam("bookTitle") String bookTitle, Model model,
			ModelAndView modelAndView) {

		List<Books> searchedBooks = service.getBooksbyTitle(bookTitle);

		if (!searchedBooks.isEmpty()) {

			modelAndView.setViewName("show-books");
			model.addAttribute("searchedBooks", searchedBooks);
			model.addAttribute("bookTitle", bookTitle);

			return modelAndView;

		} else {
			modelAndView.setViewName("home");
			return modelAndView;

		}

	}

	@GetMapping("/get-author")
	public ModelAndView getAuthors(Model model, ModelAndView modelAndView) {
		List<Books> getAuthors = service.getAuthors();
		if (!getAuthors.isEmpty()) {
			Set<Books> authors = new TreeSet<>(getAuthors);
			System.out.println(authors);
			modelAndView.setViewName("authors");
			model.addAttribute("authors", authors);

			return modelAndView;
		} else {
			modelAndView.setViewName("nav");
			return modelAndView;
		}

	}

	@GetMapping("/search-admin")
	public ModelAndView getBookByTitleInAdmin(@RequestParam("bookTitle") String bookTitle, Model model,
			ModelAndView modelAndView) {

		List<Books> searchedBooks = service.getBooksbyTitle(bookTitle);

		if (!searchedBooks.isEmpty()) {

			modelAndView.setViewName("show-books-admin");
			model.addAttribute("searchedBooks", searchedBooks);
			model.addAttribute("bookTitle", bookTitle);

			return modelAndView;

		} else {
			modelAndView.setViewName("no-books-found-admin");
			return modelAndView;

		}

	}

	@GetMapping("/books-display")
	public ModelAndView getBooksForUser(Model model, ModelAndView modelAndView) {
		List<Books> list = service.getBooks();

		modelAndView.setViewName("books-display");
		model.addAttribute("list", list);
		return modelAndView;

	}

	@GetMapping("/search-user")
	public String getBookByTitleForUser(@RequestParam("bookTitle") String bookTitle, Model model,
			ModelAndView modelAndView) {

		List<Books> searchedBooks = service.getBooksbyTitle(bookTitle);

		if (!searchedBooks.isEmpty()) {

			model.addAttribute("searchedBooks", searchedBooks);
			model.addAttribute("bookTitle", bookTitle);

			return "show-books-user";

		} else {
			return "no-books-found";

		}

	}
	
	@GetMapping("no-books-found")
	public String noBooksFound() {
		
		return "no-books-found";
		
	}

}
