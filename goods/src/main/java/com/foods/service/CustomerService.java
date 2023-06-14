package com.foods.service;

import java.util.List;

import com.foods.vo.CustomerVO;

public interface CustomerService {
	public List<CustomerVO> selectList();
    public void insert(CustomerVO vo);
	public CustomerVO view(int CustomerNo);
    public void update(CustomerVO vo);
	public void delete(int CustomerNo);
	public void increaseViewcnt(int CustomerNo);
	public List<CustomerVO> listAll(String searchOption, String keyword);
}
