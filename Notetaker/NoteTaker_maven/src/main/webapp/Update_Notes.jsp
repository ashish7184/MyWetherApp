<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session" %>
<%@page import="com.entite.Note" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>this is update page..</title>
<%@include file="All_css_js.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="NavBar.jsp"%>
		<br>
		<h1>Please update your details..</h1>
		 <%
		  int noteid=Integer.parseInt(request.getParameter("Stu_id").trim());
		  Session s=FactoryProvider.getFactory().openSession();
		  Note note=(Note)s.get(Note.class, noteid);
		 %>
		<form action="UpdateNoteServlet" method="post">
		  <input value="<%=note.getId()%>" name="noteid" type="hidden">
			<div class="form-group">
				<label for="title">Title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Please update your title here." value="<%=note.getTitle() %>"> 
			</div>
			<div class="form-group">
				<label for="content">Content</label> 
				<textarea required id="content" name="content" class="form-control" placeholder="Please update content here.." style="height: 300px;"><%=note.getContent() %></textarea>
			</div>
			<div class="form-group container text-center">
			  <button type="submit" class="btn btn-success">Update Notes</button>
			</div>
		</form>
	</div>
</body>
</html>