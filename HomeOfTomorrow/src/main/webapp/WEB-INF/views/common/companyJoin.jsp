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
				<form class="login100-form validate-form">
					<span class="login100-form-title">
						Company Member Join
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email" style="padding-left:45px;" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" placeholder="Password" style="padding-left:45px;">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
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

					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							<i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
							Back
						</a>
					</div>
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
	</script>
<!--===============================================================================================-->
	<script src="<%=request.getContextPath()%>/resources/Login_v1/js/main.js"></script>

</body>
</html>