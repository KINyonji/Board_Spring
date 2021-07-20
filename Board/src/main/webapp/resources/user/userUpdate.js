/* 유저 js */

$(document).ready(function() {

});

/*--------------------------------------------------------------
					닉네임 중복 확인
--------------------------------------------------------------*/
var nickNameChk = true;

function u_nicknameCheck(){
	let u_nnValue = $("#u_nickname").val();
	if(!u_nnValue){
		//값이 비어있을때
		Swal.fire("입력된 값이 없습니다.","","warning"); 
	}else{
		$.ajax({
			type : "POST",
			url : "nnCheck",
			data : {
				u_nickname : u_nnValue
			},
			success : function(data) {
				console.log(data);
				if(data == "0"){				
					Swal.fire({
					  title: '사용가능한 닉네임입니다.\n사용하시겠습니까?',
					  icon: 'question',
					  showCancelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: '사용하기',
					  cancelButtonText: '취소'
					}).then((use) => {
						if(use.isConfirmed){
							nickNameChk = true;
						}
					})
				} else {
					Swal.fire("중복된 닉네님입니다. \n 다른 닉네임을 입력해주세요.","","warning"); 
					nickNameChk = false;
				}
			}
		})
	}
}

/*--------------------------------------------------------------
			중복확인 후 닉네임을 다시 입력했을 경우
--------------------------------------------------------------*/

function NNDuplicationConfirm(){
	nickNameChk = false;
}

/*--------------------------------------------------------------
					아이디와 닉네임을 중복확인 했는지 확인하기
--------------------------------------------------------------*/
function falseChk(){
	if(nickNameChk == false){
		Swal.fire("닉네임 중복확인 해주세요.","","warning"); 
		return false;
	}else{
			return true;
	}
}

/*--------------------------------------------------------------
					비밀번호 확인 체크
--------------------------------------------------------------*/
$("#alert-success").hide();
$("#alert-danger").hide();

$("#pwChk").keyup(function() {
	var pw = $("#u_pw").val();
	var pwChk = $("#pwChk").val();
		
	if (pw == pwChk) {
		$("#pwChk").css('margin-bottom','5px');
		$("#alert-success").css('margin-bottom','0px');
		$("#alert-success").show();
		$("#alert-danger").hide();
		
	} else if (pw !== pwChk)  {
		$("#pwChk").css('margin-bottom','5px');
		$("#alert-danger").css('margin-bottom','0px');
		$("#alert-success").hide();
		$("#alert-danger").show();
		
		return false;
	}
});


