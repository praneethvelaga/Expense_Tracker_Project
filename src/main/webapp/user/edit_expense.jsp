<%@page import="com.entity.Expense"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.ExpenseDao"%>
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
	<%
	int id=Integer.parseInt(request.getParameter("id"));
	ExpenseDao dao = new ExpenseDao(HibernateUtil.getSessionFactory());
	Expense ex = dao.getExpenseById(id);
	%>
<%@include file="../component/navebar.jsp" %>
<div class="container">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card mt-3 shadow-lg">
				<div class="card-header text-center">
					<p class="fs-3">Edit Expense</p>
					
				</div>
				<div class="card-body">
					<form action="../updateExpense" method="post" >
						<div class="md-3">
							<label>Expense Title</label>
							<input class="form-control" placeholder="Enrter here " name="title" type="text" value="<%=ex.getTitle() %>"/>
						</div>
						<div class="md-3">
							<label>Date</label>
							<input class="form-control" placeholder="Enrter date " name="date" type="date" value="<%=ex.getDate() %>"/>
						</div>
						<div class="md-3">
							<label>Time</label>
							<input class="form-control" placeholder="Enrter time " name="time" type="time" value="<%=ex.getTime() %>"/>
						</div>
						<div class="md-3">
							<label>Description</label>
							<input class="form-control" placeholder="Description " name="description" type="text" value="<%=ex.getDescription() %>"/>
						</div>
						<div class="md-3">
							<label>Amount</label>
							<input class="form-control" placeholder="Enrter Amount " name="price" type="text" value="<%=ex.getPrice() %>"/>
						</div>
						<input type="text" value="<%=ex.getId()%>" name="id"/>
						<button class="btn btn-success col-md-12 md-3">Update</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>