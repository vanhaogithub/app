<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="userListURL" value="/admin/user/list"/>
<c:url var="userUpdateURL" value="/admin/user/update"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Summary salary page</title>
	</head>

	<body>
		<div class="main-content">
		<form action="<c:url value='/admin/user/list'/>" id="formSubmit" method="get">
			
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="<c:url value='/home'/>">Trang chủ</a>
							</li>
						</ul>
						<!-- /.breadcrumb -->
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="table-btn-controls">
											<div class="pull-right tableTools-container">
												<div class="dt-buttons btn-overlap btn-group">
													<button id="btnSendMail" type="button" onclick="registerUser()">
														<span>
															Create Employee
														</span>
													</button>
												</div>
											</div>
										</div>
								</div>
							
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th>Name</th>
														<th>Mail</th>
														<th>Phone</th>
														<th>Phong ban</th>
							                            <th>Quan ly 1</th>
							                            <th>Quan ly 2</th>
							                            <th>Luong</th>
							                            <th>Thuong</th>
							                            <th>Ngay hieu luc</th>
							                            <th>Ngay het hieu luc</th>
							                            <th>Edit</th>
													</tr>
												</thead>
												<tbody>
													
													<c:forEach var="item" items="${model.listResult}">
														<c:set var="effectiveDate" value="${item.effectiveDate}"/>  
														<c:set var="expirationDate" value="${item.expirationDate}"/> 
														<tr>
															<td>${item.fullname}</td>
															<td>${item.email}</td>
															<td>${item.phone}</td>
															<td>${item.departmentName}</td>
															<td>${item.manager01Name}</td>
															<td>${item.manager02Name}</td>
															<td>${item.daySalaryAmount}</td>
															<td>${item.dayBonusAmount}</td>
															<td>${fn:substring(effectiveDate, 0, 10)}</td>
															<td>${fn:substring(expirationDate, 0, 10)}</td>
															<td>
																<span onclick="goToUpdate('${item.originid}')"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
															</td>
														</tr>
													</c:forEach>
												
												</tbody>
											</table>
											<ul class="pagination" id="pagination"></ul>	
											<input type="hidden" value="" id="page" name="page"/>
											<input type="hidden" value="" id="limit" name="limit"/>								
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
		</form>
		</div>
		<!-- /.main-content -->
		<script>
			
			var totalPages = ${model.totalPage};
			var currentPage = ${model.page};
			if(totalPages == 0){
				totalPages = 1;
			}
			if(currentPage > totalPages && totalPages != 0){
				currentPage = totalPages;
			}
			
			$(function () {
		        window.pagObj = $('#pagination').twbsPagination({
		            totalPages: totalPages,
		            visiblePages: 10,
		            startPage: currentPage,
		            onPageClick: function (event, page) {
		            	if (currentPage != page) {
		            		$('#limit').val(5);
							$('#page').val(page);
							$('#formSubmit').submit();
						}
		            }
		        });
		    });
			function goToUpdate(userid) {
				window.location.href = "${userUpdateURL}?userid="+userid;
		    }
			function registerUser() {
				window.location.href = "${userUpdateURL}";
		    }
		</script>
	</body>
	</html>