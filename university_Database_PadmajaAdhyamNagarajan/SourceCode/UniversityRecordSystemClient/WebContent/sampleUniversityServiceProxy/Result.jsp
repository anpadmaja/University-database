<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleUniversityServiceProxyid" scope="session" class="Services.UniversityServiceProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleUniversityServiceProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleUniversityServiceProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleUniversityServiceProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        Services.UniversityService getUniversityService10mtemp = sampleUniversityServiceProxyid.getUniversityService();
if(getUniversityService10mtemp == null){
%>
<%=getUniversityService10mtemp %>
<%
}else{
        if(getUniversityService10mtemp!= null){
        String tempreturnp11 = getUniversityService10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String personId_1id=  request.getParameter("personId16");
        int personId_1idTemp  = Integer.parseInt(personId_1id);
        String confirmPassword_2id=  request.getParameter("confirmPassword18");
            java.lang.String confirmPassword_2idTemp = null;
        if(!confirmPassword_2id.equals("")){
         confirmPassword_2idTemp  = confirmPassword_2id;
        }
        java.lang.String changePassword13mtemp = sampleUniversityServiceProxyid.changePassword(personId_1idTemp,confirmPassword_2idTemp);
if(changePassword13mtemp == null){
%>
<%=changePassword13mtemp %>
<%
}else{
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(changePassword13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
}
break;
case 20:
        gotMethod = true;
        String courseId_3id=  request.getParameter("courseId23");
        int courseId_3idTemp  = Integer.parseInt(courseId_3id);
        String courseName_4id=  request.getParameter("courseName25");
            java.lang.String courseName_4idTemp = null;
        if(!courseName_4id.equals("")){
         courseName_4idTemp  = courseName_4id;
        }
        String deptName_5id=  request.getParameter("deptName27");
            java.lang.String deptName_5idTemp = null;
        if(!deptName_5id.equals("")){
         deptName_5idTemp  = deptName_5id;
        }
        java.lang.String generateSearchQuery20mtemp = sampleUniversityServiceProxyid.generateSearchQuery(courseId_3idTemp,courseName_4idTemp,deptName_5idTemp);
if(generateSearchQuery20mtemp == null){
%>
<%=generateSearchQuery20mtemp %>
<%
}else{
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(generateSearchQuery20mtemp));
        %>
        <%= tempResultreturnp21 %>
        <%
}
break;
case 29:
        gotMethod = true;
        String personId_6id=  request.getParameter("personId32");
        int personId_6idTemp  = Integer.parseInt(personId_6id);
        java.lang.String getStudentDetails29mtemp = sampleUniversityServiceProxyid.getStudentDetails(personId_6idTemp);
if(getStudentDetails29mtemp == null){
%>
<%=getStudentDetails29mtemp %>
<%
}else{
        String tempResultreturnp30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getStudentDetails29mtemp));
        %>
        <%= tempResultreturnp30 %>
        <%
}
break;
case 34:
        gotMethod = true;
        String studentId_7id=  request.getParameter("studentId37");
        int studentId_7idTemp  = Integer.parseInt(studentId_7id);
        String flag_8id=  request.getParameter("flag39");
            java.lang.String flag_8idTemp = null;
        if(!flag_8id.equals("")){
         flag_8idTemp  = flag_8id;
        }
        java.lang.String getCourseListForStudent34mtemp = sampleUniversityServiceProxyid.getCourseListForStudent(studentId_7idTemp,flag_8idTemp);
if(getCourseListForStudent34mtemp == null){
%>
<%=getCourseListForStudent34mtemp %>
<%
}else{
        String tempResultreturnp35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getCourseListForStudent34mtemp));
        %>
        <%= tempResultreturnp35 %>
        <%
}
break;
case 41:
        gotMethod = true;
        String personId_9id=  request.getParameter("personId44");
        int personId_9idTemp  = Integer.parseInt(personId_9id);
        java.lang.String getChargesDue41mtemp = sampleUniversityServiceProxyid.getChargesDue(personId_9idTemp);
if(getChargesDue41mtemp == null){
%>
<%=getChargesDue41mtemp %>
<%
}else{
        String tempResultreturnp42 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getChargesDue41mtemp));
        %>
        <%= tempResultreturnp42 %>
        <%
}
break;
case 46:
        gotMethod = true;
        String username_10id=  request.getParameter("username49");
            java.lang.String username_10idTemp = null;
        if(!username_10id.equals("")){
         username_10idTemp  = username_10id;
        }
        String password_11id=  request.getParameter("password51");
            java.lang.String password_11idTemp = null;
        if(!password_11id.equals("")){
         password_11idTemp  = password_11id;
        }
        java.lang.String getLoginDetails46mtemp = sampleUniversityServiceProxyid.getLoginDetails(username_10idTemp,password_11idTemp);
if(getLoginDetails46mtemp == null){
%>
<%=getLoginDetails46mtemp %>
<%
}else{
        String tempResultreturnp47 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getLoginDetails46mtemp));
        %>
        <%= tempResultreturnp47 %>
        <%
}
break;
case 53:
        gotMethod = true;
        String details_12id=  request.getParameter("details56");
            java.lang.String details_12idTemp = null;
        if(!details_12id.equals("")){
         details_12idTemp  = details_12id;
        }
        java.lang.String createInstructor53mtemp = sampleUniversityServiceProxyid.createInstructor(details_12idTemp);
if(createInstructor53mtemp == null){
%>
<%=createInstructor53mtemp %>
<%
}else{
        String tempResultreturnp54 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createInstructor53mtemp));
        %>
        <%= tempResultreturnp54 %>
        <%
}
break;
case 58:
        gotMethod = true;
        String personId_13id=  request.getParameter("personId61");
        int personId_13idTemp  = Integer.parseInt(personId_13id);
        java.lang.String getTransactions58mtemp = sampleUniversityServiceProxyid.getTransactions(personId_13idTemp);
if(getTransactions58mtemp == null){
%>
<%=getTransactions58mtemp %>
<%
}else{
        String tempResultreturnp59 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getTransactions58mtemp));
        %>
        <%= tempResultreturnp59 %>
        <%
}
break;
case 63:
        gotMethod = true;
        String courseId_14id=  request.getParameter("courseId66");
        int courseId_14idTemp  = Integer.parseInt(courseId_14id);
        java.lang.String getCourseDetails63mtemp = sampleUniversityServiceProxyid.getCourseDetails(courseId_14idTemp);
if(getCourseDetails63mtemp == null){
%>
<%=getCourseDetails63mtemp %>
<%
}else{
        String tempResultreturnp64 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getCourseDetails63mtemp));
        %>
        <%= tempResultreturnp64 %>
        <%
}
break;
case 68:
        gotMethod = true;
        String details_15id=  request.getParameter("details71");
            java.lang.String details_15idTemp = null;
        if(!details_15id.equals("")){
         details_15idTemp  = details_15id;
        }
        java.lang.String editPersonDetails68mtemp = sampleUniversityServiceProxyid.editPersonDetails(details_15idTemp);
if(editPersonDetails68mtemp == null){
%>
<%=editPersonDetails68mtemp %>
<%
}else{
        String tempResultreturnp69 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(editPersonDetails68mtemp));
        %>
        <%= tempResultreturnp69 %>
        <%
}
break;
case 73:
        gotMethod = true;
        String personId_16id=  request.getParameter("personId76");
        int personId_16idTemp  = Integer.parseInt(personId_16id);
        java.lang.String getInstructorDetails73mtemp = sampleUniversityServiceProxyid.getInstructorDetails(personId_16idTemp);
if(getInstructorDetails73mtemp == null){
%>
<%=getInstructorDetails73mtemp %>
<%
}else{
        String tempResultreturnp74 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getInstructorDetails73mtemp));
        %>
        <%= tempResultreturnp74 %>
        <%
}
break;
case 78:
        gotMethod = true;
        String details_17id=  request.getParameter("details81");
            java.lang.String details_17idTemp = null;
        if(!details_17id.equals("")){
         details_17idTemp  = details_17id;
        }
        java.lang.String submitChangeRequest78mtemp = sampleUniversityServiceProxyid.submitChangeRequest(details_17idTemp);
if(submitChangeRequest78mtemp == null){
%>
<%=submitChangeRequest78mtemp %>
<%
}else{
        String tempResultreturnp79 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(submitChangeRequest78mtemp));
        %>
        <%= tempResultreturnp79 %>
        <%
}
break;
case 83:
        gotMethod = true;
        java.lang.String displayAllStudents83mtemp = sampleUniversityServiceProxyid.displayAllStudents();
if(displayAllStudents83mtemp == null){
%>
<%=displayAllStudents83mtemp %>
<%
}else{
        String tempResultreturnp84 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(displayAllStudents83mtemp));
        %>
        <%= tempResultreturnp84 %>
        <%
}
break;
case 86:
        gotMethod = true;
        String studentId_18id=  request.getParameter("studentId89");
        int studentId_18idTemp  = Integer.parseInt(studentId_18id);
        String courseId_19id=  request.getParameter("courseId91");
            java.lang.String courseId_19idTemp = null;
        if(!courseId_19id.equals("")){
         courseId_19idTemp  = courseId_19id;
        }
        java.lang.String enrollStudent86mtemp = sampleUniversityServiceProxyid.enrollStudent(studentId_18idTemp,courseId_19idTemp);
if(enrollStudent86mtemp == null){
%>
<%=enrollStudent86mtemp %>
<%
}else{
        String tempResultreturnp87 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(enrollStudent86mtemp));
        %>
        <%= tempResultreturnp87 %>
        <%
}
break;
case 93:
        gotMethod = true;
        String details_20id=  request.getParameter("details96");
            java.lang.String details_20idTemp = null;
        if(!details_20id.equals("")){
         details_20idTemp  = details_20id;
        }
        java.lang.String createStudent93mtemp = sampleUniversityServiceProxyid.createStudent(details_20idTemp);
if(createStudent93mtemp == null){
%>
<%=createStudent93mtemp %>
<%
}else{
        String tempResultreturnp94 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createStudent93mtemp));
        %>
        <%= tempResultreturnp94 %>
        <%
}
break;
case 98:
        gotMethod = true;
        String personId_21id=  request.getParameter("personId101");
        int personId_21idTemp  = Integer.parseInt(personId_21id);
        String flag_22id=  request.getParameter("flag103");
            java.lang.String flag_22idTemp = null;
        if(!flag_22id.equals("")){
         flag_22idTemp  = flag_22id;
        }
        java.lang.String removeStudentInstructor98mtemp = sampleUniversityServiceProxyid.removeStudentInstructor(personId_21idTemp,flag_22idTemp);
if(removeStudentInstructor98mtemp == null){
%>
<%=removeStudentInstructor98mtemp %>
<%
}else{
        String tempResultreturnp99 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(removeStudentInstructor98mtemp));
        %>
        <%= tempResultreturnp99 %>
        <%
}
break;
case 105:
        gotMethod = true;
        String studentId_23id=  request.getParameter("studentId108");
        int studentId_23idTemp  = Integer.parseInt(studentId_23id);
        String courseId_24id=  request.getParameter("courseId110");
            java.lang.String courseId_24idTemp = null;
        if(!courseId_24id.equals("")){
         courseId_24idTemp  = courseId_24id;
        }
        java.lang.String unenrollStudent105mtemp = sampleUniversityServiceProxyid.unenrollStudent(studentId_23idTemp,courseId_24idTemp);
if(unenrollStudent105mtemp == null){
%>
<%=unenrollStudent105mtemp %>
<%
}else{
        String tempResultreturnp106 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(unenrollStudent105mtemp));
        %>
        <%= tempResultreturnp106 %>
        <%
}
break;
case 112:
        gotMethod = true;
        String instructorId_25id=  request.getParameter("instructorId115");
        int instructorId_25idTemp  = Integer.parseInt(instructorId_25id);
        String courseId_26id=  request.getParameter("courseId117");
        int courseId_26idTemp  = Integer.parseInt(courseId_26id);
        java.lang.String removeInstructorFromCourse112mtemp = sampleUniversityServiceProxyid.removeInstructorFromCourse(instructorId_25idTemp,courseId_26idTemp);
if(removeInstructorFromCourse112mtemp == null){
%>
<%=removeInstructorFromCourse112mtemp %>
<%
}else{
        String tempResultreturnp113 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(removeInstructorFromCourse112mtemp));
        %>
        <%= tempResultreturnp113 %>
        <%
}
break;
case 119:
        gotMethod = true;
        String instructorId_27id=  request.getParameter("instructorId122");
        int instructorId_27idTemp  = Integer.parseInt(instructorId_27id);
        String courseId_28id=  request.getParameter("courseId124");
        int courseId_28idTemp  = Integer.parseInt(courseId_28id);
        java.lang.String assignInstructor119mtemp = sampleUniversityServiceProxyid.assignInstructor(instructorId_27idTemp,courseId_28idTemp);
if(assignInstructor119mtemp == null){
%>
<%=assignInstructor119mtemp %>
<%
}else{
        String tempResultreturnp120 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(assignInstructor119mtemp));
        %>
        <%= tempResultreturnp120 %>
        <%
}
break;
case 126:
        gotMethod = true;
        String instructorId_29id=  request.getParameter("instructorId129");
        int instructorId_29idTemp  = Integer.parseInt(instructorId_29id);
        String courseId_30id=  request.getParameter("courseId131");
        int courseId_30idTemp  = Integer.parseInt(courseId_30id);
        java.lang.String replaceIstrucForCourse126mtemp = sampleUniversityServiceProxyid.replaceIstrucForCourse(instructorId_29idTemp,courseId_30idTemp);
if(replaceIstrucForCourse126mtemp == null){
%>
<%=replaceIstrucForCourse126mtemp %>
<%
}else{
        String tempResultreturnp127 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(replaceIstrucForCourse126mtemp));
        %>
        <%= tempResultreturnp127 %>
        <%
}
break;
case 133:
        gotMethod = true;
        java.lang.String displayAllCourses133mtemp = sampleUniversityServiceProxyid.displayAllCourses();
if(displayAllCourses133mtemp == null){
%>
<%=displayAllCourses133mtemp %>
<%
}else{
        String tempResultreturnp134 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(displayAllCourses133mtemp));
        %>
        <%= tempResultreturnp134 %>
        <%
}
break;
case 136:
        gotMethod = true;
        String courseId_31id=  request.getParameter("courseId139");
        int courseId_31idTemp  = Integer.parseInt(courseId_31id);
        String courseName_32id=  request.getParameter("courseName141");
            java.lang.String courseName_32idTemp = null;
        if(!courseName_32id.equals("")){
         courseName_32idTemp  = courseName_32id;
        }
        String deptName_33id=  request.getParameter("deptName143");
            java.lang.String deptName_33idTemp = null;
        if(!deptName_33id.equals("")){
         deptName_33idTemp  = deptName_33id;
        }
        java.lang.String searchForClasses136mtemp = sampleUniversityServiceProxyid.searchForClasses(courseId_31idTemp,courseName_32idTemp,deptName_33idTemp);
if(searchForClasses136mtemp == null){
%>
<%=searchForClasses136mtemp %>
<%
}else{
        String tempResultreturnp137 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(searchForClasses136mtemp));
        %>
        <%= tempResultreturnp137 %>
        <%
}
break;
case 145:
        gotMethod = true;
        java.lang.String displayAllInstructors145mtemp = sampleUniversityServiceProxyid.displayAllInstructors();
if(displayAllInstructors145mtemp == null){
%>
<%=displayAllInstructors145mtemp %>
<%
}else{
        String tempResultreturnp146 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(displayAllInstructors145mtemp));
        %>
        <%= tempResultreturnp146 %>
        <%
}
break;
case 148:
        gotMethod = true;
        String details_34id=  request.getParameter("details151");
            java.lang.String details_34idTemp = null;
        if(!details_34id.equals("")){
         details_34idTemp  = details_34id;
        }
        String courseId_35id=  request.getParameter("courseId153");
        int courseId_35idTemp  = Integer.parseInt(courseId_35id);
        java.lang.String editCourseDetails148mtemp = sampleUniversityServiceProxyid.editCourseDetails(details_34idTemp,courseId_35idTemp);
if(editCourseDetails148mtemp == null){
%>
<%=editCourseDetails148mtemp %>
<%
}else{
        String tempResultreturnp149 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(editCourseDetails148mtemp));
        %>
        <%= tempResultreturnp149 %>
        <%
}
break;
case 155:
        gotMethod = true;
        String requestType_36id=  request.getParameter("requestType158");
            java.lang.String requestType_36idTemp = null;
        if(!requestType_36id.equals("")){
         requestType_36idTemp  = requestType_36id;
        }
        java.lang.String viewPendingChangeRequests155mtemp = sampleUniversityServiceProxyid.viewPendingChangeRequests(requestType_36idTemp);
if(viewPendingChangeRequests155mtemp == null){
%>
<%=viewPendingChangeRequests155mtemp %>
<%
}else{
        String tempResultreturnp156 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(viewPendingChangeRequests155mtemp));
        %>
        <%= tempResultreturnp156 %>
        <%
}
break;
case 160:
        gotMethod = true;
        String transaction_37id=  request.getParameter("transaction163");
            java.lang.String transaction_37idTemp = null;
        if(!transaction_37id.equals("")){
         transaction_37idTemp  = transaction_37id;
        }
        java.lang.String makePayment160mtemp = sampleUniversityServiceProxyid.makePayment(transaction_37idTemp);
if(makePayment160mtemp == null){
%>
<%=makePayment160mtemp %>
<%
}else{
        String tempResultreturnp161 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(makePayment160mtemp));
        %>
        <%= tempResultreturnp161 %>
        <%
}
break;
case 165:
        gotMethod = true;
        String details_38id=  request.getParameter("details168");
            java.lang.String details_38idTemp = null;
        if(!details_38id.equals("")){
         details_38idTemp  = details_38id;
        }
        java.lang.String createCourse165mtemp = sampleUniversityServiceProxyid.createCourse(details_38idTemp);
if(createCourse165mtemp == null){
%>
<%=createCourse165mtemp %>
<%
}else{
        String tempResultreturnp166 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(createCourse165mtemp));
        %>
        <%= tempResultreturnp166 %>
        <%
}
break;
case 170:
        gotMethod = true;
        String courseId_39id=  request.getParameter("courseId173");
        int courseId_39idTemp  = Integer.parseInt(courseId_39id);
        java.lang.String removeCourse170mtemp = sampleUniversityServiceProxyid.removeCourse(courseId_39idTemp);
if(removeCourse170mtemp == null){
%>
<%=removeCourse170mtemp %>
<%
}else{
        String tempResultreturnp171 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(removeCourse170mtemp));
        %>
        <%= tempResultreturnp171 %>
        <%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>