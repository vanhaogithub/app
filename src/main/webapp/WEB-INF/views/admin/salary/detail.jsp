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
		<title>Detail salary page</title>
	</head>

	<body>
		<div class="main-content">
		<form action="<c:url value='/admin/salary/detail'/>" id="formSubmit" method="get">
			
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
										<div class="col-xs-6">
											<span>Name : ${userName}</span>
										</div>
										<div class="col-xs-6">
											<span>Salary : ${sumSalary}</span>
										</div>
									</div>
									
								</div>
								
								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
											<table class="table table-bordered">
												<thead>
													<tr>
														<th>Date</th>
														<th>OT(h)</th>
														<th>Status</th>
							                            <th>Amount</th>
							                            <th>Leave day(h)</th>
							                            <th>Status</th>
							                            <th>Amount</th>
							                            <th>Delay work</th>
							                            <th>Amount</th>
							                            <th>Day salary</th>
							                            <th>Day bonus</th>
							                            <th>Actual day salary</th>
													</tr>
												</thead>
												<tbody>
													
													<c:forEach var="item" items="${model.listResult}">
														<c:set var="workDay" value="${item.workDay}"/>  
														<tr>
															<td>${fn:substring(workDay, 0, 10)}</td>
															<td>${item.timesOt}</td>
															<td>${item.statusOt}</td>
															<td>${item.otAmount}</td>
															<td>${item.timesLeave}</td>
															<td>${item.statusLeave}</td>
															<td>${item.leaveDayAmount}</td>
															<td>${item.isDelay}</td>
															<td>${item.delayAmount}</td>
															<td>${item.daySalaryAmount}</td>
															<td>${item.dayBonusAmount}</td>
															<td>${item.daySalary}</td>
															
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<ul class="pagination" id="pagination"></ul>	
											<input type="hidden" value="" id="page" name="page"/>
											<input type="hidden" value="" id="limit" name="limit"/>	
											<input type="hidden" value="" id="month" name="month"/>
											<input type="hidden" value="" id="userid" name="userid"/>								
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
			var userid = "${userid}";
			var monthSplit;
			var month;
			if(monthParam.search("-") != -1){
				monthSplit = monthParam.substr(0, 7).split("-");
				month = monthSplit[1] + "/" + monthSplit[0];
			} else{
				month = monthParam;
			}
			
			$("#monthPicker").focusout(function(){
		        var month = $('#monthPicker').val();
		        if(month != ""){
		        	window.location.href = '${salaryDetailURL}?page=1&limit=5&month='+month+'&userid='+userid;
		        }
		        
		    });
			$(document).ready(function() {  
			    $('#monthPicker').MonthPicker({ Button: false });
			    $('#monthPicker').val(month);
			});
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
							$('#month').val(month);
							$('#userid').val(userid);
							$('#formSubmit').submit();
						}
		            }
		        });
		    });
			
		</script>
	</body>
	</html>