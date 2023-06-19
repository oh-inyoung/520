package com.foods.service;

import java.util.List;

import com.foods.vo.FoodsVO;
import com.foods.vo.MemberVO;

public interface foodsService {
	//상품목록
	public List<FoodsVO> FoodsList(); //여러상품의 정보를 조회
	//회원등록
	public void insertFoods(FoodsVO vo); //한명의 정보를 저장
}
