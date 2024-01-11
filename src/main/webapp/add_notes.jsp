<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="all_js_css.jsp"%>
</head>
<body class="container">
	<%@include file="Navbar.jsp"%>
	<br>

	<h1>Please Fill Your Note Details</h1>
	<br>

	<form action="SaveNoteServlet" method="post">


		<div class="form-group">
			<label for="title">Note Title</label> <input required type="text"
				class="form-control" id="title" aria-describedby="emailHelp"
				name="title" placeholder="Enter Here" />
		</div>


		<div class="form-group">
			<label for="content">Note Content</label>

			<textarea required name="content" id="content"
			 placeholder="Enter Your Content Here"
				class="form-control" 
				style="height: 250px;"
				>
				</textarea>
			<br>

			<div class="container text-center">

				<button type="submit" class="btn btn-primary">Add</button>


			</div>
	</form>



</body>
</html>