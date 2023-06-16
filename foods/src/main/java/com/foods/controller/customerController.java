package com.foods.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.foods.service.customerService;
import com.foods.vo.customerVO;

@Controller
@RequestMapping("customer/*") //customer시작하고 뒤에 상관없이(customer시작하면 클래스로 진입)
public class customerController {
	@Inject
	customerService customerservice;

	@RequestMapping("list")

	public ModelAndView customerList(@RequestParam(defaultValue="all") String searchOption,
			@RequestParam(defaultValue="") String keyword){

		ModelAndView mav = new ModelAndView();
		List<customerVO> list = customerservice.listAll(searchOption, keyword);
		System.out.println("리스트");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); 
		//map.put("searchOption", searchOption); //검색옵션
		//map.put("keyword", keyword);  ///검색키워드
		
		mav.addObject("map", map); //맵에 저장된 데이터를 mav에 저장
		mav.setViewName("customer/list");//뷰를 list.jsp로 설정

		return mav;
	}
		
	//게시글 등록폼
	@RequestMapping(value = "write", method=RequestMethod.GET)
	public String customerWritePage(Model model) {
		
		return "customer/write"; 
	}

	//게시글 등록(데이터베이스 처리)
	@RequestMapping(value = "write", method=RequestMethod.POST)
	public String customerWrite(@ModelAttribute customerVO vo) {
		System.out.println(vo.getCustomerTitle());
		System.out.println(vo.getCustomerWriter());
		System.out.println("등록");
			customerservice.insert(vo);

		return "redirect:list"; //맵핑 메소드() 선언
	}
	
	//게시글 상세보기
	@RequestMapping("view")
	public String customerView(@RequestParam int customerNo, Model model) {
	//customerservice.view(int customerNo) 선언되어 있으면 customerVIew(@RequestParam int)변수별로 받기
		System.out.println("상세보기");
			//조회수 증가
			customerservice.increaseViewcnt(customerNo);
			
			//상세 출력
			customerVO data = customerservice.view(customerNo);
			model.addAttribute("dto", data); //페이지에 값을 전달

		return "customer/view";
	}
	
	//게시글 수정(데이터베이스)
	@RequestMapping(value = "update", method=RequestMethod.POST)
	public String customerUpdate(@ModelAttribute customerVO vo, Model model) {
		System.out.println("수정");
		customerservice.update(vo);

		return "redirect:list";
	}
	
	//게시글 삭제(데이터베이스)
	@RequestMapping("delete")
	public String customerDelete(@RequestParam int customerNo) {

			customerservice.delete(customerNo);

		
		return "redirect:list";
	}

}
