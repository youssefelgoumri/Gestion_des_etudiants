package controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.StudentDaoImp;
import model.Person;
import model.Student;

/**
 * Servlet implementation class Modules
 */

@WebServlet(name="Students", urlPatterns={"/Students","/insertStudent","/updateStudent","/deleteStudent","/viewStudent"})
public class Students extends HttpServlet{
      @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 Person person = new Person();
    	 Student student = new Student();
    	 StudentDaoImp studentdaoimp = new StudentDaoImp();
      	
      	
      	
      	String path=request.getServletPath();
      	
      	System.out.println("PATH "+path);
      	if (path.equals("/Students"))
      	{
      		
   
      	}
      	
      	else if (path.equals("/insertStudent"))
      	{
      		String firstname = request.getParameter("firstname");
      		String lastname = request.getParameter("lastname");
          	String username = request.getParameter("username");
          	String password = request.getParameter("password");
          	String email = request.getParameter("email");
          	String phone = request.getParameter("phone");
          	String classe = request.getParameter("classe");
          	String genre = request.getParameter("genre");
         
          	
          	
          	student.setFname(firstname);
          	student.setLname(lastname);
          	student.setUsername(username);
          	student.setPassword(password);
          	student.setEmail(email);
          	student.setPhone(phone);
          	student.setClasse(classe);
          	student.setGenre(genre);
          	student.setRole(false);
          	
      		studentdaoimp.insertEntity(student);
      		RequestDispatcher dd=request.getRequestDispatcher("Students");
      		dd.forward(request, response);
      	}
      	
      	
     
      	
      	else if (path.equals("/updateStudent"))
      	{
 
      		
      		
          	
      		RequestDispatcher dd=request.getRequestDispatcher("Students");
      		dd.forward(request, response);
      
      	}
      	
      	else if (path.equals("/deleteStudent"))
      	{
      		int id= Integer.parseInt(request.getParameter("id_person"));
      		studentdaoimp.removeEntity(id);
      	
      		RequestDispatcher dd=request.getRequestDispatcher("Students");
      		dd.forward(request, response);
      
      	}
      	else if(path.equals("/viewStudent")) {
      		int id= Integer.parseInt(request.getParameter("id_person"));
      		student = studentdaoimp.findEntity(id);
      		List<Module> modules = studentdaoimp.getModules(id);
      		request.setAttribute("student", student);
      		request.setAttribute("modules", modules);
    		this.getServletContext().getRequestDispatcher("/WEB-INF/DetailsStudent.jsp").forward(request, response);

      	}
      	
      	
		this.getServletContext().getRequestDispatcher("/WEB-INF/Students.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

    
}
