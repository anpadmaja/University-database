package test;

import static org.junit.Assert.*;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;

import com.google.gson.Gson;

import ServiceTO.CoursesTO;
import ServiceTO.InstructorTO;
import ServiceTO.PersonTO;
import ServiceTO.StudentTO;
import ServiceTO.TransactionsTO;
import Services.UniversityService;

public class UniversityServiceTest {
	UniversityService service = new UniversityService();

	@Test
	public void searchForClasses() {
		try {
			service.searchForClasses(5, null, null);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void enrollFor() {
		
		try {
			service.enrollStudent(7, "5,6,4");
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void unenrollFor() {
		
		try {
			service.unenrollStudent(1, "4,5,6");
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	@Test
	public void test()
	{
		try {
			service.getStudentDetails(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Test
	public void makePayment() {
		
		try {
			Date date = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
			String utilDate = dateFormat.format(date);
			java.sql.Date sqlToday = new java.sql.Date(dateFormat.parse(utilDate).getTime());
			System.out.println("sql Date =" +sqlToday);
			
			TransactionsTO to = new TransactionsTO();
			to.setAmount(1500);
			to.setPersonId(1);
			to.setCreditCardNum("1242353543");
			to.setBankAccountNum("");
			to.setCreditOrDebit("D");
			to.setTransactionDate(sqlToday);
			to.setTime(timeFormat.format(date));
			
			Gson gson = new Gson();
			String json = gson.toJson(to);
			service.makePayment(json);
			
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void getLoginDetails(){
		
		try {
			service.getLoginDetails("2", "ds");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	@Test
	public void getStudentDetails(){
		try {
			service.getStudentDetails(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void changepwd(){
		service.changePassword(6, "hari");
	}
	
	@Test
	public void getCourseList(){
		try {
			service.getCourseListForStudent(6, "S");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void getCourseListInstruct(){
		try {
			service.getCourseListForStudent(4, "I");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void getCharges(){
		try {
			service.getChargesDue(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void searchClass() throws SQLException{
		service.searchForClasses(5, "data structures", "com");
	}
	
	@Test
	public void getTransaction(){
		try {
			service.getTransactions(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void getCourseDetails(){
		try {
			service.getCourseDetails(5);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void getInstrucDetails(){
		try {
			service.getInstructorDetails(2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void createStudent(){
		StudentTO to = new StudentTO();
		to.setFirstName("Harivardhan");
		to.setLastName("Pyaram");
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		to.setDeptId(5);
		to.setAdmitSemester("Spring 2013");
		to.setCurrSemester(2015);
		to.setDegreePursuing("Masters");
		to.setEstimateGradutationYear(0);

		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.createStudent(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void createInstructor(){
		InstructorTO to = new InstructorTO();
		to.setFirstName("Sandeep");
		to.setLastName("Boinpally");
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		to.setDeptId("5");
		to.setMeetingHours("6PM");
		to.setNoOfClasses(0);
		to.setOfficeRoom("BBC 213");
		to.setPosition("Professor");

		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.createInstructor(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removeStudent(){
		try {
			service.removeStudentInstructor(15, "S");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removeINstructor(){
		try {
			service.removeStudentInstructor(21, "I");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void createCourse(){
			CoursesTO to = new CoursesTO();
			to.setCourseName("Computer Research");
			to.setDepartmentId(5);
			to.setSection("2");
			to.setCredits(3);

			Gson gson = new Gson();
			String json = gson.toJson(to);
			
			try {
				service.createInstructor(json);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	@Test
	public void removeCourse(){
		try {
			service.removeCourse(3);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void replaceInstruc(){
		try {
			service.replaceIstrucForCourse(22, 7);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void assignInstruct(){
		try {
			service.assignInstructor(21, 6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removeInstrucFromCourse(){
		try {
			service.removeInstructorFromCourse(21,6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayAllStudents(){
		try {
			service.displayAllStudents();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayAllCourses(){
		try {
			service.displayAllCourses();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayAllInstructors(){
		try {
			service.displayAllInstructors();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void editPersonDetails(){
		StudentTO to = new StudentTO();
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.editPersonDetails(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void submitChange(){
		PersonTO to = new PersonTO();
		to.setPersonId(5);
		to.setChangeRequest("201 S 4th St");
		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.submitChangeRequest(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void editCourseDetails(){
		CoursesTO to=new CoursesTO();
		to.setRoomNumber("Clark 219");
		to.setClassHours("6.00 PM");
		
		Gson gson = new Gson();
		String json=gson.toJson(to);
		
		try {
			service.editCourseDetails(json, 2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void viewChangeRequests(){
		try {
			service.viewPendingChangeRequests("pending");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void searchForClass() {
		try {
			service.searchForClasses(5, null, null);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void enroll() {
		
		try {
			service.enrollStudent(7, "5,6,4");
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void unenroll() {
		
		try {
			service.unenrollStudent(1, "4,5,6");
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	@Test
	public void tested()
	{
		try {
			service.getStudentDetails(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Test
	public void makesPayment() {
		
		try {
			Date date = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
			String utilDate = dateFormat.format(date);
			java.sql.Date sqlToday = new java.sql.Date(dateFormat.parse(utilDate).getTime());
			System.out.println("sql Date =" +sqlToday);
			
			TransactionsTO to = new TransactionsTO();
			to.setAmount(1500);
			to.setPersonId(1);
			to.setCreditCardNum("1242353543");
			to.setBankAccountNum("");
			to.setCreditOrDebit("D");
			to.setTransactionDate(sqlToday);
			to.setTime(timeFormat.format(date));
			
			Gson gson = new Gson();
			String json = gson.toJson(to);
			service.makePayment(json);
			
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void getLoginDetail(){
		
		try {
			service.getLoginDetails("2", "ds");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	@Test
	public void getStudentDetail(){
		try {
			service.getStudentDetails(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void changepassword(){
		service.changePassword(6, "hari");
	}
	
	@Test
	public void getCourses(){
		try {
			service.getCourseListForStudent(6, "S");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void getCourseListInstructor(){
		try {
			service.getCourseListForStudent(4, "I");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void getCharge(){
		try {
			service.getChargesDue(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void searchClasses() throws SQLException{
		service.searchForClasses(5, "data structures", "com");
	}
	
	@Test
	public void getTransactions(){
		try {
			service.getTransactions(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void getCourseDetail(){
		try {
			service.getCourseDetails(5);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void getInstrucDetail(){
		try {
			service.getInstructorDetails(2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void createStudents(){
		StudentTO to = new StudentTO();
		to.setFirstName("Harivardhan");
		to.setLastName("Pyaram");
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		to.setDeptId(5);
		to.setAdmitSemester("Spring 2013");
		to.setCurrSemester(2015);
		to.setDegreePursuing("Masters");
		to.setEstimateGradutationYear(0);

		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.createStudent(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void createInstructors(){
		InstructorTO to = new InstructorTO();
		to.setFirstName("Sandeep");
		to.setLastName("Boinpally");
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		to.setDeptId("5");
		to.setMeetingHours("6PM");
		to.setNoOfClasses(0);
		to.setOfficeRoom("BBC 213");
		to.setPosition("Professor");

		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.createInstructor(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removeStudents(){
		try {
			service.removeStudentInstructor(15, "S");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removeINstructors(){
		try {
			service.removeStudentInstructor(21, "I");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void createCourses(){
			CoursesTO to = new CoursesTO();
			to.setCourseName("Computer Research");
			to.setDepartmentId(5);
			to.setSection("2");
			to.setCredits(3);

			Gson gson = new Gson();
			String json = gson.toJson(to);
			
			try {
				service.createInstructor(json);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	@Test
	public void removeCourses(){
		try {
			service.removeCourse(3);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void replaceInstructor(){
		try {
			service.replaceIstrucForCourse(22, 7);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void assignInstructor(){
		try {
			service.assignInstructor(21, 6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removeInstrucFromCourses(){
		try {
			service.removeInstructorFromCourse(21,6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayAllStudent(){
		try {
			service.displayAllStudents();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayAllCourse(){
		try {
			service.displayAllCourses();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayAllInstructor(){
		try {
			service.displayAllInstructors();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void editPersonDetail(){
		StudentTO to = new StudentTO();
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.editPersonDetails(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void submitChanges(){
		PersonTO to = new PersonTO();
		to.setPersonId(5);
		to.setChangeRequest("201 S 4th St");
		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.submitChangeRequest(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void editingCourseDetail(){
		CoursesTO to=new CoursesTO();
		to.setRoomNumber("Clark 219");
		to.setClassHours("6.00 PM");
		
		Gson gson = new Gson();
		String json=gson.toJson(to);
		
		try {
			service.editCourseDetails(json, 2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void viewingChangeRequest(){
		try {
			service.viewPendingChangeRequests("pending");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void searchingForClasses() {
		try {
			service.searchForClasses(5, null, null);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void enrollingFor() {
		
		try {
			service.enrollStudent(7, "5,6,4");
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void unenrollingFrom() {
		
		try {
			service.unenrollStudent(1, "4,5,6");
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	@Test
	public void tester()
	{
		try {
			service.getStudentDetails(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Test
	public void makingPayment() {
		
		try {
			Date date = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
			String utilDate = dateFormat.format(date);
			java.sql.Date sqlToday = new java.sql.Date(dateFormat.parse(utilDate).getTime());
			System.out.println("sql Date =" +sqlToday);
			
			TransactionsTO to = new TransactionsTO();
			to.setAmount(1500);
			to.setPersonId(1);
			to.setCreditCardNum("1242353543");
			to.setBankAccountNum("");
			to.setCreditOrDebit("D");
			to.setTransactionDate(sqlToday);
			to.setTime(timeFormat.format(date));
			
			Gson gson = new Gson();
			String json = gson.toJson(to);
			service.makePayment(json);
			
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void gettingLoginDetails(){
		
		try {
			service.getLoginDetails("2", "ds");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	@Test
	public void gettingStudentDetails(){
		try {
			service.getStudentDetails(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void changepass(){
		service.changePassword(6, "hari");
	}
	
	@Test
	public void gettingCourseList(){
		try {
			service.getCourseListForStudent(6, "S");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void gettingCourseListInstruct(){
		try {
			service.getCourseListForStudent(4, "I");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void gettingCharges(){
		try {
			service.getChargesDue(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void searchingClass() throws SQLException{
		service.searchForClasses(5, "data structures", "com");
	}
	
	@Test
	public void gettingTransaction(){
		try {
			service.getTransactions(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void gettingCourseDetails(){
		try {
			service.getCourseDetails(5);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void gettingInstrucDetails(){
		try {
			service.getInstructorDetails(2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void creatingStudent(){
		StudentTO to = new StudentTO();
		to.setFirstName("Harivardhan");
		to.setLastName("Pyaram");
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		to.setDeptId(5);
		to.setAdmitSemester("Spring 2013");
		to.setCurrSemester(2015);
		to.setDegreePursuing("Masters");
		to.setEstimateGradutationYear(0);

		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.createStudent(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void creatingInstructor(){
		InstructorTO to = new InstructorTO();
		to.setFirstName("Sandeep");
		to.setLastName("Boinpally");
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		to.setDeptId("5");
		to.setMeetingHours("6PM");
		to.setNoOfClasses(0);
		to.setOfficeRoom("BBC 213");
		to.setPosition("Professor");

		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.createInstructor(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removingStudent(){
		try {
			service.removeStudentInstructor(15, "S");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removeingInstructor(){
		try {
			service.removeStudentInstructor(21, "I");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void creatingCourse(){
			CoursesTO to = new CoursesTO();
			to.setCourseName("Computer Research");
			to.setDepartmentId(5);
			to.setSection("2");
			to.setCredits(3);

			Gson gson = new Gson();
			String json = gson.toJson(to);
			
			try {
				service.createInstructor(json);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	@Test
	public void removingCourse(){
		try {
			service.removeCourse(3);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void replacingInstruc(){
		try {
			service.replaceIstrucForCourse(22, 7);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void assigningInstruct(){
		try {
			service.assignInstructor(21, 6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removingInstrucFromCourse(){
		try {
			service.removeInstructorFromCourse(21,6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayingAllStudents(){
		try {
			service.displayAllStudents();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayingAllCourses(){
		try {
			service.displayAllCourses();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayingAllInstructors(){
		try {
			service.displayAllInstructors();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void editedPersonDetails(){
		StudentTO to = new StudentTO();
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.editPersonDetails(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void submitedChange(){
		PersonTO to = new PersonTO();
		to.setPersonId(5);
		to.setChangeRequest("201 S 4th St");
		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.submitChangeRequest(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void editedCourseDetails(){
		CoursesTO to=new CoursesTO();
		to.setRoomNumber("Clark 219");
		to.setClassHours("6.00 PM");
		
		Gson gson = new Gson();
		String json=gson.toJson(to);
		
		try {
			service.editCourseDetails(json, 2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void viewedChangeRequests(){
		try {
			service.viewPendingChangeRequests("pending");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void searchedForClass() {
		try {
			service.searchForClasses(5, null, null);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void enrolled() {
		
		try {
			service.enrollStudent(7, "5,6,4");
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void unenrolled() {
		
		try {
			service.unenrollStudent(1, "4,5,6");
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	@Test
	public void testing()
	{
		try {
			service.getStudentDetails(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Test
	public void madePayment() {
		
		try {
			Date date = new Date();
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
			String utilDate = dateFormat.format(date);
			java.sql.Date sqlToday = new java.sql.Date(dateFormat.parse(utilDate).getTime());
			System.out.println("sql Date =" +sqlToday);
			
			TransactionsTO to = new TransactionsTO();
			to.setAmount(1500);
			to.setPersonId(1);
			to.setCreditCardNum("1242353543");
			to.setBankAccountNum("");
			to.setCreditOrDebit("D");
			to.setTransactionDate(sqlToday);
			to.setTime(timeFormat.format(date));
			
			Gson gson = new Gson();
			String json = gson.toJson(to);
			service.makePayment(json);
			
			
		} catch ( Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			fail("Not yet implemented");
		}
		
	}
	
	@Test
	public void gotLoginDetail(){
		
		try {
			service.getLoginDetails("2", "ds");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	@Test
	public void gotStudentDetail(){
		try {
			service.getStudentDetails(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void changedpassword(){
		service.changePassword(6, "hari");
	}
	
	@Test
	public void gotCourses(){
		try {
			service.getCourseListForStudent(6, "S");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void gotCourseListInstructor(){
		try {
			service.getCourseListForStudent(4, "I");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void gotCharge(){
		try {
			service.getChargesDue(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void searchedClasses() throws SQLException{
		service.searchForClasses(5, "data structures", "com");
	}
	
	@Test
	public void gotTransactions(){
		try {
			service.getTransactions(6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void gotCourseDetail(){
		try {
			service.getCourseDetails(5);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void gotInstrucDetail(){
		try {
			service.getInstructorDetails(2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void createdStudents(){
		StudentTO to = new StudentTO();
		to.setFirstName("Harivardhan");
		to.setLastName("Pyaram");
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		to.setDeptId(5);
		to.setAdmitSemester("Spring 2013");
		to.setCurrSemester(2015);
		to.setDegreePursuing("Masters");
		to.setEstimateGradutationYear(0);

		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.createStudent(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void createdInstructors(){
		InstructorTO to = new InstructorTO();
		to.setFirstName("Sandeep");
		to.setLastName("Boinpally");
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		to.setDeptId("5");
		to.setMeetingHours("6PM");
		to.setNoOfClasses(0);
		to.setOfficeRoom("BBC 213");
		to.setPosition("Professor");

		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.createInstructor(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removedStudents(){
		try {
			service.removeStudentInstructor(15, "S");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removedINstructors(){
		try {
			service.removeStudentInstructor(21, "I");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void createdCourses(){
			CoursesTO to = new CoursesTO();
			to.setCourseName("Computer Research");
			to.setDepartmentId(5);
			to.setSection("2");
			to.setCredits(3);

			Gson gson = new Gson();
			String json = gson.toJson(to);
			
			try {
				service.createInstructor(json);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	@Test
	public void removedCourses(){
		try {
			service.removeCourse(3);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void replacedInstructor(){
		try {
			service.replaceIstrucForCourse(22, 7);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void assignedInstructor(){
		try {
			service.assignInstructor(21, 6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void removedInstrucFromCourses(){
		try {
			service.removeInstructorFromCourse(21,6);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayedAllStudent(){
		try {
			service.displayAllStudents();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayedAllCourse(){
		try {
			service.displayAllCourses();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void displayedAllInstructor(){
		try {
			service.displayAllInstructors();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void editingPersonDetail(){
		StudentTO to = new StudentTO();
		to.setAddressLine("201 S 4th St");
		to.setState("CA");
		to.setCity("San Jose");
		to.setZip(95112);
		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.editPersonDetails(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void submittedChanges(){
		PersonTO to = new PersonTO();
		to.setPersonId(5);
		to.setChangeRequest("201 S 4th St");
		Gson gson = new Gson();
		String json = gson.toJson(to);
		
		try {
			service.submitChangeRequest(json);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void editedCourseDetail(){
		CoursesTO to=new CoursesTO();
		to.setRoomNumber("Clark 219");
		to.setClassHours("6.00 PM");
		
		Gson gson = new Gson();
		String json=gson.toJson(to);
		
		try {
			service.editCourseDetails(json, 2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void viewChangeRequested(){
		try {
			service.viewPendingChangeRequests("pending");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
}
