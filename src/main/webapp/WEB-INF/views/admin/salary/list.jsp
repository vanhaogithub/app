<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="otAPI" value="/api/admin/ot"/>
<c:url var="otURL" value="/admin/ot/list"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>OT approval page</title>
	</head>

	<body>
		<div class="main-content">
		<form action="<c:url value='/admin/ot/list'/>" id="formSubmit" method="get">
			
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
									<div class="table-btn-controls">
										<div class="pull-right tableTools-container">
											<div class="dt-buttons btn-overlap btn-group">
												
												<button id="btnDelete" type="button" onclick="warningBeforeDelete()"
														class="dt-button buttons-html5 btn btn-white btn-primary btn-bold" data-toggle="tooltip" title='Xóa bài viết'>
																<span>
																	<i class="fa fa-trash-o bigger-110 pink"></i>
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
													<c:forEach var="item" items="${model.listResult}">
														<c:set var="dateot" value="${item.dateot}"/>  
														<tr>
															<td>${item.userName}</td>
															<td>${fn:substring(dateot, 0, 10)}</td>
															<td>${item.timesot}</td>
															<td>${item.reason}</td>
															<td>${item.status}</td>
															<td>															
																<span onclick="approval('${item.id}','APPROVAL')"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
															</td>
															<td>															
																<span onclick="approval('${item.id}','REJECT')"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
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
			function approval(id, status) {
		        $.ajax({
		            url: '${otAPI}',
		            type: 'PUT',
		            contentType: 'application/json',
		            data: JSON.stringify({"id": id, "status": status}),
		            success: function (result) {
		                window.location.href = "${otURL}?page="+${model.page}+"&limit=5&message=delete_success";
		            },
		            error: function (error) {
		            	window.location.href = "${otURL}?page="+${model.page}+"&limit=5&message=error_system";
		            }
		        });
		    }
			function warningBeforeDelete() {
					swal({
					  title: "Xác nhận xóa",
					  text: "Bạn có chắc chắn muốn xóa hay không",
					  type: "warning",
					  showCancelButton: true,
					  confirmButtonClass: "btn-success",
					  cancelButtonClass: "btn-danger",
					  confirmButtonText: "Xác nhận",
					  cancelButtonText: "Hủy bỏ",
					}).then(function(isConfirm) {
					  if (isConfirm) {
							var ids = $('tbody input[type=checkbox]:checked').map(function () {
					            return $(this).val();
					        }).get();
							deleteNew(ids);
					  }
					});
			} 
			function deleteNew(data) {
		        $.ajax({
		            url: '${otAPI}',
		            type: 'DELETE',
		            contentType: 'application/json',
		            data: JSON.stringify(data),
		            success: function (result) {
		                window.location.href = "${otURL}?page=1&limit=2&message=delete_success";
		            },
		            error: function (error) {
		            	window.location.href = "${otURL}?page=1&limit=2&message=error_system";
		            }
		        });
		    }
		</script>
	</body>
	</html>