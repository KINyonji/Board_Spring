/* 유효성검사 jquery validation*/

 $(document).ready(function(){
	console.log("유효성검사");
/*--------------------------------------------------------------
					게시글 작성 유효성검사 
--------------------------------------------------------------*/	
  	 $("#writeForm").validate({        
        // 체크할 항목들의 룰 설정
        rules: {
            b_title: {
                required : true,
                rangelength : [1,100]
            },
            u_regID: {
                required : true,
                rangelength : [1,6]
            },
            u_modifyID: {
				required : true,
                rangelength : [1,6]
			}
            
        },
        //규칙체크 실패시 출력될 메시지
        messages : {
            b_title: {
                required : "제목을 입력해주세요",
                rangelength : "제목은 {0}글자에서 {1}자까지 입력 가능합니다",
                maxlength : "50글자까지 입력 가능합니다."
            },
            u_regID: {
                required : "작성자를 입력해주세요",
                rangelength : "작성자는 {0}글자에서 {1}자까지 입력 가능합니다"
            },
            u_modifyID: {
                required : "작성자를 입력해주세요",
                rangelength : "작성자는 {0}글자에서 {1}자까지 입력 가능합니다"
            }
           
        }
    });

});
