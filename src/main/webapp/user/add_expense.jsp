<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/all_css.jsp" %>
</head>
<body class="bg-light">
	<c:if test="${empty loginUser}">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
<%@include file="../component/navebar.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card mt-3 shadow-lg">
				<div class="card-header text-center">
					<p class="fs-3">Add Expense</p>
					<c:if test="${not empty msg}">
                				<p class="text-center text-success fs-4">${msg}</p>
                				<c:remove var="msg" />
                				</c:if>
				</div>
				<div class="card-body">
					<form action="../saveExpense" method="post" >
						<div class="md-3">
							<label>Expense Title</label>
							<input class="form-control" placeholder="Enrter here " name="title" type="text"/>
						</div>
						<div class="md-3">
							<label>Date</label>
							<input class="form-control" placeholder="Enrter date " name="date" type="date"/>
						</div>
						<div class="md-3">
							<label>Time</label>
							<input class="form-control" placeholder="Enrter time " name="time" type="time"/>
						</div>
						<div class="md-3">
							<label>Description</label>
							<input class="form-control" placeholder="Description " name="description" type="text"/>
						</div>
						<div class="md-3">
							<label>Amount</label>
							<input class="form-control" placeholder="Enrter Amount " name="price" type="text"/>
						</div>
						<button class="btn btn-success col-md-12 md-3">Add</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>