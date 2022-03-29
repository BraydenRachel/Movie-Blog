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
<title>Display Show</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="col-10 mx-auto mt-5 ms-5">
		<div class="d-flex justify-content-between mt-4 border-bottom">
			<div class="text-danger">
				<h2 class="fs-1">
					<c:out value="${ book.title }"></c:out>
				</h2>
			</div>
			<div>
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
		</div>
		<div>
			<h3 class="fs-1">Posted By:	${book.creator.userName}</h3>
		</div>
		<div>
			<h4 class="fs-3">Network:	${book.author}</h4>
		</div>
		<div>
			<h4 class="fs-3">Description:</h4>
				<div class="fs-4">
					<p class="text-success">${book.thoughts}</p>
				</div>
		</div>
		
		<div class="d-flex col-6 justify-content-end">
			<c:choose>
				<c:when test="${book.creator.id == userId}">
					<a href="/books/${book.id}/edit" class="btn btn-outline-dark ms-5 py-1 px-1">Edit Show</a>				
				</c:when>
			</c:choose>
		</div>
		
	</div>
</body>
</html>