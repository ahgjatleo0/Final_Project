<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/plugins/admin/Admin.css">
<link rel="stylesheet" href="resources/plugins/admin/bootstrap.min.css">
<link rel="stylesheet" type="resources/plugins/admin/Admin_css/buttons.bootstrap4.css">
<link rel="stylesheet" type="text/css" href="resources/plugins/admin/dataTables.bootstrap4.css">
<link rel="stylesheet" type="text/css" href="resources/plugins/admin/select.bootstrap4.css">
<link rel="stylesheet" type="text/css" href="resources/plugins/admin/fixedHeader.bootstrap4.css">
<link rel="stylesheet" href="resources/plugins/admin/fontawesome-all.css">
<title>회원 관리</title>
</head>

<body>
	<!-- main wrapper -->
	<div class="dashboard-main-wrapper">
		<!-- navbar -->
		<div class="dashboard-header">
			<!-- 상단바 로고 -->
			<nav class="navbar navbar-expand-lg bg-white fixed-top">
				<a class="navbar-brand" href="#">HearTrack</a>
				<!-- 메인화면 링크 걸어주기 -->
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<!-- 네비바 나머지 부분-->
				<div class="collapse navbar-collapse " id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto navbar-right-top">
						<!-- 전체화면 보기 버튼 -->
						<a href="#" class="fullscreen btn-rounded btn-primary btn-sm"
							onclick="openFullScreenMode()" style="margin-right: 20px;">
							전체화면</a>
						<a href="#"
							class="close-fullscreen btn-rounded btn-primary btn-sm"
							onclick="closeFullScreenMode()" style="margin-right: 20px;">
							되돌리기</a>
						<!-- 공유 버튼 -->
						<a class="navbtn btn-info nav-link nav-user-img " href="#"
							id="navbarDropdownMenuLink2" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"
							style="margin-right: 30px;"> 페이지 공유</a>
						<div
							class="bavbtn dropdown-menu dropdown-menu-right nav-user-dropdown"
							aria-labelledby="navbarDropdownMenuLink2">
							<a class="dropdown-item" href="#">화면 캡쳐</a> <a
								class="dropdown-item" href="#">데이터 꺼내기</a>
						</div>
					</ul>
				</div>
			</nav>
		</div>
		<!-- end navbar -->

		<!-- left sidebar -->
		<div class="nav-left-sidebar sidebar-dark">
			<div class="menu-list">
				<nav class="navbar navbar-expand-lg navbar-light">
					<a class="d-xl-none d-lg-none" href="#"></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNav" aria-controls="navbarNav"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarNav">
						<ul class="navbar-nav flex-column">
							<li class="nav-divider">Menu</li>
							<li class="nav-item "><a class="nav-link "
								href="adminEcg"> <i class="fas fa-heartbeat"></i>ECG 서비스 사용현황 <span
									class="badge badge-success">1</span>
							</a></li>
							<li class="nav-item "><a class="nav-link active" href="adminUser">
									<i class="fas fa-chart-pie"></i>회원 관리 <span
									class="badge badge-success">2</span>
							</a></li>
							<li class="nav-item "><a class="nav-link " href="index"> <!-- 메인서비스 페이지 url 달아주기-->
									<i class="fas fa-share-square"></i>서비스 페이지로 <span
									class="badge badge-success">3</span>
							</a></li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!-- end left sidebar -->

		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="container-fluid  dashboard-content">
				<div class="row">
					<!-- data table multiselects  -->
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="card">
							<div class="card-header">
								<h3 class="mb-0">회원 관리</h3>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table id="example4" class="table table-striped table-bordered"
										style="width: 100%">
										<thead>
											<tr>
												<th>이름</th>
												<th>아이디</th>
												<th>성별</th>
												<th>나이</th>
												<th>ECG검사 횟수</th>
												<th>게시글 수</th>
												<th>가입 날짜</th>
												<th>접속 날짜</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${userList}" var="list">
												<tr>
													<td id="u_name">${list.user_name}</td>
													<td id="u_id">${list.user_id}</td>
													<td id="u_gender">${list.user_gender}</td>
													<td id="u_age">${list.user_age}</td>
													<td id="ecg_cnt">${list.ecg_cnt}</td>
													<td id="comm_cnt">${list.comm_cnt}</td>
													<td id="u_joindate">${list.user_joindate}</td>
													<td id="u_accdate">${list.user_accdate}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- end data table multiselects  -->
				</div>
			</div>
		</div>
		<!-- end footer -->
	</div>
	</div>
	<!-- 애네 순서 바뀌면 의존성부분 오류로 제대로 실행X -->
	<script src="resources/plugins/admin/jquery-3.3.1.min.js"></script>
	<script src="resources/plugins/admin/bootstrap.bundle.js"></script>
	<script src="resources/plugins/admin/jquery.slimscroll.js"></script>
	<script src="resources/plugins/admin/main-js.js"></script>
	<script src="resources/plugins/admin/jquery.multi-select.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
	<script src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
	<script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
	<script src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
	<script src="resources/plugins/admin/dataTables.bootstrap4.min.js"></script>
	<script src="resources/plugins/admin/buttons.bootstrap4.min.js"></script>
	<script src="resources/plugins/admin/data-table.js"></script>

</body>

</html>