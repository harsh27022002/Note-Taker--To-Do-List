<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.*"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Notes: Note Taker</title>
<%@include file="all_js_css.jsp"%>
</head>
<body class="container">
	<%@include file="Navbar.jsp"%>
	<br>
	<h1 style='text-align:center;'>All Notes</h1>
	
	
	<div class="row">
	
	<div class="col-12">
	
	<%
	Session s= FactoryProvider.getFactory().openSession();
	Query query=s.createQuery("from Note");
	List<Note> list = query.list();
	
	for(Note note:list){
		
	%>
	
	<div class="card mt-4" >
  	<img class="card-img-top m-4 mx-auto" style="max-width: 100px" src="image/notepad.png" alt="Card image cap">
  	<div class="card-body px-5" style="text-align: justify;">
    <h5 class="card-title"><%= note.getTitle() %></h5>
    <p class="card-text"><%= note.getContent() %></p>
   	<div class="container text-center">
   	 <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary mr-3">Update</a>
     <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a></div>
 	 </div>
	</div>
	
	
	
	<%
	}
	s.close();
	%>
	
	
	
	
	</div>
	
	</div>
	
</body>
</html>