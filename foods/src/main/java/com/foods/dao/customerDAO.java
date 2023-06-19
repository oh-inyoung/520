package com.foods.dao;

import java.util.List;

import com.foods.vo.customerVO;
 
public interface customerDAO {
	public List<customerVO> selectList();
    public void insert(customerVO vo);
	public customerVO view(int customerNo);
    public void update(customerVO vo);
	public void delete(int customerNo);
	
	//추가(응용) 게시글에 추가적인 작업 - 검색, 페이지처리, 조회수 등 
	public void increaseViewcnt(int customerNo);//게시글 증가
	//검색 분류(searchOption), 검색어(keyword)
	public List<customerVO> listAll(String searchOption, String keyword);
}
