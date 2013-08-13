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
		
		var fName = document.getElementById('fName').value;
		var lName = document.getElementById('lName').value;
		var addressLine = document.getElementById('addressLine').value;
		var city = document.getElementById('city').value;
		var state = document.getElementById('state').value;
		var zip = document.getElementById('zip').value;
		var admitSem = document.getElementById('admitSem').value;
		var currSem = document.getElementById('currSem').value;
		var degree = document.getElementById('degree').value;
		var estimatedGradYear = document.getElementById('estimatedGraduationYear').value;
		var gpa = document.getElementById('gpa').value;
		var deptId=document.getElementById('deptId').value;
		var ck_fName = /^[a-zA-Z ]{1,100}$/;
		var ck_lName = /^[a-zA-Z ]{1,100}$/;
		var ck_addressLine = /^[a-zA-Z0-9-_#,();:. ]{1,500}$/;
		var ck_city = /^[a-zA-Z-_ ]{1,100}$/;
		var ck_state = /^[a-zA-Z-_ ]{1,100}$/;
		var ck_zip = /^\d{5}$/;
		var ck_admitSem = /^[a-zA-z0-9 ]{1,30}$/;
		var ck_currSem = /^[0-9]{1,2}$/;
		var ck_degree = /^[a-zA-Z ]{1,100}$/;
		var ck_estimatedGradYear = /^[0-9]{4}$/;
		var ck_gpa = /^[0-9.]{0,3}$/;
		var ck_deptId = /^[0-9]{0,5}$/;
		
		if(!ck_fName.test(fName)){
			alert("Invalid First Name !! Only Aplhabets are allowed along with spaces");
		}
		else if(!ck_lName.test(lName)){
			alert("Invalid Last ame !! Only Aplhabets are allowed along with spaces");
		}
		else if(!ck_addressLine.test(addressLine)){
			alert("Invalid Characters in Address line !! \n Only Special Characters []-_#,();:.] are allowed");
		}
		else if(!ck_city.test(city)){
			alert("Invalid City Name !! \n only Alphabets are accepted along with Special Characters [ - _]");
		}
		else if(!ck_state.test(state)){
			alert("Invalid State Name !! \n only Alphabets are accepted along with Special Characters [ - _]");
		}
		else if(!ck_zip.test(zip)){
			alert("Invalid Zip Code Value!! \n only numerics are allowed and should be of below format \n 12345-6789");
		}
		else if(!ck_admitSem.test(admitSem)){
			alert("Invalid Admit Sem Value !! only AplhaNumerals are allowed");
		}
		else if(!ck_currSem.test(currSem)){
			alert("Invalid Current Sem Value !! only Numerics less than 100 are allowed");
		}
		else if(!ck_degree.test(degree)){
			alert("Invalid Degree Value !! Only Alphabets are allowed along with spaces");
		}
		else if(!ck_estimatedGradYear.test(estimatedGradYear)){
			alert("Invalid Estimated Grad Year !! year should be in the format of YYYY");
		}
		else if(!ck_gpa.test(gpa)){
			alert("Invalid GPA Value");
		}
		else if(!ck_deptId.test(deptId)){
			alert("invalid Department ID !! Only Numerals less than 10000 are accepted");
		}
		else{		
			 details = '{'
			+'"firstName" : "'+fName+'",'
			+'"lastName" : "'+lName+'",'
			+'"addressLine" : "'+addressLine+'",'
			+'"state" : "'+state+'",'
			+'"city" : "'+city+'",'
			+'"zip" : "'+zip+'",'
			+'"admitSemester" : "'+admitSem+'",'
			+'"currSemester" : "'+currSem+'",'
			+'"degreePursuing" : "'+degree+'",'
			+'"estimateGraduationYear" : "'+estimatedGradYear+'",'
			+'"gpa" : "'+gpa+'",'
			+'"departmentId" : "'+deptId+'"'
			+'}';
			
			$.ajax({
		        Type: "GET",
		        url: "http://localhost:8081/UniversityRecordSystemClient/createStudentServlet",
		        data: "details="+details,
		        success: function (msg) {
		        	window.parent.content.location.href="success.jsp";	
		        	alert("Student Account Created Sucessfully!!");
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
<title>Create Student</title>
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
<h1>Create Student</h1>
<center>
<table>
		<tr>
                    <td style="width: 100px;padding-top: 30px;padding-left: 20px"><b>First Name:</b></td>
                    <td style="padding-top: 30px;padding-right: 30px">
                        <input type="text" name="fName" id="fName">  
                    </td>
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Last Name:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="lName" id="lName">  
                    </td>                    
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Address Line:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="addressLine" id="addressLine">  
                    </td>                    
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>City:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="city" id="city">  
                    </td>                    
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>State:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="state" id="state">  
                    </td>                    
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Zip:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="zip" id="zip">  
                    </td>                    
                </tr>  
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Department ID:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="deptId" id="deptId">  
                    </td>                    
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Admit Semester:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="admitSem" id="admitSem">  
                    </td>                    
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Current Semester:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="currSem" id="currSem">  
                    </td>                    
                </tr>	
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Degree Pursuing:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="degree" id="degree">  
                    </td>                    
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>Estimated Year of Graduation:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="estimatedGraduationYear" id="estimatedGraduationYear">  
                    </td>                    
                </tr>
                <tr>
                    <td style="width: 100px;padding-top: 20px;padding-left: 20px"><b>GPA:</b></td>
                    <td style="padding-top: 20px">
                        <input type="text" name="gpa" id="gpa">  
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