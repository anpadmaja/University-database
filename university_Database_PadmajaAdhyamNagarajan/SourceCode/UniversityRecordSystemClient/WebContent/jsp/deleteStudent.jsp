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
		
		var studentId = document.getElementById('studentId').value;
		var ck_studentId =/^\d{3}-\d{2}-\d{4}$/;
		var flag = 'S';
		if(!ck_studentId.test(studentId)){
			alert("Please enter Only Integers as username in the following format 123-45-6789");
		}
		else{		
			$.ajax({
		        Type: "GET",
		        url: "http://localhost:8081/UniversityRecordSystemClient/removeStudentInstructorServlet",
		        data: "flag="+flag+"&personId="+studentId,
		        success: function (msg) {
		        	window.parent.content.location.href="success.jsp";	
		        	alert('Student deleted!');
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Student</title>
</head>
<body>
<h1>Delete Student:</h1>
<center>
<table>
				<tr>
                    <td style="width: 100px;padding-top: 30px;padding-left: 20px"><b>Student Id:</b></td>
                    <td style="padding-top: 30px;padding-right: 30px">
                        <input type="text" name="studentId" id="studentId">  
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