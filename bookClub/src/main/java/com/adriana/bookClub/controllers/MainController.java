package com.adriana.bookClub.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.adriana.bookClub.services.BookService;
import com.adriana.bookClub.services.UserService;

@Controller
public class MainController {
	private final BookService bookServ;
	private final UserService userServ;
	public MainController(BookService bookServ, UserService userServ) {
		this.bookServ = bookServ;
		this.userServ = userServ;
	}
	
	@GetMapping("/")
	public String home(HttpSession session, Model model) {
		if(session.getAttribute("user_id") == null) {
			return "redirect:/users/login/reg";
		}
		model.addAttribute("allBooks", bookServ.getAll());
		model.addAttribute("loggedInUser", userServ.getOne((Long)session.getAttribute("user_id")));
		return "main/dashboard.jsp";
		
	}
}
