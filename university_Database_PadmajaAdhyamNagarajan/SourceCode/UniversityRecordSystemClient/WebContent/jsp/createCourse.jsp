<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
	
<script type="text/javascript">

$(document).ready(function() {
	
	$('#submit').click(function(){
		
		var cName = document.getElementById('cName').value;
		var credits = document.getElementById('credits').value;
		var section = document.getElementById('section').value;
		var deptId=document.getElementById('departmentId').value;
		var ck_cName = /^[a-zA-Z0-9 ]{1,100}$/;
		var ck_credits = /^\d{1}$/;
		var ck_section = /^\d{1}$/;
		var ck_deptId = /^\d{0,5}$/;
		
		if(!ck_cName.test(cName)){
			alert("Invalid Course Name !! Only Aplhanumerals are allowed along with spaces");
		}
		else if(!ck_credits.test(credits)){
			alert("Invalid Credit value !! Only Numerals less than 10 are accepted");
		}
		else if(!ck_section.test(section)){
			alert("invalid Section Value !! Only Numerals below 10 are accepted");
		}
		else if(!ck_deptId.test(deptId)){
			alert("Invalid Department Id !! \n Only Numerals below 10000 are accepted");
		}
		else{		
			var details = '{'
			+'"courseName" : "'+cName+'",'
			+'"section" : "'+section+'",'
			+'"credits" : "'+credits+'",'
			+'"departmentId" : "'+deptId+'"'
			+'}';
		
			$.ajax({
		        Type: "GET",
		        url: "http://localhost:8081/UniversityRecordSystemClient/createCourseServlet",
		        data: "details="+details,
		        success: function (msg) {
		        	window.parent.content.location.href="success.jsp";	
		        	alert('Course '+msg+'!');
		        },
		    	error: function (error) {
		    		alert('Failed to save changes! please try again');
		    		$('#error-message').text("Error message");
		   		}
		  });
		}
	});
});

</script>

<head>
<title>Create Course</title>
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
<h1>Create Course :</h1>
<center>
<table>
		<tr>
                    <td style="width: 100px;padding-top: 30px;padding-left: 20px"><b>Course Name:</b></td>
                    <td style="padding-top: 30px;padding-right: 30px">
                        <input type="text" name="cName" id="cName">  
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Section:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="section" id="section">  
                    </td>                    
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Credits:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="credits" id="credits">  
                    </td>                    
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Department ID:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="deptId" id="departmentId">  
                    </td>                    
                </tr>
                <tr >
                    <td style="padding-top: 20px"></td>
                    <td style="padding-top: 20px">
                    <input type="submit" value="Submit" id="submit">
                    </td>
                </tr>
            </table>
</center>
</body>
</html>