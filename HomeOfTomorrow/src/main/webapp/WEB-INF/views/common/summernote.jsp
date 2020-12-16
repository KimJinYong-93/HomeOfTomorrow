<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
function SmartEditor_summernote(target){
	target.summernote({
			placeholder:'여기에 내용을 적으세요',
			height : 250,
			disableResizeEditor : true,
			callbacks:{
				onImageUpload : function(files, editor, welEditable){ 
					//files : 이미지 업로드를 한번에 여러개 할 수 있어서
					for(var i = files.length -1; i > -1; i--){
						if(files[i].size > 1024 * 1024 * 5){  							
						alert("이미지는 5MB미만이어야합니다.");
						return;
						}
					}
		
					//파일 서버로 보내기(회원 등록에서 이미지 서버로 보냈던거랑 똑같다.)
					for(var i = files.length -1; i >= 0; i--){
						sendFile(files[i], this);
					}
				},
				onMediaDelete : function(target){
					//alert("image delete");
					var answer = confirm('정말 이미지를 삭제하시겠습니까?');
					if(answer){
						deleteFile(target[0].src);
					}
				}
			}
		});
}

//파일 서버로 보내는 함수.
function sendFile(file, el){
	var form_data = new FormData();
	form_data.append("file", file);
	$.ajax({
		data:form_data,
		type:'POST',
		url:'<%=request.getContextPath()%>/uploadImg.do',
		contentType:false,
		processData:false,
		success:function(img_url){
			$(el).summernote('editor.insertImage', img_url);
		}
	})
}

function deleteFile(src){
	var splitSrc = src.split("=");
	var fileName = splitSrc[splitSrc.length-1]; //무조건 마지막꺼 주려고 length -1함
	
	//alert(fileName);
	var fileData =  {
			fileName:fileName
	}
	
	$.ajax({
		url:"<%=request.getContextPath()%>/deleteImg.do",
		data : JSON.stringify(fileData),
		contentType : "application/json",
		type:"post",
		success:function(res){
			console.log(res);
		}
	});
	
}
</script>