package com.foods.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.foods.dao.customerDAO;
import com.foods.vo.customerVO;
@Service
public class customerServiceImpl implements customerService {
	@Inject
	customerDAO customerDAO;
	
	public List<customerVO> selectList() {		
		return customerDAO.selectList();
	}
 
	
	public void insert(customerVO vo) {
		customerDAO.insert(vo);
	}

	
	public customerVO view(int customerNo) {		
		return customerDAO.view(customerNo);
	}

	
	public void update(customerVO vo) {
		customerDAO.update(vo);
	}

	
	public void delete(int customerNo) {
		customerDAO.delete(customerNo);
	}

	public void increaseViewcnt(int customerNo){
		customerDAO.increaseViewcnt(customerNo);
	}
	public List<customerVO> listAll(String searchOption, String keyword){
		return customerDAO.listAll(searchOption, keyword);
	}
}
