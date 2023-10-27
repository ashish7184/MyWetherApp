<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="All_css_js.jsp"%>
<title>Add_Note page</title>
</head>
<body>
	<div class="container">
		<%@include file="NavBar.jsp"%><br />
		<h2>Please file Add Note .....</h2>
		<!-- this is add from -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Title</label> <input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter title here."> 
			</div>
			<div class="form-group">
				<label for="content">Content</label> 
				<textarea required id="content" name="content" class="form-control" placeholder="Enter content here.." style="height: 300px;"></textarea>
			</div>
			<div class="form-group container text-center">
			  <button type="submit" class="btn btn-primary">Add Notes</button>
			</div>
		</form>
	</div>

</body>
</html>