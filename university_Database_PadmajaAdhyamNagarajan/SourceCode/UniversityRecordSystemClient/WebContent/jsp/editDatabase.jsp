<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>HTML Frames Example - Content</title>
<style type="text/css">
body {
	font-family:verdana,arial,sans-serif;
	font-size:10pt;
	margin:30px;
	background-color:#FFFAF0;
	}
</style>
</head>
<body>

<h3>Select what you would like to edit in the database:</h3><br><br>

<ol>
<li><a href="createStudent.jsp" target="content">Create Students</a></li>
<li><a href="deleteStudent.jsp" target="content">Delete Students</a></li>
<li><a href="createInstructor.jsp" target="content">Create Instructor</a></li>
<li><a href="deleteInstructor.jsp" target="content">Delete Instructor</a></li>
<li><a href="createCourse.jsp" target="content">Create Courses</a></li>
<li><a href="deleteCourse.jsp" target="content">Delete Courses</a></li>
</ol>
</body>
</html>