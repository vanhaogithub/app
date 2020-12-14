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
        </div>
            <div class="jumbotron text-feft">
                <div class="row">
                    <div class="col-md-5 col-lg-5 block-image">
                      <img src="<c:url value=''/>" class="img-responsive"/> 
                    </div>
                    <div class="col-md-6 col-lg-6 block-contact">
                      <h3>Information</h3>
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
                        <button type="submit" class="btn btn-success pull-left">Edit</button>
                      </form>
                    </div>
                </div>
            </div>
            <div class="jumbotron text-feft">
                <div class="row">
                    <div class="col-md-5 col-lg-5">
                        <h3>Thong tin quan ly:</h3>
                        <p>Quan ly cap 1: anh ${manager01DTO.fullname}</p><br/>
                        <p>Quan ly cap 2: anh ${manager02DTO.fullname}</p>
                    </div>
                    <div class="col-md-7 col-lg-7">
                        <h3>Thong tin du an:</h3>
                        <c:forEach var="item" items="${projectDTOs}">
							<p>Du an: ${item.name}</p><br/>
						</c:forEach>
                    </div>
                </div>
            </div>
            <div class="jumbotron text-feft">
            	<div class="col-md-10 col-lg-10">
                	<h3>Ngay dang ky nghi phep:</h3>
                </div>
                <div class="col-md-2 col-lg-2">
                	<a class="nav-link" href="<c:url value='/home/leave/list?page=1&limit=5'/>"><button type="button" class="btn btn-success pull-left">Go to</button></a>
                </div>
            </div>
            <div class="jumbotron text-feft">
                <h3>Ngay dang ky OT:</h3>
                <div class="row">
                    <div class="col-md-10 col-lg-10">
                        <table class="table table-hover">
                            <thead>
                              <tr>
                                <th>Ngay OT</th>
                                <th>Thoi gian OT</th>
                                <th>Ly do</th>
                                <th>Status</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <th>2020/10/11</th>
                                <th>1h</th>
                                <th>Code  function 1</th>
                                <th>Da phe duyet</th>
                              </tr>
                              <tr>
                                <th>2020/11/20</th>
                                <th>2h</th>
                                <th>Code  function 2</th>
                                <th>Da phe duyet</th>
                              </tr>
                              <tr>
                                <th>2020/12/11</th>
                                <th>1.5h</th>
                                <th>Code  function 1</th>
                                <th>Da phe duyet</th>
                              </tr>
                            </tbody>
                          </table>
                    </div>
                    <div class="col-md-2 col-lg-2">
                        <button type="button" class="btn btn-success pull-left">Register</button>
                    </div>
                </div>
            </div>
    </div>
</body>

</html>