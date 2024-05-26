<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>
	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
	
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		
		Session s = FactoryProvider.getFactory().openSession();
		
		Note note = (Note) s.get(Note.class, noteId);
		
		%>
		<h1>Edit Your Notes</h1>
		<form action="UpdateServlet" method="post">
		<input value="<%=note.getId()%>" name="noteId" type="hidden"/>
		<div class="form-group">
			<label for="title">Note Title</label> 
			<input type="text"
			name="title"
				class="form-control" id="title" aria-describedby="emailHelp"
				placeholder="Enter here" required="required"
				value="<%=note.getTitile() %>"
				>

		</div>
		
		<div class="form-group">
			<label for="exampleInputPassword1">Note Content</label>
			<textarea id="content" 
			placeholder="Enter Your Content Here"
			name="content"
				class="form-control" style="height: 300px" required="required"
				
				><%=note.getContent() %></textarea>
		</div>
		<div class="contsiner text-center">
			<button type="submit" class="btn btn-success">Update Your Note</button>
		</div>
	</form>
	</div>
</body>
</html>