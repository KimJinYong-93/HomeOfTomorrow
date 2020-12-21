<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	function findAddress(){
		new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    //document.getElementById("address2").value = extraAddr;
                
                } else {
                    $('#address2').val('');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                //document.getElementById('zipcode').value = data.zonecode;
                $('#zipcode').val(data.zonecode);
                //document.getElementById("address1").value = addr;
                $('#address1').val(addr);
                // 커서를 상세주소 필드로 이동한다.
                $('#address2').focus();
            }
        }).open();
    }
	
	//팝업창들 뛰우기
	//새로운 Window창을 Open할 경우 사용되는 함수 ( arg : 주소 , 창타이틀 , 넓이 , 길이 )
	function OpenWindow(UrlStr, WinTitle, WinWidth, WinHeight) {
		winleft = (screen.width - WinWidth) / 2;
		wintop = (screen.height - WinHeight) / 2;
		var win = window.open(UrlStr , WinTitle , "scrollbars=yes,width="+ WinWidth +", " 
								+"height="+ WinHeight +", top="+ wintop +", left=" 
								+ winleft +", resizable=yes, status=yes"  );
		win.focus() ; 
	}

	//팝업창 닫기
	function CloseWindow(){
		if(window.opener) window.opener.location.reload(true);
		window.close();
	}

	// 이미지 미리보기
	// 작성자 : 김형민
	// 작성일 : 2020/11/20 (작성완료)
	function preViewPicture(inputImage,target){

		var fileFormat=
			inputImage.value.substr(inputImage.value.lastIndexOf(".")+1).toUpperCase();
		//이미지 확장자 jpg 확인
		if(fileFormat!="JPG" && fileFormat != "JEPG"){
			alert("이미지는 jpg,jepg 형식만 가능합니다.");
			return;
		} 
		//이미지 파일 용량 체크
		if(inputImage.files[0].size>1024*1024*5){
			alert("사진 용량은 5MB 이하만 가능합니다.");
			return;
		};
		
		//미리보기
		//document.getElementById('inputFileName').value=inputImage.files[0].name;
		$('#inputFileName').text(inputImage.files[0].name);
		if (inputImage.files && inputImage.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	//이미지 미리보기
	        	target.css({'background-image':'url('+e.target.result+')',
					  'background-position':'center',
					  'background-size':'cover',
					  'background-repeat':'no-repeat'
	        		});
	        	
	        }
	        
	        reader.readAsDataURL(inputImage.files[0]);
		}
	}
	function reviewPicture(inputImage,target){

		var fileFormat=inputImage.value.substr(inputImage.value.lastIndexOf(".")+1).toUpperCase();
		//이미지 확장자 jpg 확인
		if(fileFormat!="JPG" && fileFormat != "JEPG"){
			alert("이미지는 jpg,jepg 형식만 가능합니다.");
			$("#uploadFile").val("");
			return;
		} 
		//이미지 파일 용량 체크
		if(inputImage.files[0].size>1024*1024*5){
			alert("사진 용량은 5MB 이하만 가능합니다.");
			$("#uploadFile").val("");
			return;
		};
		
		//미리보기
		//document.getElementById('inputFileName').value=inputImage.files[0].name;
		$('#inputFileName').text(inputImage.files[0].name);
		if (inputImage.files && inputImage.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	//이미지 미리보기
	        	target.css({'background-image':'url('+e.target.result+')',
					  'background-position':'center',
					  'background-size':'contain',
					  'background-repeat':'no-repeat'
	        		});
	        	
	        }
	        
	        reader.readAsDataURL(inputImage.files[0]);
	        $('.select-picture').css('display','block');
		}
	}
	function memberModifyPicture(inputImage,target){

		var fileFormat=inputImage.value.substr(inputImage.value.lastIndexOf(".")+1).toUpperCase();
		//이미지 확장자 jpg 확인
		if(fileFormat!="JPG" && fileFormat != "JEPG"){
			alert("이미지는 jpg,jepg 형식만 가능합니다.");
			$("#uploadFile").val("");
			return;
		} 
		//이미지 파일 용량 체크
		if(inputImage.files[0].size>1024*1024*5){
			alert("사진 용량은 5MB 이하만 가능합니다.");
			$("#uploadFile").val("");
			return;
		};
		
		//미리보기
		//document.getElementById('inputFileName').value=inputImage.files[0].name;
		$('#inputFileName').text(inputImage.files[0].name);
		if (inputImage.files && inputImage.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	//이미지 미리보기
	        	target.css({'background-image':'url('+e.target.result+')',
					  'background-position':'center',
					  'background-size':'contain',
					  'background-repeat':'no-repeat'
	        		});
	        	
	        }
	        
	        reader.readAsDataURL(inputImage.files[0]);
	        $('#pictureDelete').css('display','block');
		}
	}
</script>