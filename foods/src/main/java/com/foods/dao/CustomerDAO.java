package com.foods.dao;

import java.util.List;

import com.foods.vo.CustomerVO;
 
public interface CustomerDAO {
	public List<CustomerVO> selectList();
    public void insert(CustomerVO vo);
	public CustomerVO view(int CustomerNo);
    public void update(CustomerVO vo);
	public void delete(int CustomerNo);
	
	//추가(응용) 게시글에 추가적인 작업 - 검색, 페이지처리, 조회수 등 
	public void increaseViewcnt(int CustomerNo);//게시글 증가
	//검색 분류(searchOption), 검색어(keyword)
	public List<CustomerVO> listAll(String searchOption, String keyword);
}
