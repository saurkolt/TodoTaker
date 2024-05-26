<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note Page</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
	</div>
	<div class="container">
	<h1>Please fill Your Note Details</h1>
	<form action="SaveNoteServlet" method="post">
		<div class="form-group">
			<label for="title">Note Title</label> 
			<input type="text"
			name="title"
				class="form-control" id="title" aria-describedby="emailHelp"
				placeholder="Enter here" required="required">

		</div>
		
		<div class="form-group">
			<label for="exampleInputPassword1">Note Content</label>
			<textarea id="content" 
			placeholder="Enter Your Content Here"
			name="content"
				class="form-control" style="height: 300px" required="required"></textarea>
		</div>
		<div class="contsiner text-center">
			<button type="submit" class="btn btn-primary">Add</button>
		</div>
	</form>
	</div>

</body>
</html>