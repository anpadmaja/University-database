<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript"
src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">

function getVal(r){
	
		t = document.getElementById('courseTimeTable').rows;
		
		al='the text values in the clicked row are:'; 
		
		for(var i=0;i<t.length;i++){
			for(var j=0;j<t[i].cells.length;j++){ 
				if(r==t[i] && t[i].cells[j].id == 'personId'){
							assigningInstructorId=t[i].cells[j].innerHTML; 	
				}
			}
		}
		alert(al);
}

function getCookie(personId)
{
		var c_value = document.cookie;
		var c_start = c_value.indexOf(" " + personId + "=");
		if (c_start == -1)
		{
		c_start = c_value.indexOf(personId + "=");
		}
		if (c_start == -1)
		{
		c_value = null;
	}
	else
	{
		c_start = c_value.indexOf("=", c_start) + 1;
		var c_end = c_value.indexOf(";", c_start);
		if (c_end == -1)
		{
		c_end = c_value.length;
		}
		c_value = unescape(c_value.substring(c_start,c_end));
	}
	return c_value;
}

window.onload = function(){
	
	var courseNum = getCookie("courseId");
	$('#courseId').text(courseNum);
	
	
	$.ajax({
		type:"GET",
		url:"http://localhost:8081/UniversityRecordSystemClient/displayAllInstructorsServlet",
		success:function(msg){
			
			var dataArray = [];   
			var jsonObj = [];
			jsonObj = JSON.parse(msg);
        	dataArray = [ ['firstName', 'lastName', 'addressLine', 'city', 'state', 'zip','department Id', 'meetingHours', 'officeRoom', 'dateOfJoining', 'numberOfClasses', 'position','personId'] ];
			for ( var i = 0; i < jsonObj.length; i++) {
				dataArray.push([ jsonObj[i].firstName,
				                 jsonObj[i].lastName,
				                 jsonObj[i].addressLine,
				                 jsonObj[i].city,
				                 jsonObj[i].state,
				                 jsonObj[i].zip,
				                 jsonObj[i].departmentId,
				                 jsonObj[i].meetingHours,
				                 jsonObj[i].officeRoom,
				                 jsonObj[i].dateOfJoining,
				                 jsonObj[i].noOfClasses,
				                 jsonObj[i].position,
				                 parseInt(jsonObj[i].personId) ]);
			}
			
		 	for ( var i = 0; i < jsonObj.length; i++) {
					$('#courseTimeTable').append('<tr onclick="getVal(this)"><td id="firstName">'+jsonObj[i].firstName
							+'</td><td id="lastName">'+jsonObj[i].lastName
							+'</td><td id="addressLine">'+jsonObj[i].addressLine
							+'</td><td id="city">'+jsonObj[i].city
							+'</td><td id="state">'+jsonObj[i].state
							+'</td><td id="zip">'+jsonObj[i].zip
							+'</td><td id="departmentId">'+jsonObj[i].departmentId
							+'</td><td id="meetingHours">'+jsonObj[i].meetingHours
							+'</td><td id="officeRoom">'+jsonObj[i].officeRoom
							+'</td><td id="dateOfJoining">'+jsonObj[i].dateOfJoining
							+'</td><td id="noOfClasses">'+jsonObj[i].noOfClasses
							+'</td><td id="position">'+jsonObj[i].position
							+'</td><td id="personId">'+jsonObj[i].personId
							+'</td><td id="selectCheckBox"><input type="checkbox">'
							+'</td></tr>');
			}
		},
		error:function(msg){
		alert('error');	
		}
	});
};

function replace(){
	
	$.ajax({
	
		type: "GET",
		url:"http://localhost:8081/UniversityRecordSystemClient/replaceInstructorServlet",
		data:"personId="+assigningInstructorId+"&courseId="+getCookie("courseId"),
		success:function(msg){
			alert('Course assigned successfully');
			window.parent.content.location.href="viewRequests.jsp";
		},
		error:function(msg){
			alert('Error in submitting the request for change. Please try again!');
		}
	});

}

</script>
<head>
<title>Edit Courses</title>
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
<center>
<table>
                <tr>
		    <td style="padding-top: 20px"></td>
                    <td style="width: 100px;padding-top: 30px;"><h3>Assign Course to Instructor</h3></td>
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 30px;padding-left: 20px"><b>Course ID:</b></td>
                    <td style="padding-top: 30px;padding-right: 30px"><label id="courseId"></label>
                    </td>
                </tr>
</table>
<div id="admin_div">
	<table border=2 id="courseTimeTable">
	<tr>
		<td  style="width: 100px;padding-left: 20px"><b>First Name</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Last Name</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Address Line</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>City</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>State</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Zip</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Department ID</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Meeting Hours</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Office Room</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Date of Joining</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Number of Classes</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Designation</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Instructor ID</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Select</b></td>
	</tr>
</table>
	<input type="button" id="replace" value="Replace Instructor" onclick="replace();">
</div>
</center>
</body>
</html>