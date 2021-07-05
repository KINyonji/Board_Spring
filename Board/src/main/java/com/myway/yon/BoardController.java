package com.myway.yon;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myway.yon.domain.BoardDTO;
import com.myway.yon.service.BoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping(value = "/board")
@Slf4j
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private BoardService boardService;
	
	@Autowired
	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}
	
	//게시판 목록 조회
	@RequestMapping(value = "/list")
	public String boardList(Model model) {
		model.addAttribute("list", boardService.listAll());
		System.out.println("boardService.listAll() :"+boardService.listAll());
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
	public String boardView(int b_id, Model model) {
		model.addAttribute("list", boardService.viewByBid(b_id));
		return "board/boardView";
	}
	
	//글 수정하기
	@GetMapping(value = "/update")
	public String boardUpdate(int b_id, Model model) {
		model.addAttribute("list", boardService.selectByBid(b_id));
		return "board/boardUpdate";
	}
	
	//글 수정하기 확인
	@PostMapping(value = "/updateOk")
	public String boardUpdateOk(BoardDTO dto, Model model) {
		model.addAttribute("result", boardService.update(dto));
		return "board/boardUpdateOk";
	}
	
	//글 삭제하기
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public Object boardDelete( @RequestParam(value="checkboxList[]") List<Integer> checkboxList, Model model, BoardDTO dto) {
		
		System.out.println("=checkboxList=");
		System.out.println(checkboxList);
        for(Integer CL : checkboxList) {
        	
        	System.out.println(CL);
//        	System.out.println(CL.length());
            
        }
        
//        //List<String>에서 String [] 으로 변황
//        String[] arry = checkboxList.toArray(new String[checkboxList.size()]);
//        System.out.println("=arry="+arry);
//        
//        //String[]에서 Int[]로 변환
//        int[] nums = Arrays.stream(arry).mapToInt(Integer::parseInt).toArray();        
//        System.out.println("=nums="+Arrays.toString(nums));
       
        
        
//		dto.setCheckList(checkboxList);
//		model.addAttribute("result", boardService.deleteByBid(checkboxList));
		//리턴값
        Map<String, Object> result = new HashMap<String, Object>();
        
//        List<Integer> idList = new ArrayList<>();
//        for (int i = 0; i < checkboxList.lenght; i++) {
//			idList.add(Integer.parseInt(checkboxList[i]));
//		}

        
        result.put("checkboxList", checkboxList);
        
        return boardService.deleteByBid(result);
	}

}
