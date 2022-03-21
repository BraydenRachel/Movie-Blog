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
			<h2 class="ms-4">
				<c:out value="${ book.title }"></c:out>
			</h2>
			<div>
				<a href="/books" class="btn btn-outline-success mb-3">Back to Dashboard</a>
			</div>
		</div>
		<div class="d-flex mt-5 ms-3">
			<h3>Posted By:	${book.creator.userName}</h3>
		</div>
		<div>
			<h4>Network:	${book.author}</h4>
		</div>
		<div>
			<h4>Description:</h4>
			<p>${book.thoughts}</p>
		</div>
		
		<div class="d-flex col-6 justify-content-end">
			<c:choose>
				<c:when test="${book.creator.id == userId}">
					<a href="/books/${book.id}/edit" class="btn btn-outline-dark ms-5 py-1 px-1">Edit
						Book</a>				
				</c:when>
			</c:choose>
		</div>
		
	</div>
</body>
</html>