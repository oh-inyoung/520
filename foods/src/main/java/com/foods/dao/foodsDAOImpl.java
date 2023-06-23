package com.foods.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.foods.vo.FoodsVO;

@Repository
public class foodsDAOImpl implements foodsDAO {
	//DAO 데이터베이스 처리를 위해 SqlSession 이용
	@Inject
	SqlSession sqlSession;
	String mapper = "foodsMapper.";
		
	public List<FoodsVO> foodsList() {
		//mybatis에서 제공하는 메소드 insert,update,delete,select, selectList(모두조회), selectOne(1개조회)
		
		//return sqlSession.selectList("memberMapper.memberList"); //사용할 맵퍼명과 전달할 값 
		return sqlSession.selectList(mapper+"foodsList"); //사용할 맵퍼명과 전달할 값
	}
	@Override
	public void insertFoods(FoodsVO vo) {
		sqlSession.insert(mapper+"foodsWrite", vo); //사용할 맵퍼명과 전달할 값

	}
	@Override
	public FoodsVO viewFoods(int foodsId) {
		// ""안에는 mapper에 사용할 id 이름, memberId가 전달할 값
		return sqlSession.selectOne(mapper+"foodsView", foodsId); //1개의 값만 조회
	}
	@Override
	public void updateFoods(FoodsVO vo) {
		sqlSession.update(mapper+"foodsUpdate", vo);

	}

	@Override
	public void deleteFoods(int foodsId) {
		sqlSession.delete(mapper+"foodsDelete", foodsId);

	}
	//검색기능
		@Override
		public List<FoodsVO> listAll(int start, int end, String searchOption, String keyword){
			//2개의 변수를 batis에 전달하기 위해서 map 사용
			Map<String, Object> map2 = new HashMap<String, Object>();
			map2.put("searchOption", searchOption);
			map2.put("keyword", keyword);
			map2.put("start", start);
			map2.put("end", end);

			return sqlSession.selectList(mapper+"listAll", map2);
		}
		
		// 07. 게시글 레코드 갯수
	    @Override
	    public int countArticle(String searchOption, String keyword){
	        // 검색옵션, 키워드 맵에 저장
	        Map<String, String> map2 = new HashMap<String, String>();
	        map2.put("searchOption", searchOption);
	        map2.put("keyword", keyword);
	        
			return sqlSession.selectOne(mapper+"countArticle", map2);
			
	    }  	
}
