<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="editUserURL" value="/home/user/edit"/>
<c:url var="userAPI" value="/api/userDetail"/>
<html>
<head>
<title>Chỉnh sửa OT</title>

</head>
<body>
<div class="container">
	<div class="jumbotron text-feft">
		<div class="col-lg-12">
			<c:if test="${not empty message}">
				<div class="alert alert-${alert}">
							${message}
				</div>
			</c:if>
			<form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
				<div class="col-lg-3">
					<h5>User name:</h5>
				</div>
				<div class="col-lg-9">
					<div class="form-group">
						<form:input path="fullname" rows="5" cols="10" cssClass="mycalendar form-control" id="fullname"/>
					</div>
				</div>
				
				<div class="col-lg-3">
					<h5>Email:</h5>
				</div>
				<div class="col-lg-9">
					<div class="form-group">
						<form:input path="email" rows="5" cols="10" cssClass="form-control" id="email"/>
					</div>
				</div>
				<div class="col-lg-3">
					<h5>Phone:</h5>
				</div>
				<div class="col-lg-9">
					<div class="form-group">
						<form:input path="phone" rows="5" cols="10" cssClass="form-control" id="phone"/>
					</div>
				</div>
				<form:hidden path="id" id="id"/>
				<div class="clearfix form-actions">
					<div class="col-md-offset-3 col-md-9">
						<button class="btn btn-info" type="button" id="btnAddOrUpdate">
							<i class="ace-icon fa fa-check bigger-110"></i>
							Update
						</button>

						&nbsp; &nbsp; &nbsp;
						<button class="btn btn-info" type="reset">
							<i class="ace-icon fa fa-undo bigger-110"></i>
							Cancel
						</button>
					</div>		
				</div>
			</form:form>
		</div>
	
	</div>
</div>	

<script type="text/javascript">

	$('#btnAddOrUpdate').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
	    
	    update(data);
	});
	
	function update(data) {
		$.ajax({
            url: '${userAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editUserURL}?message=update_success";
            },
            error: function (error) {
            	window.location.href = "${editUserURL}?message=error_system";
            }
        });
	}
	
	
</script>
</body>
</html>
