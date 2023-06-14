package com.foods.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class MemberController {
	@RequestMapping("singUp")
	public String aa() {
		return "singup";
	}

}
