package servlet;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Persona;
import logic.Login;

/**
 * Servlet implementation class Signin
 */
@WebServlet({ "/signin", "/SIGNIN", "/Signin", "/SignIn", "/signIn" })
public class Signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Persona per = new Persona();
		Login ctrlLogin = new Login();
		
		try {
			
			if(request.getParameter("email") != null && request.getParameter("password") != null) {
				
				String email = request.getParameter("email");
				String password = request.getParameter("password");
				
				per.setEmail(email);
				per.setPassword(password);
				
				per = ctrlLogin.validate(per);
				
				 
				
				if (per == null) {
					// Error
					response.sendRedirect("index.html");
				}
				else {
					request.getSession().invalidate();
					HttpSession session = request.getSession(true);
					session.setAttribute("usuario", per);
					LinkedList<Persona> personas = ctrlLogin.getAll();
					session.setAttribute("listaPersonas", personas);
					request.getRequestDispatcher("/menu.jsp").forward(request, response); // redireccionamos de un servlet a un jsp
					
					
					
				}
				
			}
			
			
		}
		finally {
			
		}
		
		// aqui se debe validar que los datos hayan sido ingresados
		
		
		
//		
//		LinkedList<Persona> personas = ctrlLogin.getAll();
//		
//		
//		request.getSession().setAttribute("usuario", per); // el usamos el getSession para que los datos permanezcan durante la sesion del usuario
//		request.setAttribute("listaPersonas", personas); // la ista de personas no la mantenemos en la sesion sino unicamente en la request
//		
//		request.getRequestDispatcher("WEB-INF/UserManagement.jsp").forward(request, response);
//		
		
		
//		response.getWriter().append("Bienvenido ").append(per.getNombre()).append(per.getApellido());
		
//		response.getWriter().append("Email: ").append(email)
//		.append(" - Pass: ").append(password)
//		.append("  Served at: ").append(request.getContextPath());
	}
}
