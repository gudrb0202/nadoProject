<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NADO</title>
<link rel="stylesheet" href="/nado/resources/css/bootstrap.css">
<style type="text/css">
.error {
	color: darkred;
}
</style>

</head>
<body>
	<div class="container" style="margin-top: 60px;">
		<div class="row">
			<div class="col-lg-4"></div>
			<div class="col-lg-4" style="margin-top: 30px;">
			<h3 class="text-info text-center" style="padding:30px;">NADO</h3>
				<div class="card">					
					<div class="card-body">
						<form method="post" id="loginForm">
							<div id="messageBox" style="height: 60px;"></div>
							<div class="form-group">
								<input type="text" class="form-control" name="user_id" id="user_id"
									placeholder="아이디">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="user_pwd"
									id="user_pwd" placeholder="비밀번호">
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary form-control">로그인</button>
							</div>
						</form>
						<a href="/nado/views/groupware/employee/employeeEnroll.jsp">회원가입</a>
					</div>		
				</div>
					<div class="col-lg-4"></div>
				<!-- card 끝 -->

				<!-- card-body 끝 -->			
			</div>
			<!-- col-lg-4 끝 -->
		</div>
		<!-- row 끝 -->
	</div>
	<!-- 컨테이너 끝 -->
<script src="/nado/resources/js/jquery-3.4.1.min.js"></script>
<script src="/nado/resources/js/jquery.validate.js"></script>
<script src="/nado/resources/js/additional-methods.js"></script>
<script src="/nado/resources/js/messages_ko.js"></script>
<script src="/nado/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="/nado/resources/js/jun.js"></script>
</body>
</html>