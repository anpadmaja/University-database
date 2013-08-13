<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.min.js"></script>
	
<script type="text/javascript"></script>
<script>

dataArrayCheckBox = [];

function assign(){
	
	window.parent.content.location.href="assignInstructor.jsp";
}

function replace(){
	
	window.parent.content.location.href="replaceInstructor.jsp";
}

function getVal(r){
	
	if(getCookie("flag") == "S"){
		t = document.getElementById('courseTimeTable').rows;
		
		al='the text values in the clicked row are:'; 
		
		for(var i=0;i<t.length;i++){
			for(var j=0;j<t[i].cells.length;j++){ 
				if(r==t[i] && t[i].cells[j].id === 'courseId'){
					
					dataArrayCheckBox.push
					(
							t[i].cells[j].innerHTML 	
					);
				}
			}
		}
		//alert(al);
	}
	else{
		t = document.getElementById('courseTimeTableAdmin').rows;
		
		al='the text values in the clicked row are:'; 
		
		for(var i=0;i<t.length;i++){
			for(var j=0;j<t[i].cells.length;j++){
				if(r==t[i] && t[i].cells[j].id == 'courseId'){
					var courseId = t[i].cells[j].innerHTML;
					setCookie(courseId); 	
				}
			}
		}
		//alert(al);
	}
}

function setCookie(courseId)
{
document.cookie="courseId="+courseId;
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

function submit(){
	
	var div = document.getElementById('hidden_div_admin');
	div.style.display = 'none';   
	var deptName = document.getElementById('searchDeptName').value;
	var courseId = document.getElementById('searchCourseNum').value;
	var courseName = document.getElementById('searchCourseName').value;
	var ck_deptName = /^[a-zA-Z ]{1,500}$/;
	var ck_courseNumber = /^\d{1,10}$/;
	var ck_courseName = /^[a-zA-Z ]{1,500}$/;
	var error = "";
	if(!ck_deptName.test(deptName)&& deptName!=""  ){
		alert("Invalid Department Name \n Search only using Alphabets \n No Numerals or special characters are allowed");
	}
	else if(!ck_courseNumber.test(courseId)&& courseId != "" ){
		alert("Invalid Course ID \n Only Numbers are allowed \n No Alphabets or Special Characters are allowed");
	}
	else if(!ck_courseName.test(courseName)&& courseName != ""){
		alert("Invalid Course Name \n Search only using Alphabets \n No Numerals or special characters are allowed");
	}
	else if(deptName != "" || courseId != "" || courseName != ""){
			
			$.ajax({
				type:"GET",
				url:"http://localhost:8081/UniversityRecordSystemClient/searchForClassesServlet",
				data:"deptName="+deptName+"&courseId="+courseId+"&courseName="+courseName+"&flag="+getCookie("flag"),
				success:function(msg){
					
					if (div.style.display == 'none') {
					     div.style.display = '';
					 }
					var dataArray = [];   
					var jsonObj = [];
					jsonObj = JSON.parse(msg);
		        	dataArray = [ ['course Id', 'course name', 'room number', 'class hours', 'credits', 'section','department Id','department Name','Instructor','Select' ] ];
					for ( var i = 0; i < jsonObj.length; i++) {
						dataArray.push([ jsonObj[i].courseId,
						                 jsonObj[i].courseName,
						                 parseInt(jsonObj[i].roomNumber),
						                 jsonObj[i].classHours,
						                 parseInt(jsonObj[i].credits),
						                 parseInt(jsonObj[i].section),
						                 parseInt(jsonObj[i].departmentId),
						                 jsonObj[i].departmentName,
										 jsonObj[i].instructor ]);
					}
					
					for(var i = document.getElementById("courseTimeTable").rows.length; i > 0;i--)
					{
					document.getElementById("courseTimeTable").deleteRow(i -1);
					}
					
					$('#courseTimeTableAdmin').append('<tr>'+
							'<td  style="width: 100px;padding-left: 20px"><b>Course Id</b></td>'
							+'<td  style="width: 100px;padding-left: 20px"><b>Course Name</b></td>'
							+'<td  style="width: 100px;padding-left: 20px"><b>Room Number</b></td>'		
							+'<td  style="width: 100px;padding-left: 20px"><b>Class Hours</b></td>'
							+'<td  style="width: 100px;padding-left: 20px"><b>Credits</b></td>'
							+'<td  style="width: 100px;padding-left: 20px"><b>Section</b></td>'
							+'<td  style="width: 100px;padding-left: 20px"><b>department Id</b></td>'
							+'<td  style="width: 100px;padding-left: 20px"><b>department Name</b></td>'
							+'<td  style="width: 100px;padding-left: 20px"><b>Instructor</b></td>'
							+'<td  style="width: 100px;padding-left: 20px"><b>Select</b></td>'
						+'</tr>');
					
				 	for ( var i = 0; i < jsonObj.length; i++) {
							$('#courseTimeTableAdmin').append('<tr onclick="getVal(this)"><td id="courseId">'+jsonObj[i].courseId
									+'</td><td id="courseName">'+jsonObj[i].courseName
									+'</td><td id="roomNumber">'+jsonObj[i].roomNumber
									+'</td><td id="classHours">'+jsonObj[i].classHours
									+'</td><td id="credits">'+jsonObj[i].credits
									+'</td><td id="section">'+jsonObj[i].section
									+'</td><td id="departmentId">'+jsonObj[i].departmentId
									+'</td><td id="departmentName">'+jsonObj[i].departmentName
									+'</td><td id="instructor">'+jsonObj[i].instructor
									+'</td><td id="selectCheckBox"><input type="checkbox">'
									+'</td></tr>');

					}  
				},
				error:function(msg){
					alert('Failed to retrieve data! please try again!');
				},
				
			});
		}
	else{
			alert("Enter atleast one search criteria !!"); 
		}
	}



</script>
<head>
<title>Search a Class</title>
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
<center><h2>Search for Classes</h2>
<h3>Enter at the least one search criteria</h3>
<div>
<br>
<table>
<tr><td>Enter the department name you are searching for:</td><td><input type="text" name="searchClassNum" id="searchDeptName"><td></tr>
<tr><td>Enter the course number you are searching for:</td><td><input type="text" name="searchClassNum" id="searchCourseNum"><td></tr>
<tr><td>Enter the course name you are searching for:</td><td><input type="text" name="searchClassNum" id="searchCourseName"><td></tr>
</table>
<br><br>
<input type="button" id="submit" value="Search" onclick="submit();">
</div>
<br><br>
<div id="hidden_div_admin" style="display:none">
<table id="courseTimeTableAdmin" border=1>
	<tr>
		<td  style="width: 100px;padding-left: 20px"><b>Course Id</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Course Name</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Room Number</b></td>		
		<td  style="width: 100px;padding-left: 20px"><b>Class Hours</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Credits</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Section</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>department Id</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>department Name</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Instructor</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>Select</b></td>
		<!-- <td  style="width: 100px;padding-left: 20px"><b>Availability</b></td>
		<td  style="width: 100px;padding-left: 20px"><b>"Check box for selecting"</b></td> -->
	</tr>
</table>
<input type="button" id="assign" value="Assign Instructor" onclick="assign();">
<input type="button" id="replace" value="Replace Instructor" onclick="replace();">
</div>

</center>
</body>
</html>