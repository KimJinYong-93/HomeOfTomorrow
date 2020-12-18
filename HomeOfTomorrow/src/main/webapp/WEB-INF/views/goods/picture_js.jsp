<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<form role="imageForm" action="upload/picture.do" method="post" enctype="mulipart/form-data">
	<input id="inputFile" name="pictureFile" type="file" class="form-control" style="display: none;"
			onchange="imageChange_go();">
	<input id="oldFile" type="hidden" name="oldPicture" value="">
	<input type="hidden" name="checkUpload" value="0"> 
</form>

<script>
//사진선택 눌렀을 때
function imageChange_go(){
	$('input[name="checkUpload"]').val(0);
	preViewPicture($('input#inputFile')[0],$("div#pictureView"));
}

	//업로드 버튼을 눌렀을 때
	function upload_go(){
		//alert("upload btn click");
		if($('input[name="pictureFile"]').val()==""){
			alert("이미지를 선택하세요.");
			$('input[name="pictureFile"]').click();
			return;
		};
		
		//form태그 양식을 객체화
		//[0]을 붙여주지 않으면 모든 데이터를 다 가져오는거라 form에 있는 데이터만 가져오려면 [0]을 꼭 붙여줘야한다.
		var form = new FormData($('form[role="imageForm"]')[0]);
		
		//서버로 보냄
		$.ajax({
			url : "<%=request.getContextPath()%>/goods/picture.do",
			data : form,
			type : 'post',
			processData : false,
			contentType : false,
			success : function(data){ //응답코드가 200으로 오면 실행
				//업로드 확인 변수 셋팅
				$('input[name="checkUpload"]').val(1);
				
				//지정된 파일명 저장
				$('input#oldFile').val(data); //이미지 변경시 이것과 비교해서 다르다면 삭제될 파일명(전 파일)
				$('form[role="form"] input[name="picture"]').val(data);
				
				alert("이미지가 업로드 되었습니다.");
			},
			error : function(error){ //응답코드가 200이 아닌 나머지
				alert("현재 이미지 업로드가 불가합니다. \n 관리자에게 연락바랍니다.")
			}
		})
		
	}
	

</script>