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

import com.foods.service.CustomerService;
import com.foods.vo.CustomerVO;

@Controller
@RequestMapping("Customer/*")
public class CustomerController {
	@Inject
	CustomerService customerservice;

	@RequestMapping("list")

	public ModelAndView CustomerList(@RequestParam (defaultValue="title") String searchOption,
		@RequestParam(defaultValue = "") String keyword) {
		List<CustomerVO> list = customerservice.listAll(searchOption, keyword);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);//리스트 전달
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		mav.setViewName("Customer/list");

		return mav;
	}
		
	//게시글 등록폼
	@RequestMapping(value = "write", method=RequestMethod.GET)
	public String CustomerWritePage(Model model) {
		
		return "Customer/write";  //페이지이면 메소드(Model model)선언
	}

	//게시글 등록(데이터베이스 처리)
	@RequestMapping(value = "write", method=RequestMethod.POST)
	public String CustomerWrite(@ModelAttribute CustomerVO vo) {
		System.out.println(vo.getCustomerTitle());
		System.out.println(vo.getCustomerWriter());

			customerservice.insert(vo);
		
		return "redirect:list";
	}
	
	//게시글 상세보기
	@RequestMapping("view")
	public String CustomerView(@RequestParam int CustomerNo, Model model) {

			//조회수 증가
			customerservice.increaseViewcnt(CustomerNo);
			
			//상세 출력
			CustomerVO data = customerservice.view(CustomerNo);
			model.addAttribute("dto", data); //페이지에 값을 전달

		return "Customer/view";
	}
	
	//게시글 수정(데이터베이스)
	@RequestMapping(value = "update", method=RequestMethod.POST)
	public String CustomerUpdate(@ModelAttribute CustomerVO vo, Model model) {

			customerservice.update(vo);

		return "redirect:list";
	}
	
	//게시글 삭제(데이터베이스)
	@RequestMapping("delete")
	public String CustomerDelete(@RequestParam int CustomerNo) {

			customerservice.delete(CustomerNo);
			
		return "redirect:list";
	}

}
