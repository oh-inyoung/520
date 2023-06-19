package com.foods.dao;

import java.util.List;

import com.foods.vo.FoodsVO;

public interface foodsDAO {
		public List<FoodsVO> foodsList(); //여러상품의 정보를 조회
	
	//상품 등록
		public void insertFoods(FoodsVO vo); //한명의 정보를 저장
	
		
		
}
