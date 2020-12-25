<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="salaryAPI" value="/api/admin/salary"/>
<c:url var="salaryURL" value="/admin/salary/list"/>
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
								
								<div class="form-group">
								    <label>Select month:</label>
								    <input type="text" class="form-control form-control-1 input-sm salaryMonth" >
								</div>
								
								<div class="widget-box table-filter">
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
								
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th>Nhan vien</th>
														<th>Ngay nghi</th>
							                            <th>Thoi gian nghi</th>
							                            <th>Ly do</th>
							                            <th>Status</th>
							                            <th>Approval</th>
							                            <th>Reject</th>
													</tr>
												</thead>
												<tbody>
													
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
			
			$('.salaryMonth').datepicker({
			    autoclose: true,
			    minViewMode: 1,
			    format: 'yyyy-mm'
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