<!DOCTYPE html>
<%@page import="com.entite.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="All_css_js.jsp"%>
<title>this is all notes</title>
</head>
<body>
	<div class="container">
		<%@include file="NavBar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>
		<!-- this is java program -->
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>
				<div class="card mt-4">
					 <img class="card-img-top mx-auto" style="max-width:100px; margin-top: 10px" src="NotesPic/Notes.jpg" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent() %></p>
						
						<div class="container text-center">
						<a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">delete</a>
						<a href="Update_Notes.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">update</a>
						</div>
						<p class="card-text" style="font-weight: bold; color: blue;"><%=note.getAddedDate() %></p>
					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>

	</div>
</body>
</html>