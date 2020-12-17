<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="leaveURL" value="/home/leave/list"/>
<c:url var="editleaveURL" value="/home/leave/edit"/>
<c:url var="leaveAPI" value="/api/leave"/>
<html>
<head>
<title>Chỉnh sửa leave day</title>

</head>
<body>
<div class="container">
	<div class="jumbotron text-feft">															
		<a class="btn btn-sm btn-primary btn-edit" data-toggle="tooltip"
		   title="Edit content" href="<c:url value='/home/leave/list?page=1&limit=5'/>"><h5>Back to ngày nghỉ list</h5>
		</a>
		<div class="col-lg-12">
			<c:if test="${not empty message}">
				<div class="alert alert-${alert}">
							${message}
				</div>
			</c:if>
			<form:form class="form-horizontal" role="form" id="formSubmit" modelAttribute="model">
				<div class="col-lg-3">
					<h5>Ngày nghỉ:</h5>
				</div>
				<div class="col-lg-9">
					<div class="form-group">
						<form:input path="dateleave" rows="5" cols="10" cssClass="mycalendar form-control" id="dateleave"/>
					</div>
				</div>
				
				<div class="col-lg-3">
					<h5>Thời gian:</h5>
				</div>
				<div class="col-lg-9">
					<div class="form-group">
						<form:input path="timesleave" rows="5" cols="10" cssClass="form-control" id="timesleave"/>
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
				
				<form:hidden path="id" id="leaveId"/>
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

<script type="text/javascript">

	$(document).ready(function(){
	    $('.mycalendar').datepicker({
	        changeYear:true,
	        changeMonth:true,
	        showAnim: 'fold',
	        inline: true,
	        dateFormat: 'yy-mm-dd',
	        yearRange: '1950:2021',
	        onSelect:function(dateText, inst){
	        }
	    });
	    var dateleave = "${model.dateleave}";
	    if ( dateleave.length ){
	    	$("#dateleave").val(dateleave.substring(0, 10));
	    }
	});
	$('#btnAddOrUpdate').click(function (e) {
	    e.preventDefault();
	    var data = {};
	    var formData = $('#formSubmit').serializeArray();
	    $.each(formData, function (i, v) {
            data[""+v.name+""] = v.value;
        });
	    var id = $('#leaveId').val();
	    if (id == "") {
	    	addNew(data);
	    } else {
	    	updateNew(data);
	    }
	});
	
	function addNew(data) {
		$.ajax({
            url: '${leaveAPI}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editleaveURL}?id="+result.id+"&message=insert_success";
            },
            error: function (error) {
            	window.location.href = "${leaveURL}?page=1&limit=2&message=error_system";
            }
        });
	}
	
	function updateNew(data) {
		$.ajax({
            url: '${leaveAPI}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
            	window.location.href = "${editleaveURL}?id="+result.id+"&message=update_success";
            },
            error: function (error) {
            	window.location.href = "${editleaveURL}?id="+result.id+"&message=error_system";
            }
        });
	}
	
	
</script>
</body>
</html>
