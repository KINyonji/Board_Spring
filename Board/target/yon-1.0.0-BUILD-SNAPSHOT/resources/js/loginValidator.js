/* 유효성검사 jquery validation*/

 $(document).ready(function(){
	console.log("유효성검사");
/*--------------------------------------------------------------
					게시글 작성 유효성검사 
--------------------------------------------------------------*/	
  	 $("#loginForm").validate({        
        // 체크할 항목들의 룰 설정
        rules: {
            u_id: {
                required : true,
                rangelength : [3,15]
            },
            u_pw: {
                required : true,
                rangelength : [5,20]
            }
            
        },
        //규칙체크 실패시 출력될 메시지
        messages : {
            u_id: {
                required : "아이디을 입력해주세요",
                rangelength : "제목은 {0}글자에서 {1}자까지 입력 가능합니다",
                maxlength : "15자까지 입력 가능합니다.",
                minlength : "3자 이상으로 늘리세요."
            },
            u_pw: {
                required : "비밀번호를 입력해주세요",
                rangelength : "작성자는 {0}글자에서 {1}자까지 입력 가능합니다",
                maxlength : "20자까지 입력 가능합니다.",
                minlength : "5자 이상으로 늘리세요."
            }
           
        }
    });

});
