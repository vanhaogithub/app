<%@ page import="com.bachkhoa.util.SecurityUtils" %>
<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="<c:url value='/home'/>"><span class="glyphicon glyphicon-home"></span>Home</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Wellcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
				<security:authorize access="hasAnyRole('ADMIN')">
				    <li class="nav-item active">
				    	<a class="nav-link" href="<c:url value='/admin/home'/>">Goto Admin page<span class="sr-only">(current)</span></a>
				    </li>
				</security:authorize>
				<li class="nav-item active"><a class="nav-link" href="<c:url value='/logout'/>">Thoát</a></li>
			</ul>
		</div>
	</div>
</nav>