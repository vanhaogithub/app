<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<title>Trang chủ</title>

</head>

<body>

	<!-- Page Content -->
	<div class="container">
        <div class="jumbotron text-center">
            <h3><span class="glyphicon glyphicon-home"></span> Mypage</h3>
            <p> Chuc ban mot ngay tot lanh!</p>
            <c:if test="${not empty message}">
				<div class="alert alert-${alert}">
							${message}
				</div>
			</c:if>
			<a class="nav-link" href="<c:url value='/logout?endday=1'/>"><button type="button" class="btn btn-success pull-left">End Day</button></a>
        </div>
        <div class="jumbotron text-feft">
            <div class="row">
                <div class="col-md-4 col-lg-4 block-contact">
                  <h3>Thong tin ca nhan</h3>
                  <form>
                    <div class="form-group">
                        <p> User name: ${userDetailDTO.fullname}</p>
                    </div>
                    <div class="form-group">
                        <p> Email: ${userDetailDTO.email}</p>
                    </div>
                    <div class="form-group">
                        <p> Phone: ${userDetailDTO.phone}</p>
                    </div>
                    <a class="nav-link" href="<c:url value='/home/user/edit'/>"><button type="button" class="btn btn-success pull-left">Edit</button></a>
                  </form>
                </div>
                <div class="col-md-4 col-lg-4">
                    <h3>Thong tin quan ly</h3>
                    <p>Quan ly cap 1: anh ${manager01DTO.fullname}</p><br/>
                    <p>Quan ly cap 2: anh ${manager02DTO.fullname}</p>
                </div>
                <div class="col-md-4 col-lg-4">
                    <h3>Thong tin du an</h3>
                    <c:forEach var="item" items="${projectDTOs}">
						<p>Du an: ${item.name}</p><br/>
					</c:forEach>
                </div>
            </div>
        </div>

        <div class="jumbotron text-feft">
	        <div class="row">
	        	<div class="col-sm-4">
	            	<h3>Ngay dang ky nghi phep</h3>
	            	<a class="nav-link" href="<c:url value='/home/leave/list?page=1&limit=5'/>"><button type="button" class="btn btn-success pull-left">Go to</button></a>
	            </div>
	            <div class="col-sm-4">
	            	<h3>Ngay dang ky OT</h3>
	            	<a class="nav-link" href="<c:url value='/home/ot/list?page=1&limit=5'/>"><button type="button" class="btn btn-success pull-left">Go to</button></a>
		        </div>
		        <div class="col-sm-4">
	            	<h3>List timekeeping</h3>
	            	<a class="nav-link" href="<c:url value='/home/timekeep/list?page=1&limit=5&month=10/2020'/>"><button type="button" class="btn btn-success pull-left">Go to</button></a>
		        </div>
	        </div>
        </div>
    </div>
</body>

</html>