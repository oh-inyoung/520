package com.foods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foods.service.foodsService;
import com.foods.vo.FoodsVO;

@Controller

public class foodsController {
	 @Autowired
	private foodsService foodsservice;

	//상품 관리
	@RequestMapping("/admin/index")
	public String memberList(Model model) { //Model 앞페이지의 정보
		//목록을 조회를 해서 전달
		List<FoodsVO> list = foodsservice.FoodsList();
		model.addAttribute("list", list); //member_list.jsp에 items에 선언된 이름과 동일
		
		return "foods_list";
	}
}
