<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
	<title>내일의집</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/Login_v1/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/Login_v1/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/Login_v1/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/Login_v1/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/Login_v1/css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/Login_v1/css/main.css">
<!--===============================================================================================-->
</head>

<body>
	
	<div class="limiter">
		<div class="container-login100" >
			<div class="wrap-join100" >
				<form class="Join-form validate-form" action="join" method="post" role="memberCform">
					<span class="login100-form-title">
						Company Member Join
					</span>
					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="text" name="cno" id="cno"
							placeholder="Business Number" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-bold" aria-hidden="true"></i>
						</span>
					</div>
					<span id="cnoChk" class="valchk" style="display: inline-block;" ></span>
					
					<div class="wrap-inputJoin validate-input">
						<input class="inputId" type="text" name="id" id="id"
							placeholder="ID" style="padding-left: 45px;"> <span
							class="focus-inputId"></span> <span class="symbol-input100">
							<i class="fa-Id fa-id-card" aria-hidden="true"></i>
						</span>
					</div>
					<button type="button" class="chkBtn" id="idChkbtn" onclick="idCheck_go();" >중복확인</button>
					<span id="idChk" class="valchk" style="display: inline-block;"></span>
					
					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="password" name="pwd" id="pwd"
							placeholder="Password" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-key" aria-hidden="true"></i>
						</span>
					</div>
					<span id="pwdChk" class="valchk" style="display: inline-block;" ></span>
					
					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="password" name="pwd2" id="pwd2"
							placeholder="Invalidate Password" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-check-square" aria-hidden="true"></i>
						</span>
					</div>
					<span id="pwdChk2" class="valchk" style="display: inline-block;" ></span>
					
					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="text" name="name" id="name"
							placeholder="Company Name" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-building" aria-hidden="true"></i>
						</span>
					</div>
					<span id="nameChk" class="valchk" style="display: inline-block;" ></span>
					
					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="text" name="manager" id="manager"
							placeholder="Manager Name" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-user-circle-o" aria-hidden="true"></i>
						</span>
					</div>
					<span id="managerChk" class="valchk" style="display: inline-block;" ></span>
					
					<div class="wrap-inputJoin validate-input">
							<input class="join100" type="text" style="width:25%;padding-left: 45px; margin-right: 5px;" placeholder="Phone" disabled="disabled"/>
							<select class="joinSelect" name="hp" style="text-align: center;">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="017">017</option>
								<option value="018">018</option>
							</select>
							<label class="" style="text-align: center;">&nbsp;-&nbsp;</label>										
							<input class="join100" style="width:23%;text-align: center;" name="hp" type="text" id="phone1" maxlength="4"/>
							<label class="" style="text-align: center;">&nbsp;-</label>
							<input class="join100" style="width:23%;text-align: center;" name="hp" type="text" id="phone2" maxlength="4"/>		
					<span class="symbol-input100">
							<i class="fa fa-phone" aria-hidden="true" style="z-index: 100"></i>
					</span>
						
					</div>
					<span id="#" class="valchk" style="display: inline-block;" ></span>

					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="text" name="email" id="email"
							placeholder="Email" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<span id="emailChk" class="valchk" style="display: inline-block;" ></span>

					<div class="wrap-inputJoin validate-input">
							<input class="join100" type="text" style="width:25%;padding-left: 45px; margin-right: 5px;" placeholder="ZipCode" disabled="disabled"/>
							<input class="join100" style="width:53%; text-align: center;" name="zipcode" type="text" id="zipcode" readonly/>
					<span class="symbol-input100">
							<i class="fa fa-map-marker" aria-hidden="true" style="z-index: 100"></i>
					</span>
						<button type="button" class="chkBtn" id="addChkbtn" style="float: right;" onclick="findAddress()">주소찾기</button>
					</div>
					<span id="emailChk" class="valchk" style="display: inline-block;"></span>
					
					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="text" name="address1" id="address1"
							placeholder="address1" style="padding-left: 45px;" readonly> <span
							class="focus-input100"></span> <span class="symbol-input100">
						</span>
					</div>
					<span id="#마진때문에 넣어놈" class="valchk" style="display: inline-block;"></span>
					
					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="text" name="address2" id="address2"
							placeholder="address2" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
						</span>
					</div>
					<span id="#마진때문에 넣어놈" class="valchk" style="display: inline-block;"></span>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="button" onclick="submit_go();">
							Join
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							이미 내일의집 회원이신가요?
						</span>
						<a class="txt2" href="loginForm">
							로그인
						</a>
					</div>

					<div class="text-right p-t-30">
						<a class="txt2" href=joinForm" id="cancelBtn">
							<i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
							Back
						</a>
					</div>
					<input type="hidden" name="authority" value="ROLE_COMPANY">
					<input type="hidden" name="gb" value="${gb }">
				</form>
			
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="<%=request.getContextPath()%>/resources/Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/Login_v1/vendor/bootstrap/js/popper.js"></script>
	<script src="<%=request.getContextPath()%>/resources/Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/Login_v1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/Login_v1/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
		$('#cancelBtn').on('click',function(e){
			history.go(-1);
			$('#id').val("");
			$('#pwd').val("");
			$('#name').val("");
			$('#email').val("");
		});
		
		// id 정규식 체크
		$('#id').on('keyup',function(){
			idval = $('#id').val().trim();
			idreg = /^[a-z][a-z0-9]{3,11}$/;
			if(idreg.test(idval)){
				$('#idChk').text('사용가능한 id입니다.').css({'color':'#6072f2','font-size':'13px'});
			}else{
				$('#idChk').text('영문,숫자를 포함한 4글자~12글자 사이로 입력해주세요.').css({'color':'#fb7d7a','font-size':'13px'});
			}	
		});
		
		var checkedID = "";
		var input_ID = $('#id');
		
		function idCheck_go(){	// 아이디 중복체크
			
			if(input_ID.val() == ""){
				alert("아이디를 입력하세요.");
				input_ID.focus();
				return;
			}
			
			var data = {id : input_ID.val().trim()};
			
			$.ajax({
				url : "<%=request.getContextPath()%>/common/idCheck",
				data : data,
				type : 'post',
				success : function(result){
					if(result){
						alert("사용 가능한 아이디입니다.");
						checkedID = result;
						$('#id').val(checkedID);
					}else{
						alert("중복된 아이디 입니다.");
						$('#id').focus();
					}
				},
				error : function(error){
					alert("시스템 장애로 중복확인이 거부되었습니다.\n관리자에게 문의해주세요.");
				}
			})
		}
		
		// 비밀번호 정규식 체크
		$('#pwd').on('keyup',function(){
			pwdval = $('#pwd').val().trim();
			pwdreg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,15}$/;
			if(pwdreg.test(pwdval)){
				$('#pwdChk').text('사용가능한 비밀번호입니다.').css({'color':'#6072f2','font-size':'13px'});
			}else{
				$('#pwdChk').text('영소문자, 영대문자, 숫자, 특수문자를 포함한 8~15글자 사이로 입력해주세요.').css({'color':'#fb7d7a','font-size':'13px'});
			}	
		});
		
		// 비밀번호 확인 체크
		$('#pwd2').on('keyup', function(){
			pwdval = $('#pwd').val().trim();
			pwd2val = $('#pwd2').val().trim();
			if(pwdval == pwd2val){
				$('#pwdChk2').text('입력하신 비밀번호와 일치합니다.').css({'color':'#6072f2','font-size':'13px'});
			}else{
				$('#pwdChk2').text('입력하신 비밀번호와 일치하지 않습니다. 다시 확인해주세요.').css({'color':'#fb7d7a','font-size':'13px'});
			}
		});
		
		// 전화번호 4자리씩 체크
		$('#phone1').on('keyup', function(){
			phone1val = $('#phone1').val().trim();
			if(phone1val.length == 4){
				$('#phone2').focus();
			}
		})
		
		// 이메일 정규식 체크
		$('#email').on('keyup',function(){
			emailval = $('#email').val().trim();
			emailreg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			if(emailreg.test(emailval)){
				$('#emailChk').text('사용가능한 이메일입니다.').css({'color':'#6072f2','font-size':'13px'});
			}else{
				$('#emailChk').text('올바르지 않은 이메일 형식입니다. 다시 확인해주세요.').css({'color':'#fb7d7a','font-size':'13px'});
			}	
		});
		
		function submit_go(){
			 /* var uploadCheck = $('input[name="checkUpload"]').val();
			 if(!(uploadCheck > 0)){
				 alert("이미지 업로드는 필수입니다.")
				 //$('input[name="pictureFile"]').click();
				 return;
			 } */
			 
			 if($('input[name ="id"]').val() == ""){
				 alert("아이디는 필수 입니다.");
				 return;
			 }
			 if($('input[name ="id"]').val() != checkedID){ //중복확인하고 다른아이디를 다시적을 경우가 있어서.
				 alert("아이디 중복확인이 필요합니다.");
				 return;
			 }
			 if($('input[name ="pwd"]').val() == ""){
				 alert("패스워드는 필수입니다.");
				 return;
			 }
			 if($('input[name ="name"]').val() == ""){
				 alert("이름은 필수입니다.");
				 return;
			 }
			 if($('input[name ="zipcode"]').val() == ""){
				 alert("우편번호는 필수입니다.");
				 return;
			 }
			 if($('input[name ="address1"]').val() == ""){
				 alert("주소는 필수입니다.");
				 return;
			 }
			 
			 var form = $('form[role="memberCform"]');
			 form.submit();
		}
		
		
	</script>
	<%@ include file="/WEB-INF/views/common/common_js.jsp" %>
	<script src="<%=request.getContextPath()%>/resources/Login_v1/js/main.js"></script>

</body>
</html>