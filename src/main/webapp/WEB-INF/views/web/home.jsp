<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url var="logout" value="/logout"/>
<c:url var="editUser" value="/home/user/edit"/>
<c:url var="showLeave" value="/home/leave/list"/>
<c:url var="showOT" value="/home/ot/list"/>
<c:url var="showTimeKeep" value="/home/timekeep/list"/>
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
			<button type="button" class="btn btn-success pull-left" onclick="logout()">End Day</button>
        </div>
        <div class="jumbotron text-feft">
            <div class="row">
                <div class="col-md-4 col-lg-4 block-contact">
                  <h4>Thong tin ca nhan</h4>
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
                    <button type="button" class="btn btn-success pull-left" onclick="editUser()">Edit</button>
                  </form>
                </div>
                <div class="col-md-4 col-lg-4">
                    <h4>Thong tin quan ly</h4>
                    <p>Quan ly cap 1: anh ${manager01DTO.fullname}</p><br/>
                    <p>Quan ly cap 2: anh ${manager02DTO.fullname}</p>
                </div>
                <div class="col-md-4 col-lg-4">
                    <h4>Thong tin du an</h4>
                    <c:forEach var="item" items="${projectDTOs}">
						<p>Du an: ${item.name}</p><br/>
					</c:forEach>
                </div>
            </div>
        </div>

        <div class="jumbotron text-feft">
	        <div class="row">
	        	<div class="col-sm-4">
	            	<h4>Ngay dang ky nghi phep</h4>
	            	<button type="button" class="btn btn-success pull-left" onclick="showLeave()">Go to</button>
	            </div>
	            <div class="col-sm-4">
	            	<h4>Ngay dang ky OT</h4>
	            	<button type="button" class="btn btn-success pull-left" onclick="showOT()">Go to</button>
		        </div>
		        <div class="col-sm-4">
	            	<h4>List timekeeping</h4>
	            	<button type="button" class="btn btn-success pull-left" onclick="showTimeKeep()">Go to</button>
		        </div>
	        </div>
        </div>
    </div>
    <script>
	    function logout() {
			window.location.href = "${logout}?endday=1";
	    }
	    function editUser() {
			window.location.href = "${editUser}";
	    }
	    function showLeave() {
			window.location.href = "${showLeave}?page=1&limit=5";
	    }
	    function showOT() {
			window.location.href = "${showOT}?page=1&limit=5";
	    }
	    function showTimeKeep() {
			window.location.href = "${showTimeKeep}?page=1&limit=5&month=10/2020";
	    }
    </script>
</body>

</html>