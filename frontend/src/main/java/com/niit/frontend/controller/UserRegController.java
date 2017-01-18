package com.niit.frontend.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.backend1.dao.UserDao;
import com.niit.backend1.model.User;

@Controller
public class UserRegController {

	@Autowired
	UserDao userDao;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}
	
	@RequestMapping(value = "/user/add", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors()) {
			return "register";
		} else {
			userDao.add(user);
			return "redirect:/";
		}
	}

}
