<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/all_css.jsp" %>
</head>
<body class="bg-light">
	<%@include file="component/navebar.jsp" %>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card shadow-lg">
					<div class="card-header">	
						<p class="text-center">Register page</p>
						<c:if test="${not empty msg}">
                				<p class="text-center text-success fs-4">${msg}</p>
                				<c:remove var="msg" />
                				</c:if>
					</div>
					<div class="card-body">
						<form action="userRegistr" method="post">
							<div class="mb-3">
								<label class="label-control">Enter Full Name </label>
								<input type="text" placeholder="Full Name" class="form-control" name="fullName" required/>
							</div>
							<div class="mb-3">
								<label class="label-control">Enter Email</label>
								<input type="text" placeholder="Email" class="form-control" name="email" required/>
							</div>
							<div class="mb-3">
								<label class="label-control">password</label>
								<input type="password" placeholder="Password" class="form-control" name="password" required/>
							</div>
							<div class="mb-3">
								<label class="label-control">About</label>
								<input type="text" placeholder="about" class="form-control" name="about" required/>
							</div>
							<div class="col-md-12 text-center">
                				<button class="btn btn-primary">Register</button>
                				
            				</div>
            				<div class="text-center mt-2">If you have account <a href="login.jsp" class="text-decoration-none">Login here</a></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>