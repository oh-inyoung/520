package com.foods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.foods.service.foodsService;
import com.foods.vo.FoodsVO;
import com.foods.vo.MemberVO;

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
	@RequestMapping("foods/write")
	public String memberwriteView() { //Model 앞페이지의 정보
		
		return "foods_write";
	}
	
	//ModelAttribute : View에서 값을 전달받을 때(request)
	@RequestMapping(value="foods/write", method=RequestMethod.POST)
	public String foodsInsert(@ModelAttribute FoodsVO vo) { //Model 앞페이지의 정보
		//서비스로 저장작업
				
		foodsservice.insertFoods(vo); //서버스를 통해 회원등록
		
		return "redirect:/admin/index";  //목록으로 이동
	}
	
	
}

