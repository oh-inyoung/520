package com.foods.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.foods.service.foodsService;
import com.foods.vo.FoodsVO;

@Controller

public class foodsController {
	 @Autowired
	private foodsService foodsservice;

	//상품 관리
	@RequestMapping("/foods/list")
	public String memberList(Model model) { //Model 앞페이지의 정보
		//목록을 조회를 해서 전달
		List<FoodsVO> list = foodsservice.FoodsList();
		model.addAttribute("list", list); //foods_list.jsp에 items에 선언된 이름과 동일
		
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
		System.out.println("상품 등록");
		foodsservice.insertFoods(vo); //서버스를 통해 상품등록
		
		
		
		return "redirect:/foods/list";  //목록으로 이동
	}
	@RequestMapping("foods/view") 
	public String foodsView(@RequestParam int foodsId, Model model) {
		//페이지 연결 환인 후
		//서비스 연결(값을 전달시 addAttribute)
		//dto = member_view.jsp value에 {dto.userio}
		System.out.println("상품 상세보기");
		FoodsVO data = foodsservice.viewFoods(foodsId);
		model.addAttribute("dto", data); //session영역에 저장
		
		return "foods_view";
	}
	//상품 수정(데이터베이스)
		@RequestMapping(value = "foods/update", method=RequestMethod.POST)
		public String foodsUpdate(@ModelAttribute FoodsVO vo) {
		
			foodsservice.updateFoods(vo);

			return "redirect:/foods/list"; 
		}
		
		//상품 삭제(데이터베이스)
		@RequestMapping(value ="foods/delete", method=RequestMethod.POST)
		public String foodsDelete(@ModelAttribute FoodsVO vo, Model model) {
			int foodsId = vo.getFoodsId();
			
		    foodsservice.deleteFoods(foodsId);
		    return "redirect:/foods/list"; 
		}

		
		}

