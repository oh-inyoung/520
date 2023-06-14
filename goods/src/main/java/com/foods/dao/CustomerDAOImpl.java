package com.foods.dao;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.foods.vo.CustomerVO;
@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	@Inject
	SqlSession sqlSession;
	
	String  mapper="CustomerMapper."; //namespace를 지정
	
	@Override
	public List<CustomerVO> selectList() {
		return sqlSession.selectList(mapper+"selectList");
	}

	@Override
	public void insert(CustomerVO vo) {
		sqlSession.insert(mapper+"insert", vo); //''안에 사용할 id

	}

	@Override
	public CustomerVO view(int CustomerNo) {
		return sqlSession.selectOne(mapper+"view", CustomerNo);
	}

	@Override
	public void update(CustomerVO vo) {
		sqlSession.update(mapper+"update", vo);

	}

	@Override
	public void delete(int CustomerNo) {
		sqlSession.delete(mapper+"delete", CustomerNo);

	}

	@Override
	public void increaseViewcnt(int CustomerNo) {
		sqlSession.update(mapper+"increaseViewcnt", CustomerNo); //해당 게시물의 조회수를 증가

	}

	@Override
	public List<CustomerVO> listAll(String searchOption, String keyword) {
		//2개의 변수를 batis에 전달하기 위해서 map사용
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchOption", searchOption);
		map.put("keyword", keyword);

		return sqlSession.selectList(mapper+"listAll",map);
	}

}
