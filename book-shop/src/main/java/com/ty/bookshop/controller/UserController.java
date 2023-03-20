package com.ty.bookshop.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ty.bookshop.model.User;
import com.ty.bookshop.service.ShopService;

@Controller
public class UserController {

	@Autowired
	private ShopService service;

	@GetMapping("/home")
	public ModelAndView name(ModelAndView modelAndView) {
		modelAndView.setViewName("home");
		return modelAndView;

	}

	@GetMapping("/register")
	public ModelAndView getRegisterPage(ModelAndView modelAndView) {
		modelAndView.setViewName("user-register-form");
		return modelAndView;
	}

	@PostMapping("/adduser")
	public String saveUser(ModelAndView modelAndView, User user, Model model) {

		User savedUser = service.saveUser(user);
		if (savedUser != null) {
			modelAndView.setViewName("home");
			model.addAttribute("msg", "Registeration done");
			
			return "redirect:/cart-table";
			
		} else {
			model.addAttribute("unsave", "Registeration Not done");
			return "user-register-form";

		}


	}
	@GetMapping("/loginpage")
	public ModelAndView getLoginPage(ModelAndView modelAndView) {
		modelAndView.setViewName("login");
		return modelAndView;
	}

	@GetMapping("/logout")
	public String name(HttpSession session) {
		session.invalidate();
		return "redirect:/loginpage";

	}

	@GetMapping("/login")
	public String logIn(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpServletRequest request,Model model) {
		User searchedUser = service.login(email, password);
		if (searchedUser != null)  {
				return "books-display";
			 
		}else {
			model.addAttribute("invalid","Bad credentials");
			return "login";
		}

	}
	


}
