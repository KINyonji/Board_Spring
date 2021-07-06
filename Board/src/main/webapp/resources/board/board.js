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
	var table = $('#boardList').DataTable({
		aaSorting : [], /*초기화 시 정렬 비활성화시키기*/
		
		language : lang_kor, /*글씨 바꾸기*/
		/*stateSave: true, 상태 저장하기 */
		columnDefs : [
			{/*0번째 컬럼 옵션 설정*/
				targets: 0,
				width: '5%',
				searchable: false, //검색
				orderable: false, //컬럼정렬
				className: 'dt-body-center',//dt-body-center: 가운데로 정렬하기
				render: function(data, type, full, meta) {
					return '<input type="checkbox" name="b_id" value="' + $('<div/>').text(data).html() + '" style="cursor:pointer">';
				}
			},
			/* width: 컬럼에따라 크기 조정/ hidden-xs:좁아지면 숨기기 */
			{ targets: [1], width: '5%', },
			{ targets: [2], width: '50%', },
			{ targets: [3], width: '20%', className: 'hidden-xs'},
			{ targets: [4], width: '10%', },
			{ targets: [5], width: '10%', className: 'hidden-xs'}
		]
	});


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

 















