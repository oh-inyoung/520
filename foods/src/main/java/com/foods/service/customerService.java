package com.foods.service;

import java.util.List;

import com.foods.vo.customerVO;

public interface customerService {
	public List<customerVO> selectList();
    public void insert(customerVO vo);
	public customerVO view(int customerNo);
    public void update(customerVO vo);
	public void delete(int customerNo);
	public void increaseViewcnt(int customerNo);
	public List<customerVO> listAll(String searchOption, String keyword);
}
 