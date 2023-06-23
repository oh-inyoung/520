package com.foods.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.foods.service.Pager;
import com.foods.service.foodsService;
import com.foods.vo.FoodsVO;

@Controller
public class foodsController {
	
	private static final Logger logger = LoggerFactory.getLogger(foodsController.class);
	@Autowired
	private foodsService foodsservice;
	
	// 상품 관리
	@RequestMapping("/foods/list")
	public String memberList(Model model) {
		// 목록을 조회해서 전달
		List<FoodsVO> list = foodsservice.FoodsList();
		model.addAttribute("list", list);
		
		return "foods_list";
	}
	
	@RequestMapping("foods/write")
	public String memberwriteView() {
		return "foods_write";
	}
	
	@RequestMapping(value="foods/write", method=RequestMethod.POST)
	public String foodsInsert(@ModelAttribute FoodsVO vo) {
		System.out.println("상품 등록");
		foodsservice.insertFoods(vo);
		
		return "redirect:/foods/list";
	}
	
	@RequestMapping("foods/view") 
	public String foodsView(@RequestParam int foodsId, Model model) {
		System.out.println("상품 상세보기");
		FoodsVO data = foodsservice.viewFoods(foodsId);
		model.addAttribute("dto", data);
		
		return "foods_view";
	}
	
	@RequestMapping(value = "foods/update", method=RequestMethod.POST)
	public String foodsUpdate(@ModelAttribute FoodsVO vo) {
		foodsservice.updateFoods(vo);
		return "redirect:/foods/list"; 
	}
	
	@RequestMapping(value ="foods/delete", method=RequestMethod.POST)
	public String foodsDelete(@ModelAttribute FoodsVO vo, Model model) {
		int foodsId = vo.getFoodsId();
		foodsservice.deleteFoods(foodsId);
		return "redirect:/foods/list"; 
	}
	
	/* 첨부 파일 업로드 */
	@RequestMapping(value = "foods/fileupload", method = RequestMethod.POST)
    public String fileupload(@RequestParam("file") MultipartFile file, HttpServletRequest request,FoodsVO vo) {
    	String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드!
		long size = file.getSize(); //파일 사이즈
		
		System.out.println("파일명 : "+fileRealName);
		System.out.println("용량크기(byte) : "+size);
	 
		String webappRoot = request.getServletContext().getRealPath("/");		//서버 경로 확인
		String folder = "resources" + File.separator + "images" + File.separator; //\resource\images 저장폴더 지정
		System.out.println(webappRoot+folder);
		
		//배포위치에 저장
		String filename = webappRoot + folder + fileRealName; //서버위치+저장폴더+파일명	
		try {
			file.transferTo(new File(filename)); //전달받은 파일을 지정된 위치에 파일명으로 저장한다.	
		} catch (Exception e) {
			// TODO: handle exception
		}
		String path2 ="C:\\Users\\woori\\Documents\\workspace-sts-3.9.18.RELEASE\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\foods\\resources\\images";
		//개발위치에 저장				
		String path = "C:\\Users\\woori\\git\\520\\foods\\src\\main\\webapp\\resources\\imgUpload";
		String filename2 =path+File.separator+fileRealName;
		
		try {
			file.transferTo(new File(filename2));	
		} catch (Exception e) {
			// TODO: handle exception
		}
		String[] splitPath = filename2.split("webapp\\\\"); // 두 개의 역슬래시를 사용하여 이스케이프 처리
		String remainingPath = splitPath[1].replaceFirst("\\\\", ""); // 첫 번째 역슬래시(\) 제거

		System.out.println(remainingPath);
		vo.setFoodsImg(remainingPath);
		System.out.println("상품 등록");
		foodsservice.insertFoods(vo);
		/* System.out.println(filename2); */
    	return "redirect:/foods/list";
    }

	public ModelAndView list(@RequestParam(defaultValue="foodsName") String searchOption,
			@RequestParam(defaultValue="") String keyword,
			@RequestParam(defaultValue="1") int curPage) throws Exception {
		
		// 레코드의 갯수 계산
		int count = foodsservice.countArticle(searchOption, keyword);
		
		// 페이지 나누기 관련 처리
		Pager foodsPager = new Pager(count, curPage);
		int start = foodsPager.getPageBegin()-1;
		int end = foodsPager.getPageEnd();
		
		List<FoodsVO> list = foodsservice.listAll(start, end, searchOption, keyword);
		
		// 데이터를 맵에 저장
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("list", list); // list
		map2.put("count", count); // 레코드의 갯수
		map2.put("searchOption", searchOption); // 검색옵션
		map2.put("keyword", keyword); // 검색키워드
		map2.put("foodsPager", foodsPager);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("map2", map2); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("foods/list"); // 뷰를 list.jsp로 설정
		
		return mav; // list.jsp로 List가 전달된다.
	}
}
