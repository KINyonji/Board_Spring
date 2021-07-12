package com.myway.yon.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PaginationDTO {
	
	private int listSize = 10;                //초기값으로 목록개수를 10으로 셋팅

	private int rangeSize = 3;            //초기값으로 페이지범위를 10으로 셋팅

	private int page;

	private int range;

	private int listCnt;

	private int pageCnt;

	private int startPage;

	private int startList;

	private int endList;

	private int endPage;

	private boolean prev;

	private boolean next;
	
	public void pageInfo(int page, int range, int listCnt) {

		this.page = page;
		this.range = range;
		this.listCnt = listCnt;
		
		//전체 페이지수 
		this.pageCnt = (int) Math.ceil(listCnt/listSize);

		//시작 페이지
		this.startPage = (range - 1) * rangeSize + 1 ;

		//끝 페이지
		this.endPage = range * rangeSize;

		//게시판 시작번호
		this.startList = ((page - 1) * listSize)+1;
		
		//게시판 끝 번호
		this.endList = (startList-1) + listSize;

		//이전 버튼 상태
		/*
		    이전 버튼과 상세 버튼의 활성화 여부를 판단하는 구문입니다.
			첫번째 페이지 범위 에서는 [이전] 버튼이 필요 없습니다. 
			따라서 페이지범위가 1일 때는 fales를 설정하고, 1이 아닐때 ture를 설정합니다. 
			[다음] 버튼은 현재 페이지의 마지막 페이지 번호가 전체 페이지 개수 보다 크다면 활성화 하게 만듭니다.
		 */
		this.prev = range == 1 ? false : true;

		//다음 버튼 상태
		this.next = endPage > pageCnt ? false : true;
		if (this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;
		}

	}

}
