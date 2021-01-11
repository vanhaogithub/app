<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:url var="timeKeepURL" value="/home/timekeep/list"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>TimeKeeping page</title>
	</head>

	<body>
		<div class="container" >
			<div class="jumbotron text-left">
				<form action="<c:url value='/home/timekeep/list'/>" id="formSubmit" method="get">
					<div class="row">
						<div class="col-xs-12">
							<div class="widget-box table-filter">
								<div class="col-xs-6">
									<div class="form-group">
									    <label>Select month:</label>
									   	<input id="monthPicker" type="text" value="" />
									</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-11">
									<div class="table-responsive">
										<table class="table table-bordered">
											<thead>
												<tr>
													<th>Ngay lam viec</th>
													<th>Gio login</th>
													<th>Gio logout</th>
													<th>Di lam tre</th>
						                            <th>So gio tre</th>
						                            <th>Tha toi</th>
												</tr>
											</thead>
											<tbody>
												
												<c:forEach var="item" items="${model.listResult}">
													<c:set var="startTime" value="${item.startTime}"/>
													<c:set var="endTime" value="${item.endTime}"/> 
													<tr>
														<td>${fn:substring(startTime, 0, 10)}</td>
														<td>${fn:substring(startTime, 11, 19)}</td>
														<td>${fn:substring(endTime, 11, 19)}</td>
														<td>${item.isDelay}</td>
														<td>${item.timeDelay}</td>
														<td>${item.isAbsolve}</td>
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
				</form>
			</div>
		</div>
		<!-- /.main-content -->
		<script>
			
			var totalPages = ${model.totalPage};
			var currentPage = ${model.page};
			var monthParam = "${month}";
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
		        	window.location.href = '${timeKeepURL}?page=1&limit=5&month='+month;
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
							$('#formSubmit').submit();
						}
		            }
		        });
		    });
	
		</script>
	</body>
	</html>