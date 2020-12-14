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
	<link rel="icon" type="image/png" href="<%=request.getContextPath()%>/resources/Login_v1/images/icons/favicon.ico"/>
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
				<form class="Join-form validate-form">
					<span class="login100-form-title">
						Company Member Join
					</span>
					<div class="wrap-inputJoin validate-input">
						<input class="inputId" type="text" name="cname" id="id"
							placeholder="Business Number" style="padding-left: 45px;"> <span
							class="focus-inputId"></span> <span class="symbol-input100">
							<i class="fa-Id fa-bold" aria-hidden="true"></i>
						</span>
					</div>
					<button type="button" class="chkBtn" id="idChkbtn" onclick="idCheck_go();" >중복확인</button>
					<span id="idChk" class="valchk" style="display: inline-block;"></span>
					
					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="text" name="cno"
							placeholder="Company Name" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-building" aria-hidden="true"></i>
						</span>
					</div>
					<span id="#" class="valchk" style="display: inline-block;" >유효성체크</span>
					
					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="password" name="manager"
							placeholder="Manager Name" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-user-circle-o" aria-hidden="true"></i>
						</span>
					</div>
					<span id="#" class="valchk" style="display: inline-block;" >유효성체크</span>
					
					<div class="wrap-inputJoin validate-input">
							<input class="join100" type="text" style="width:25%;padding-left: 45px; margin-right: 5px;" placeholder="Phone" disabled="disabled"/>
							<select class="joinSelect" name="phone" style="text-align: center;">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="017">017</option>
								<option value="018">018</option>
							</select>
							<label class="" style="text-align: center;">&nbsp;-&nbsp;</label>										
							<input class="join100" style="width:23%;text-align: center;" name="phone" type="text" />
							<label class="" style="text-align: center;">&nbsp;-</label>
							<input class="join100" style="width:23%;text-align: center;" name="phone" type="text" />		
					<span class="symbol-input100">
							<i class="fa fa-phone" aria-hidden="true" style="z-index: 100"></i>
					</span>
						
					</div>
					<span id="#" class="valchk" style="display: inline-block;" >유효성체크</span>

					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="text" name="email"
							placeholder="Email" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					<span id="#" class="valchk" style="display: inline-block;" >유효성체크</span>


					<div class="wrap-inputJoin validate-input">
						<input class="inputId" type="text" name="cname" id="id"
							placeholder="address1" style="padding-left: 45px;"> <span
							class="focus-inputId"></span> <span class="symbol-input100">
							<i class="fa-Id fa-map-marker" aria-hidden="true"></i>
						</span>
					</div>
					<button type="button" class="chkBtn" id="addChkbtn" onclick="" >주소찾기</button>
					<span id="addressChk" class="valchk" style="display: inline-block;"></span>
					
					<div class="wrap-inputJoin validate-input">
						<input class="input100" type="text" name="address2"
							placeholder="address2" style="padding-left: 45px;"> <span
							class="focus-input100"></span> <span class="symbol-input100">
						</span>
					</div>
					<span id="#마진때문에 넣어놈" class="valchk" style="display: inline-block;" ></span>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Join
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							이미 내일의집 회원이신가요?
						</span>
						<a class="txt2" href="#">
							로그인
						</a>
					</div>

					<div class="text-right p-t-30">
						<a class="txt2" href="#" id="cancelBtn">
							<i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
							Back
						</a>
					</div>
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
		
		var checkedID="";
		
		
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
		
		
	</script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/Login_v1/js/main.js"></script>

</body>
</html>