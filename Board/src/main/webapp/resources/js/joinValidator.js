/* 유효성검사 jquery validation*/

 $(document).ready(function(){
	console.log("유효성검사");
/*--------------------------------------------------------------
					게시글 작성 유효성검사 
--------------------------------------------------------------*/	
	$.validator.addMethod("regex", function(value, element, regexp) {
		let re = new RegExp(regexp);
		let res = re.test(value);
		console.log(res, value, regexp, re)
		return res;
	});

  	 $("#joinForm").validate({        
		//에러클래스 이름을 바꾼다
		errorClass: "alert alert-danger",
		
        // 체크할 항목들의 룰 설정
        rules: {
            u_id: {
                required : true,
                rangelength : [3,15],
                maxlength : 15,
                regex : /^[a-zA-Z0-9]{3,15}$/
            },
            u_pw: {
                required : true,
                rangelength : [5,20],
                regex :  /^[A-Za-z0-9]{5,20}$/
            },
            u_name: {
                required : true,
                rangelength : [2,5],
                regex :  /^[가-힣]{2,5}$/
            },
            u_birth: {
                required : true,
                maxlength : [8],
                regex :  /^(19|20)\d{2}(0[1-9]|1[012])(0[1-9]|[12][0-9]|3[0-1])$/
            },
            u_genderMF: {
				required : true,
			},
            u_nickname: {
                required : true,
                rangelength : [1,10],
                regex : /^[a-zA-Z0-9가-힣]{1,10}$/
            },
            u_call: {
                required : true,
                regex : /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/
            },
            u_email: {
				required : true,
				regex : /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i
			}
            
        },
        //규칙체크 실패시 출력될 메시지
        messages : {
            u_id: {
                required : "아이디을 입력해주세요",
                rangelength : "아이디는 {0}자에서 {1}자까지 입력 가능합니다",
                maxlength : "15자까지 입력 가능합니다.",
                regex : "영문, 숫자만 사용(3~15자 이내)"
            },
            u_pw: {
                required : "비밀번호를 입력해주세요",
                rangelength : "비밀번호는 {0}자에서 {1}자까지 입력 가능합니다",
                maxlength : "20자까지 입력 가능합니다.",
                regex : "영문, 숫자 조합(5~20자 이내)"
            },
            u_name: {
                required : "이름을 입력해주세요",
                rangelength : "이름은 {0}글자에서 {1}자까지 입력 가능합니다",
                maxlength : "5자까지 입력 가능합니다.",
                regex : "한글만 사용(2~5자 이내)"
            },
            u_birth: {
                required : "생년월일을 입력해주세요",
                rangelength : "생년월일은 {0}자까지 입력 가능합니다",
                maxlength : "8자까지 입력 가능합니다.",
                regex : "숫자만 사용(8자)"
            },
            u_genderMF: {
				required : "성별을 선택해주세요",
			},
            u_nickname: {
                required : "닉네임을 입력해주세요",
                rangelength : "닉네임은 {0}글자에서 {1}자까지 입력 가능합니다",
                maxlength : "10자까지 입력 가능합니다.",
                regex : "한글, 영문, 숫자 사용(1~10자 이내)"
            },
            u_call: {
                required : "전화번호를 입력해주세요",
                regex : "- 포함해서 입력해주세요."
            },
            u_email: {
				required : "이메일을 입력해주세요",
				regex : "이메일 형식으로 입력해주세요."
			}
        },
        
        //에러 위치
        //error : 에러를 표현하기 위해 추가되는 <label class="error">요소
        //element : validation이 실패한 요소
        errorPlacement : function(error, element){
			if(element.is(":radio")){
				error.appendTo(element.parent("div").parent("td").next("td"));
			}else{
				error.appendTo(element.parent("td").next("td"));
			}
		}
    });

});
