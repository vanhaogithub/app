<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="otURL" value="/home/ot/list"/>
<c:url var="editOTURL" value="/home/ot/edit"/>
<c:url var="otAPI" value="/api/ot"/>
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
					<h5>Ngày OT:</h5>
				</div>
				<div class="col-lg-9">
					<div class="form-group">
						<form:input path="dateot" rows="5" cols="10" cssClass="form-control" id="dateot"/>
					</div>
				</div>
				<div class="col-lg-3">
					<h5>Thời gian:</h5>
				</div>
				<div class="col-lg-9">
					<div class="form-group">
						<form:input path="timesot" rows="5" cols="10" cssClass="form-control" id="timesot"/>
					</div>
				</div>
				<div class="col-lg-3">
					<h5>Lý do:</h5>
				</div>
				<div class="col-lg-9">
					<div class="form-group">
						<form:textarea path="reason" rows="5" cols="10" cssClass="form-control" id="reason"/>
					</div>
				</div>
				
				<form:hidden path="id" id="otId"/>
				<form:hidden path="userid" id="userid"/>
				<form:hidden path="status" id="status"/>
				<div class="clearfix form-actions">
					<div class="col-md-offset-3 col-md-9">
						<c:if test="${not empty model.id}">
							<button class="btn btn-info" type="button" id="btnAddOrUpdate">
								<i class="ace-icon fa fa-check bigger-110"></i>
								Update
							</button>
						</c:if>
						<c:if test="${empty model.id}">
							<button class="btn btn-info" type="button" id="btnAddOrUpdate">
								<i class="ace-icon fa fa-check bigger-110"></i>
								Add
							</button>
						</c:if>

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

<script>
	$('#btnAddOrUpdate').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
	    var id = $('#otId').val();
	    if (id == "") {
	    	addNew(data);
	    } else {
	    	updateNew(data);
	    }
	});
	
	function addNew(data) {
		$.ajax({
            url: '${otAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editOTURL}?id="+result.id+"&message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${otURL}?page=1&limit=2&message=error_system";
            }
        });
	}
	
	function updateNew(data) {
		$.ajax({
            url: '${otAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editOTURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
            	window.location.href = "${editOTURL}?id="+result.id+"&message=error_system";
            }
        });
	}
</script>
</body>
</html>
