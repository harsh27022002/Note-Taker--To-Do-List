<%@page import="com.entities.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Your Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
<div class="container">
		<%@include file="Navbar.jsp"%>
		<br>
		<h1>This Is Edit Page</h1>
		<%
		 int noteId=Integer.parseInt(request.getParameter("note_id").trim());
		 
		 Session s2 = FactoryProvider.getFactory().openSession();
		 
		 
		 Note note=(Note)s2.get(Note.class, noteId);
		
		
		%>
		
		
		<form action="UpdateServlet" method="post">

		<input value="<%= note.getId()%>" name="noteId" type="hidden"/>
		
		
		<div class="form-group">
			<label for="title">Note Title</label>
			 <input required type="text"
				class="form-control" id="title" aria-describedby="emailHelp"
				name="title" placeholder="Enter Here" value="<%= note.getTitle()%>"/>
		</div>


		<div class="form-group">
			<label for="content">Note Content</label>

			<textarea required name="content" id="content"
			 placeholder="Enter Your Content Here"
				class="form-control" 
				style="height: 250px;"
				>
				<%= note.getContent()%>
				</textarea>
			<br>

			<div class="container text-center">

				<button type="submit" class="btn btn-success">Save Your Note</button>


			</div>
	</form>

</body> 
</html>