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
<title>ShowDatabase Dashboard</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="col-9 mx-auto mt-4">
	<div class="d-flex justify-content-between">
		<h4 class="ms-2 text-dark">
			Hello,
			<c:out value=" ${ user.userName }"></c:out>
		</h4>
		<div>
			<a href="/logout" class="btn btn-outline-dark mt-2">Logout</a>
		</div>
	</div>
	<h1 class="text-primary">TV Shows!</h1>
	<h4> This is a user created database to add and review your favorite TV shows!! </h4>

	<table
		class="table table-striped border-top mb-5">
		<thead class="text-center">
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Network</th>
			</tr>
		</thead>
		<tbody class="bg-light text-center">
			<c:forEach var="book" items="${ allBooks }">
				<tr>
					<td><c:out value="${ book.id }"></c:out></td>
					<td><a href="/books/${ book.id }"><c:out
								value="${ book.title }"></c:out></a></td>
					<td><c:out value="${ book.author }"></c:out></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
    <div class="d-flex justify-content-between mt-4">
		<a href="/books/new" class="btn btn-outline-primary mb-3">Add a Show!
		</a>
	</div>
</body>
</html>