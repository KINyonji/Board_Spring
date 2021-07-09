/* 게시판 js */

var lang_kor = {
        "decimal" : "",
        "emptyTable" : "데이터가 없습니다.",
        "info" : "_START_ - _END_ (총 _TOTAL_ 개)",
        "infoEmpty" : "0개",
        "infoFiltered" : "(전체 _MAX_ 개 중 검색결과)",
        "infoPostFix" : "",
        "thousands" : ",",
        "lengthMenu" : "_MENU_ 개씩 보기",
        "loadingRecords" : "로딩중...",
        "processing" : "처리중...",
        "search" : "검색 : ",
        "zeroRecords" : "검색된 데이터가 없습니다.",
        "paginate" : {
            "first" : "첫 페이지",
            "last" : "마지막 페이지",
            "next" : "다음",
            "previous" : "이전"
        },
        "aria" : {
            "sortAscending" : " :  오름차순 정렬",
            "sortDescending" : " :  내림차순 정렬"
        }
    };

$(document).ready(function() {
	
/*--------------------------------------------------------------
					게시판 목록 DataTable & 체크박스
--------------------------------------------------------------*/
	var columns = ["B_ID", "B_ID", "B_TITLE", "B_REGDATE", "B_MODIFYDATE", "U_REGNAME", "U_MODIFYNAME", "B_VIEWCNT"];
	var table = $('#boardList').DataTable({
		aaSorting : [], //초기화 시 정렬 비활성화시키기
		lengthChange: true, //페이지 조회 시 row를 변경할 것인지
		pageLength: 10, //lengthChange가 false인 경우 조회 row 수, 정해주는 개수에 따라 ajax로 요청할 때 length의 값이 달라진다.
		lengthMenu : [ [10, 25, 50, -1], [10, 25, 50, "All"] ], // lengthChange가 true인 경우 선택할 수 있는 값 설정
		paginate: true, //페이징 처리를 할 것인지
		pagingType : "full_numbers", //'First', 'Previous', 'Next', 'Last' buttons
		responsive: true, //반응형
        autoWidth: false, //자동 컬럼 폭을 계산
        ordering: true, //정렬기능
        processing: true, //서버와 통신 시 응답을 받기 전이라는 ui를 띄울 것인지 여부
        serverSide: true, //server와 통신여부
        searching: false, //검색기능
		language : lang_kor, //글씨 바꾸기
		/*stateSave: true, 상태 저장하기 */
		ajax : {
			/* "/example" 로 ajax 요청을 하여 dataSrc를 받아옵니다. 그리고 이를 columns으로 넣는 간단한 코드입니다.	*/
            url:"/board/listAjax",
            type: "POST",
            data :  function(pdata){
				JSON.stringify(pdata);
				console.log("JSON.stringify(pdata):"+JSON.stringify(pdata))
			},
  			contentType:"application/json; charset=UTF-8",
            dataType: "JSON",
    	    error:function(request,status,error){
    			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);}
         },
	        columns : [ // 테이블에 맵핑할 리턴 파라미터명 순서
	            {data: "b_id"},
	            {data: "b_id"},
	            {data: "b_title"},
	            {data: "b_regdate"},
	            {data: "u_regname"},
	            {data: "b_viewcnt"}
    	    ],
		
		columnDefs : [
			{/*0번째 컬럼 옵션 설정*/
				targets: 0,
				width: '5%',
				searchable: false, //검색
				orderable: false, //컬럼정렬
				className: 'text-center' ,//text-center: 가운데로 정렬하기
				render: function(data, type, full, meta) {
					return '<input type="checkbox" name="b_id" value="' + data + '" style="cursor:pointer">';
				}
			},
			/* width: 컬럼에따라 크기 조정/ hidden-xs:좁아지면 숨기기 */
			{ targets: [1], width: '5%', className: 'text-center'},
			{ targets: [2], width: '50%'},
			{ 
				targets: [3], 
				width: '20%', 
				className: 'hidden-xs text-center',
				/*render: function(data, type, full, meta) {
					if('B_MODIFYDATE'.length>0){ 
                       return '<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${l.b_regdate }"/>'
                    }
                     return '<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="' + data + '"/>';
				}	*/
			},
			{ targets: [4], width: '10%', },
			{ targets: [5], width: '10%', className: 'hidden-xs text-center'}
		]
	});

	console.log(table.data());
	//search 버튼의 클릭이벤트
	/*처음 2줄은 table을 init하는 과정입니다. 기존 검색으로 table의 파라미터에 설정된 다른
	검색 파라미터 값을 초기화시키는 작업입니다.
	그리고 dataTable의 search() API를 이용하여 searchType과 searchValue를 서버로 전달합니다.
	
	$("#searchBtn").click(function () {
	    var numCols = table.columns().nodes().length;
	    for(var i=0; i<numCols; i++) { table.column(i).search(''); }
	
	    var searchType = $("#searchType").val();
	    var searchValue = $("#searchValue").val();
	
	    table.column(searchType).search(searchValue).draw();
	})*/

	/*----------------------- 전체체크 ------------------------------*/
	
	// id가 select-all을 클릭했을 때, checkbox type의 input의 속성을 checked가 되게 한다.
	$('#select-all').on('click', function() {
		
	
		// Check/uncheck all checkboxes in the table
		/* search: 'applied' 라고 설정하면 필터링된 데이터만 사용하구요. 
		page: 'current' 라고 설정하면 현재 페이지의 데이터만 사용하는 등의 옵션 */
		var rows = table.rows({ 'search': 'applied' }).nodes();

		/*	.prop()는 지정한 선택자를 가진 첫번째 요소의 속성값을 가져오거나 속성값을 추가합니다. 
			주의할 점은 HTML 입장에서의 속성(attribute)이 아닌 JavaScript 입장에서의 속성(property)이라는 것입니다. */
		$('input[type="checkbox"]', rows).prop('checked', this.checked);
	});

	//부분체크
	$('#boardList tbody').on('change', 'input[type="checkbox"]', function() {
		// If checkbox is not checked 만약 체크박스가 체크가 안되어 있으면
		if (!this.checked) {
			//한개의 체크박스 해제시 el이 불러와짐
			var el = $('#select-all').get(0);
			// If "Select all" control is checked and has 'indeterminate' property
			if (el && el.checked && ('indeterminate' in el)) {
				// Set visual state of "Select all" control 
				// as 'indeterminate'
				el.indeterminate = true;
			}
		}
	});

	/* 게시판 목록 DataTable & 체크박스 END */
		
   
/*--------------------------------------------------------------
					? 
--------------------------------------------------------------*/


});

 















