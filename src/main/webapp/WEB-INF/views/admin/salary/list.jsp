<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="salaryAPI" value="/api/admin/salary"/>
<c:url var="salaryURL" value="/admin/salary/list"/>
<c:url var="salaryDetailURL" value="/admin/salary/detail"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Summary salary page</title>
	</head>

	<body>
		<div class="main-content">
		<form action="<c:url value='/admin/salary/list'/>" id="formSubmit" method="get">
			
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Trang chủ</a>
							</li>
						</ul>
						<!-- /.breadcrumb -->
					</div>
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
							
								<c:if test="${not empty message}">
									<div class="alert alert-${alert}">
			  							${message}
									</div>
								</c:if>
								
								
								<div class="widget-box table-filter">
								
									<div class="col-xs-6">
										<div class="form-group">
										    <label>Select month:</label>
										   	<input id="monthPicker" type="text" value="" />
										</div>
									</div>
									
									<div class="col-xs-6">
										<div class="table-btn-controls">
											<div class="pull-right tableTools-container">
												<div class="dt-buttons btn-overlap btn-group">
													<button id="btnRunSalary" type="button" onclick="">
														<span>
															Run cham cong
														</span>
													</button>
												</div>
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
														<th>Month</th>
														<th>Nhan vien</th>
														<th>OT Amount</th>
							                            <th>Leave day Amount</th>
							                            <th>Delay work Amount</th>
							                            <th>Luong Thang</th>
							                            <th>Detail</th>
													</tr>
												</thead>
												<tbody>
													
													<c:forEach var="item" items="${model.listResult}">
														<c:set var="month" value="${item.month}"/>  
														<tr>
															<td>${fn:substring(month, 0, 7)}</td>
															<td>${item.fullname}</td>
															<td>${item.sumOtAmount}</td>
															<td>${item.sumLeaveDayAmount}</td>
															<td>${item.sumDelayAmount}</td>
															<td>${item.sumSalary}</td>
															<td>
																<c:url var="detailURL" value="${salaryDetailURL}">
																	<c:param name="userid" value="${item.userid}"/>															
																</c:url>																
																<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
																   title="Edit content" href='${detailURL}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
																</a>
															</td>
														</tr>
													</c:forEach>
												
												</tbody>
											</table>
											<ul class="pagination" id="pagination"></ul>	
											<input type="hidden" value="" id="page" name="page"/>
											<input type="hidden" value="" id="limit" name="limit"/>	
											<input type="hidden" value="" id="month" name="month"/>									
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
			var monthParam = "${month}";
			var monthSplit = monthParam.substr(0, 7).split("-");
			var month = monthSplit[1] + "/" + monthSplit[0]
			$(function () {
		        window.pagObj = $('#pagination').twbsPagination({
		            totalPages: totalPages,
		            visiblePages: 10,
		            startPage: currentPage,
		            onPageClick: function (event, page) {
		            	if (currentPage != page) {
		            		$('#limit').val(5);
							$('#page').val(page);
							$('#month').val(month);
							$('#formSubmit').submit();
						}
		            }
		        });
		    });
			
			function approval(id, status) {
		        $.ajax({
		            url: '${salaryAPI}',
		            type: 'PUT',
		            contentType: 'application/json',
		            data: JSON.stringify({"id": id, "status": status}),
		            success: function (result) {
		                window.location.href = "${salaryURL}?page="+${model.page}+"&limit=5&message=delete_success";
		            },
		            error: function (error) {
		            	window.location.href = "${salaryURL}?page="+${model.page}+"&limit=5&message=error_system";
		            }
		        });
		    }
			
		</script>
	</body>
	</html>