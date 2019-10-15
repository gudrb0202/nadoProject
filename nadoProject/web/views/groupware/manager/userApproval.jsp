<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="employee.model.vo.Employee, java.util.ArrayList"%>
<%
	Employee loginEmp = (Employee) session.getAttribute("loginEmp"); //267, 321 사용자 프로필
	ArrayList<Employee> list = (ArrayList<Employee>)request.getAttribute("list");  //411
	int listSize = list.size();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>NADO</title>
<style>

.inbox{
border: none; background: transparent;

}
	.popup{
	position:absolute; left:50%; top:50%; transform:translate(-50%, -50%);
	width:1000px; height:650px; box-shadow: 0 0 10px rgba(0,0,0,0.5);
	border-radius: 5px; text-align: center; padding:20px; background:#fff; opacity:0;}
	
	.pop{
		display:inline-block;
		width: 100px;
		height: 30px;
		border :1px solid black;
		text-decoration:none;
	}
	
	.popup:target{
	opacity :10;
	z-index:5;
	}
	
	#pop_left{
	width:50%;
	height:550px;
	float: left;
	}
	
	#pop_right{
	width:50%;
	height:550px;
	float: right;
	}
</style>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="/nado/resources/groupware/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome 사이드 메뉴 앞에 아이콘 생성됨-->
<link rel="stylesheet"
	href="/nado/resources/groupware/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="/nado/resources/groupware/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style 전체적인 테마스타일 바뀜 왼쪽 사이드 메뉴도 바뀜-->
<link rel="stylesheet"
	href="/nado/resources/groupware/dist/css/AdminLTE.min.css">

<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. 색상들 변경됨-->
<link rel="stylesheet"
	href="/nado/resources/groupware/dist/css/skins/_all-skins.min.css">
<!-- Morris chart -->
<link rel="stylesheet"
	href="/nado/resources/groupware/bower_components/morris.js/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="/nado/resources/groupware/bower_components/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="/nado/resources/groupware/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="/nado/resources/groupware/bower_components/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="/nado/resources/groupware/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			<a href="/nado/views/groupware/main.jsp" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>N</b>D</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>NADO</b>Groupware</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<li class="dropdown messages-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 4 messages</li>
								<li>
									<!-- inner menu: contains the actual data 오른쪽 위 메시지 메뉴-->
									<ul class="menu">
										<li>
											<!-- start message --> <a href="#">
												<div class="pull-left">
													<img
														src="/nado/resources/groupware/dist/img/user2-160x160.jpg"
														class="img-circle" alt="User Image">
												</div>
												<h4>
													Support Team <small><i class="fa fa-clock-o"></i> 5
														mins</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a>
										</li>
										<!-- end message -->
										<li><a href="#">
												<div class="pull-left">
													<img
														src="/nado/resources/groupware/dist/img/user3-128x128.jpg"
														class="img-circle" alt="User Image">
												</div>
												<h4>
													AdminLTE Design Team <small><i
														class="fa fa-clock-o"></i> 2 hours</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
										<li><a href="#">
												<div class="pull-left">
													<img
														src="/nado/resources/groupware/dist/img/user4-128x128.jpg"
														class="img-circle" alt="User Image">
												</div>
												<h4>
													Developers <small><i class="fa fa-clock-o"></i>
														Today</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
										<li><a href="#">
												<div class="pull-left">
													<img
														src="/nado/resources/groupware/dist/img/user3-128x128.jpg"
														class="img-circle" alt="User Image">
												</div>
												<h4>
													Sales Department <small><i class="fa fa-clock-o"></i>
														Yesterday</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
										<li><a href="#">
												<div class="pull-left">
													<img
														src="/nado/resources/groupware/dist/img/user4-128x128.jpg"
														class="img-circle" alt="User Image">
												</div>
												<h4>
													Reviewers <small><i class="fa fa-clock-o"></i> 2
														days</small>
												</h4>
												<p>Why not buy a new awesome theme?</p>
										</a></li>
									</ul>
								</li>
								<li class="footer"><a href="#">See All Messages</a></li>
							</ul></li>
						<!-- Notifications: style can be found in dropdown.less -->
						<li class="dropdown notifications-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 10 notifications</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li><a href="#"> <i class="fa fa-users text-aqua"></i>
												5 new members joined today
										</a></li>
										<li><a href="#"> <i class="fa fa-warning text-yellow"></i>
												Very long description here that may not fit into the page
												and may cause design problems
										</a></li>
										<li><a href="#"> <i class="fa fa-users text-red"></i>
												5 new members joined
										</a></li>
										<li><a href="#"> <i
												class="fa fa-shopping-cart text-green"></i> 25 sales made
										</a></li>
										<li><a href="#"> <i class="fa fa-user text-red"></i>
												You changed your username
										</a></li>
									</ul>
								</li>
								<li class="footer"><a href="#">View all</a></li>
							</ul></li>
						<!-- Tasks: style can be found in dropdown.less -->
						<li class="dropdown tasks-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-flag-o"></i> <span class="label label-danger">9</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 9 tasks</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<ul class="menu">
										<li>
											<!-- Task item --> <a href="#">
												<h3>
													Design some buttons <small class="pull-right">20%</small>
												</h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-aqua"
														style="width: 20%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">20% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
										<li>
											<!-- Task item --> <a href="#">
												<h3>
													Create a nice theme <small class="pull-right">40%</small>
												</h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-green"
														style="width: 40%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">40% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
										<li>
											<!-- Task item --> <a href="#">
												<h3>
													Some task I need to do <small class="pull-right">60%</small>
												</h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-red"
														style="width: 60%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">60% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
										<li>
											<!-- Task item --> <a href="#">
												<h3>
													Make beautiful transitions <small class="pull-right">80%</small>
												</h3>
												<div class="progress xs">
													<div class="progress-bar progress-bar-yellow"
														style="width: 80%" role="progressbar" aria-valuenow="20"
														aria-valuemin="0" aria-valuemax="100">
														<span class="sr-only">80% Complete</span>
													</div>
												</div>
										</a>
										</li>
										<!-- end task item -->
									</ul>
								</li>
								<li class="footer"><a href="#">View all tasks</a></li>
							</ul></li>
						<!-- User Account: style can be found in dropdown.less -->
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <!-- 오른쪽 상단 프로필 사진 -->
								<img src="/nado/resources/groupware/dist/img/user2-160x160.jpg"
								class="user-image" alt="User Image"> <span
								class="hidden-xs"><%=loginEmp.getEmpName()%></span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="/nado/resources/groupware/dist/img/user2-160x160.jpg"
									class="img-circle" alt="User Image">

									<p>
										Alexander Pierce - Web Developer <small>Member since
											Nov. 2012</small>
									</p></li>
								<!-- Menu Body -->
								<li class="user-body">
									<div class="row">
										<div class="col-xs-4 text-center">
											<a href="#">Followers</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Sales</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Friends</a>
										</div>
									</div> <!-- /.row -->
								</li>
								<!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<a href="#" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar 사이드바 시작-->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- 왼쪽 사이드바 사용자 정보 부분 Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="/nado/resources/groupware/dist/img/user2-160x160.jpg"
							class="img-circle" alt="User Image">
					</div>
					<div class="pull-left info">
						<p><%=loginEmp.getEmpName()%></p>
						<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/nado/emplo">로그아웃</a>
					</div>
				</div>
				<!-- 왼쪽 사이드바 검색 기능 부분search form -->
				<form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
				<!-- /.search form -->
				<!-- 사이드 메뉴바 시작 sidebar menu: : style can be found in sidebar.less  -->
				
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">MAIN NAVIGATION</li>
					<li>
						<a href="/nado/views/groupware/manager/userApproval.jsp"> 
							<i class="fa fa-dashboard"></i>
						  	<span>사용자승인관리</span>
				   		</a>
					</li>
					<li><a href="#"> <i class="fa fa-files-o"></i>
							<span>조직도</span><span class="pull-right-container"> <span
								class="label label-primary pull-right">4</span>
							</span>
						</a>
					</li>
					<li class="treeview"><a href="#"><i
							class="fa fa-envelope"></i><span>게시판 관리</span>
							 <span class="pull-right-container"><i
								class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
					<ul class="treeview-menu">
							<li>
								<a href="#"><i class="fa fa-circle-o"></i>공지사항</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-circle-o"></i>설문조사</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-circle-o"></i>자유게시판</a>
							</li>
					</ul>
					</li>
					<li><a href="calendar/calendarMonthView.jsp"><i
							class="fa fa-calendar"></i> <span>전자결재양식</span></a></li>
				</ul>
			</section>
			<!-- /.sidebar 사이드바 끝-->
		</aside>

		<!-- Content Wrapper. Contains page content  가운데 작업 영역-->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					사용자 승인 관리 <small>사용자</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">사용자 승인 관리</li>
				</ol>
			</section>
			<!-- Main content -->
			<section class="content">
			<% if(listSize >0) {
			for(Employee emp : list){
			%>
			<form action="/nado/appuser.ad" method="post">
			<div class="popup" id="<%=emp.getEmpId()%>">
			<!-- 왼쪽 사용자 입력 사항 -->
			<div id="pop_left">
				<table>
			<tr>
				<th><label for="username">이름</label></th>
				</tr><tr>
					<td>
					<input type="text" class="inbox" name="username" id="username" value="<%= emp.getEmpName() %>" readonly>
					</td>
					</tr>
					<tr>
					<th><label for="userid">아이디</label></th>
					</tr>
					<tr>
					<td>
					<input type="text" class="inbox"name="userid" id="userid" value="<%= emp.getUserId() %>" readonly>
					</td>
					</tr>
					<tr>
					<th><label for="empno">생년월일</label></th>
					</tr><tr>
					<td>
					<input type="text" class="inbox"name="empno" id="empno" value="<%= emp.getEmpNo() %>" readonly>
					</td>
					</tr>
					<tr>
					<th><label for="email">이메일</label></th>
					</tr><tr>
					<td>
					<input type="text" class="inbox"name="email" id="email" value="<%= emp.getEmail() %>" readonly>
					</td>
					</tr>
					<tr>
					<th><label for="phone">휴대전화</label></th>
					</tr><tr>
					<td>
					<input type="text" class="inbox"name="phone" id="phone" value="<%= emp.getPhone() %>" readonly>
					</td>
					</tr>
					<tr>
					<th><label for="address">주소</label></th>
					</tr><tr>
					<td>
					<input type="text" class="inbox"name="address" id="address" value="<%= emp.getAddress() %>" readonly>
					</td>
					</tr>
				</table>
			</div>
			<!--  오른쪽 관리자 입력 사항 -->
			<div id="pop_right">
			<table>
			<tr>
				<th><label for="empid">사번</label></th>
				</tr><tr>
					<td>
					<input type="text" class="inbox" name="empid" id="empid" >
					</td>
					</tr>
					<tr>
					<th><label for="idlevel">계정구분</label></th>
					</tr>
					<tr>
					<td>
					<input type="radio" name="idlevel" value="G" >일반사원
					<input type="radio" name="idlevel" value="M">관리자
					</td>
					</tr>
					<tr>
					<th><label for="deptid">부서</label></th>
					</tr><tr>
					<td>
					<select name="deptid" id="deptid">		
					<option value="A1">관리팀</option>
					<option value="A2">인사팀</option>
					<option value="B1">개발1팀</option>
					<option value="B2">개발2팀</option>
					<option value="C1">디자인팀</option>
					<option value="D1">영업팀</option>
					
					</td>
					</tr>
					<tr>
					<th><label for="jobid">직책</label></th>
					</tr><tr>
					<td>
					<select name="jobid" id="jobid" >
					<option value="J1">대표이사</option>
					<option value="J2">부사장</option>
					<option value="J3">부장</option>
					<option value="J4">차장</option>
					<option value="J5">과장</option>
					<option value="J6">대리</option>
					<option value="J7">사원</option>
					
					</select>
					<select name="paystep" id="paystep">
					<option value="1호봉">1호봉</option>
					<option value="2호봉">2호봉</option>
					<option value="3호봉">3호봉</option>
					</select>
					</td>
					</tr>
					<tr>
					<th><label for="state">상태</label></th>
					</tr><tr>
					<td>
					<input type="radio" name="state"  value="재직">재직
					<input type="radio" name="state"  value="휴직">휴직
					</td>
					</tr>
				</table>
			</div>
			<span class="pop"><button type="submit" style="background:none;">승인</button></span>&nbsp;
			<span class="pop"><button>거절</button></span></div>
			</form>
			<%}} %>
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">승인 대기 신청자</h3>
				 <div class="box-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>이름</th>
                  <th>아이디</th>
                  <th>신청일</th>
                  <th>승인</th>
                </tr>
                </thead>
                <tbody>
                <% if(listSize>0){ 
                for(Employee emp : list){
                %>
                <tr> 
                  <td><%= emp.getEmpName() %></td>
                  <td><%= emp.getUserId() %></td>
                  <td><%= emp.getHireDate() %></td>                  
                  <td><a href="#<%=emp.getEmpId() %>"> 확인 후 승인</a></td>
                </tr>     
                <%}} %>
                </tbody>
              </table>
             
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
				</div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
				
				
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 2.4.18
			</div>
			<strong>Copyright &copy; 2014-2019 <a
				href="https://adminlte.io">AdminLTE</a>.
			</strong> All rights reserved.
		</footer>

		<!-- 채팅으로 쓸 부분 Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark"
			style="display: none;">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
						class="fa fa-home"></i></a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
						class="fa fa-gears"></i></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="/nado/views/groupware/chatting/test.html">채팅</a>
							<a href="javascript:void(0)"> <i
								class="menu-icon fa fa-birthday-cake bg-red"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

									<p>Will be 23 on April 24th</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-user bg-yellow"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Frodo Updated His
										Profile</h4>

									<p>New phone +1(800)555-1234</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-envelope-o bg-light-blue"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Nora Joined Mailing
										List</h4>

									<p>nora@example.com</p>
								</div>
						</a></li>
						<li><a href="javascript:void(0)"> <i
								class="menu-icon fa fa-file-code-o bg-green"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Cron Job 254
										Executed</h4>

									<p>Execution time 5 seconds</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Custom Template Design <span
										class="label label-danger pull-right">70%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 70%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Update Resume <span class="label label-success pull-right">95%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-success"
										style="width: 95%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Laravel Integration <span
										class="label label-warning pull-right">50%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-warning"
										style="width: 50%"></div>
								</div>
						</a></li>
						<li><a href="javascript:void(0)">
								<h4 class="control-sidebar-subheading">
									Back End Framework <span class="label label-primary pull-right">68%</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-primary"
										style="width: 68%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>

						<div class="form-group">
							<label class="control-sidebar-subheading"> Report panel
								usage <input type="checkbox" class="pull-right" checked>
							</label>

							<p>Some information about this general settings option</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Allow mail
								redirect <input type="checkbox" class="pull-right" checked>
							</label>

							<p>Other sets of options are available</p>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Expose author
								name in posts <input type="checkbox" class="pull-right" checked>
							</label>

							<p>Allow the user to show his name in blog posts</p>
						</div>
						<!-- /.form-group -->
						<h3 class="control-sidebar-heading">채팅셋팅</h3>
						<div class="form-group">
							<label class="control-sidebar-subheading"> Show me as
								online <input type="checkbox" class="pull-right" checked>
							</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Turn off
								notifications <input type="checkbox" class="pull-right">
							</label>
						</div>
						<!-- /.form-group -->

						<div class="form-group">
							<label class="control-sidebar-subheading"> Delete chat
								history <a href="javascript:void(0)" class="text-red pull-right"><i
									class="fa fa-trash-o"></i></a>
							</label>
						</div>
						<!-- /.form-group -->
					</form>
				</div>
				<!-- /.tab-pane -->
			</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 3 -->
	<script
		src="/nado/resources/groupware/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script
		src="/nado/resources/groupware/bower_components/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="/nado/resources/groupware/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Morris.js charts -->
	<script
		src="/nado/resources/groupware/bower_components/raphael/raphael.min.js"></script>
	<script
		src="/nado/resources/groupware/bower_components/morris.js/morris.min.js"></script>
	<!-- Sparkline -->
	<script
		src="/nado/resources/groupware/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script
		src="/nado/resources/groupware/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="/nado/resources/groupware/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script
		src="/nado/resources/groupware/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script
		src="/nado/resources/groupware/bower_components/moment/min/moment.min.js"></script>
	<script
		src="/nado/resources/groupware/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script
		src="/nado/resources/groupware/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="/nado/resources/groupware/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="/nado/resources/groupware/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script
		src="/nado/resources/groupware/bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="/nado/resources/groupware/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="/nado/resources/groupware/dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="/nado/resources/groupware/dist/js/demo.js"></script>
</body>
</html>