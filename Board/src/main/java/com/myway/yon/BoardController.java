package com.myway.yon;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myway.yon.domain.board.BoardDTO;
import com.myway.yon.domain.board.PageMaker;
import com.myway.yon.domain.board.SearchCriteria;
import com.myway.yon.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Controller  //Web MVC 코드에 사용되는 어노테이션 
@RequestMapping(value = "/board")
@Slf4j
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private BoardService boardService;
	
	@Autowired
	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	// 게시판 목록 조회
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String table(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(boardService.listCount(scri));

		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list", boardService.listAll(scri));
		System.out.println("boardService.listAll(scri) :"+boardService.listAll(scri));
		System.out.println();
		model.addAttribute("page",scri.getPage());
		return "board/boardList";
	}
	
	//글쓰기
	@RequestMapping(value = "/write")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	//글쓰기 확인
	@PostMapping(value = "/writeOk")
	public String boardWriteOk(BoardDTO dto, Model model) {
		model.addAttribute("result", boardService.insert(dto));
		return "board/boardWriteOk";
	}
	
	//글 상세보기
	@RequestMapping(value = "/view")
	public String boardView(int b_id, Model model, @ModelAttribute("scri") SearchCriteria scri) {
		model.addAttribute("list", boardService.viewByBid(b_id));
		model.addAttribute("scri", scri);
		return "board/boardView";
	}
	
	//글 수정하기
	@GetMapping(value = "/update")
	public String boardUpdate(int b_id, Model model, @ModelAttribute("scri") SearchCriteria scri) {
		model.addAttribute("list", boardService.selectByBid(b_id));
		model.addAttribute("scri", scri);
		return "board/boardUpdate";
	}
	
	//글 수정하기 확인
	@PostMapping(value = "/updateOk")
	public String boardUpdateOk(BoardDTO dto, Model model) {
		model.addAttribute("result", boardService.update(dto));
		return "board/boardUpdateOk";
	}
	
	//글 삭제하기
	@RequestMapping(value = "/deleteOk")
	public String boardDelete( int b_id, Model model, @ModelAttribute("scri") SearchCriteria scri) {    
		model.addAttribute("result", boardService.deleteByBid(b_id));
		return "board/boardDeleteOk";
	}
	
	//체크박스 글 삭제하기
	@PostMapping(value = "/delete")
	@ResponseBody
	public Object boardDeleteCk( @RequestParam(value="checkboxList[]") List<Integer> checkboxList, Model model, BoardDTO dto) {
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("checkboxList", checkboxList);      
        boardService.deleteByBid(result);        
        return null;
	}
}