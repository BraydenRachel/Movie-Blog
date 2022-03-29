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
<body style="background-color:lightgrey">
	<body class="col-9 mx-auto mt-4">
				<div class="d-flex justify-content-between">
					<h4 class="ms-2 text-dark">
						Welcome to the show TV Database 
						<c:out value=" ${ user.userName }!"></c:out>
					</h4>
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
				<h1>TV Shows!</h1>
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
		<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	</body>
</body>
</html>