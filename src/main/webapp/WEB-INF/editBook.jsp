<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Book</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body style="background-color:lightgrey">
	<body>
		<div class="col-10 mx-auto mt-5 ms-5">
			<div class="d-flex justify-content-between mt-4 border-bottom">
				<h2 class="ms-4">Edit your Book</h2>
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
				  <div class="container-fluid">
				    <a class="navbar-brand" href="#">Directory</a>
				    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				      <span class="navbar-toggler-icon"></span>
				    </button>
				    <div class="collapse navbar-collapse" id="navbarSupportedContent">
				      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
				        <li class="nav-item">
				          <a class="nav-link active" aria-current="page" href="/books">Dashboard</a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link active" aria-current="page" href="/books/new">Add a Show</a>
				        </li>
				        <li class="nav-item">
				          <a class="nav-link active" aria-current="page" href="/logout">Logout</a>
				        </li>
				      </ul>
				    </div>
				  </div>
				</nav>
			</div>
			<div class="col-6 ms-4 mt-4">
			<form:form action="/books/${ book.id }/edit" method="post" modelAttribute="book">
				<input type="hidden" name="_method" value="put"/>
				<div class="mb-2">
					<form:label path="title" class="form-label">Title</form:label>
					<form:input path="title" type="text" class="form-control" />
					<form:errors path="title" class="alert alert-danger" />
				</div>
				<div class="mb-2">
					<form:label path="author" class="form-label">Network</form:label>
					<form:input path="author" type="text" class="form-control" />
					<form:errors path="author" class="alert alert-danger" />
				</div>
				<div class="mb-3">
					<form:label path="thoughts" class="form-label">My thoughts</form:label>
					<form:textarea path="thoughts" class="form-control" rows="4"/>
					<form:errors path="thoughts" class="alert alert-danger" />
				</div>
				<button type="submit" class="btn btn-outline-light">Submit Edit</button>
				<div class="d-flex col-6 justify-content-start">
					<button class="btn btn-outline-danger py-1 px-2 ms-4" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">Delete</button>
				</div>
			</form:form>
				<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
				  <div class="offcanvas-header">
				    <h5 class="offcanvas-title" id="offcanvasExampleLabel">Confirmation</h5>
				    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
				  </div>
				  <div class="offcanvas-body">
				    <div>
				      Are you sure about that?!?! All data will be lost to the void!!!
				    </div>
				    <c:choose>
						<c:when test="${book.creator.id == userId}">
							<form action="/books/${book.id}/delete" method="post">
								<input type="hidden" name="_method" value="delete" /> 
								<input type="submit" value="Delete" class="btn btn-outline-danger py-1 px-2 ms-4" />
							</form>
						</c:when>
					</c:choose>
				  </div>
				</div>
			</div>
		</div>
	</body>
</body>
</html>