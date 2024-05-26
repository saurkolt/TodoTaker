<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show All Notes</title>
<%@include file="all_js_css.jsp"%>

</head>
<body>
	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes</h1>
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q1 = s.createQuery("from Note");
				List<Note> list = q1.list();
				if (list.isEmpty()) {
				%>
				<div class="card mt-3">
					<h3 class="">Your Note are Empty Please Add New Note</h3>
					<a href="add_notes.jsp" class="btn btn-primary">Add Note</a>
				</div>


				<%
				} else {
				for (Note note : list) {
				%>
				<div class="card mt-3">
					<img class="card-img-top m-4 mx-auto" style="max-width: 100px"
						src="img/post-it.png" alt="Card image cap">
					<div class="card-body px-5">


						<small class="text-primary"><b>Note Save Date : <%=note.getAddDate()%></b></small>
						<h5 class="card-title"><%=note.getTitile()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<div class="container text-center mt-2">

							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a>
						</div>

					</div>
				</div>
				<%
				}

				s.close();

				}
				%>


			</div>
		</div>

	</div>
</body>
</html>