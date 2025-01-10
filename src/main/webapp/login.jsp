<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/all_css.jsp" %>
</head>
<body>
	<%@include file="component/navebar.jsp" %>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card shadow-lg">
					<div class="card-header">	
						<p class="text-center">Login page</p>
						<c:if test="${not empty msg}">
                				<p class="text-center text-danger fs-4">${msg}</p>
                				<c:remove var="msg" />
                				</c:if>
					</div>
					<div class="card-body">
						<form action="login" method="post">
							<div class="mb-3">
								<label class="label-control">Enter Email</label>
								<input type="text" placeholder="Email" class="form-control" name="email" required/>
							</div>
							<div class="mb-3">
								<label class="label-control">password</label>
								<input type="password" placeholder="Password" class="form-control" name="password" required/>
							</div>
							<div class="col-md-6 text-center"><button class="btn btn-primary">login</button></div>
							<div class="text-center mt-2">Don't have account <a href="registr.jsp" class="text-decoration-none">Create here</a></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
 </body>
</html>