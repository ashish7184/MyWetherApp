<!doctype html>
<html lang="en">
  <head>
    <%@include file="All_css_js.jsp" %>
    <title>index_jsp</title>
  </head>
  <body>
     <div class="container">
       <%@include file="NavBar.jsp"%>
       
       <div class="card my-5">
          <img alt="this is home page" src="NotesPic/Notes.jpg" style="width: 500px; margin: auto;">
          <h1 class="text-primary text-uppercase text-center mt-3">Start Taking your Notes</h1>
          <div class="container text-center">
           <a class="btn btn-outline-primary text-center" href="Add_Note.jsp">Start here</a>
          </div>
       </div>
     </div>
  </body>
</html>