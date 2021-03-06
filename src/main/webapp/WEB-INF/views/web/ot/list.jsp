<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url var="otURL" value="/home/ot/edit"/>
<c:url var="otListURL" value="/home/ot/list"/>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<title>Ngay OT</title>

</head>

<body>

	<!-- Page Content -->
	<div class="container">
         <div class="jumbotron text-left">
         	<form action="<c:url value='/home/ot/list'/>" id="formSubmit" method="get">
              <h3>Ngay dang ky OT</h3>
              <div id="otDay" class="row">
                  <div class="col-md-10 col-lg-10">
                      <div class="table-responsive">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>Ngay nghi</th>
		                                <th>Thoi gian nghi</th>
		                                <th>Ly do</th>
		                                <th>Status</th>
		                                <th>Edit</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${model.listResult}">
										<c:set var="dateot" value="${item.dateot}"/>  
										<tr>
											<td>${fn:substring(dateot, 0, 10)}</td>
											<td>${item.timesot}</td>
											<td>${item.reason}</td>
											<td>${item.status}</td>
											<td>
												<c:url var="updateURL" value="/home/ot/edit">
													<c:param name="id" value="${item.id}"/>															
												</c:url>																
												<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
												   title="Edit content" href='${updateURL}'><i class="fa fa-pencil-square-o" aria-hidden="true"></i>
												</a>
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
                  <div class="col-md-2 col-lg-2">
                      <button type="button" class="btn btn-success pull-left" id="otNew">Register</button>
                  </div>
              </div>
             </form>
         </div>
    </div>
	
	<!-- /.container -->
	<script>
		var totalPages = ${model.totalPage};
		var currentPage = ${model.page};
		if(totalPages == 0){
			totalPages = 1;
		}
		if(currentPage > totalPages){
			currentPage = totalPages;
			window.location.href = "${otListURL}?page="+currentPage+"&limit=5";
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
		
		$('#otNew').click(function (e) {
			window.location.href = "${otURL}";
		});
	</script>
</body>

</html>