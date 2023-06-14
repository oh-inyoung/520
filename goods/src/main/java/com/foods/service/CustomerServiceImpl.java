package com.foods.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.foods.dao.CustomerDAO;
import com.foods.vo.CustomerVO;
@Service
public class CustomerServiceImpl implements CustomerService {
	@Inject
	CustomerDAO CustomerDAO;
	
	public List<CustomerVO> selectList() {		
		return CustomerDAO.selectList();
	}

	
	public void insert(CustomerVO vo) {
		CustomerDAO.insert(vo);
	}

	
	public CustomerVO view(int CustomerNo) {		
		return CustomerDAO.view(CustomerNo);
	}

	
	public void update(CustomerVO vo) {
		CustomerDAO.update(vo);
	}

	
	public void delete(int CustomerNo) {
		CustomerDAO.delete(CustomerNo);
	}
	//추가(응용)
	public void increaseViewcnt(int CustomerNo){
		CustomerDAO.increaseViewcnt(CustomerNo);
	}
	public List<CustomerVO> listAll(String searchOption, String keyword){
		return CustomerDAO.listAll(searchOption, keyword);
	}
}
