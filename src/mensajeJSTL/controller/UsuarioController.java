package mensajeJSTL.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mensajeJPA.dao.UsuarioDao;
import mensajeJPA.entities.Mensaje;
import mensajeJPA.entities.Usuario;

/**
 * Servlet implementation class UsuarioController
 */
@WebServlet("/UsuarioController")
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");        
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(true);
        String accion = request.getParameter("accion");
        PrintWriter out;
        out = response.getWriter();
        switch (accion){
        case "LOGIN":
        	String usuario = request.getParameter("usuario");
            String password = request.getParameter("password");
            UsuarioDao uDao = new UsuarioDao();
            Usuario us = uDao.find(usuario);
            if(us!=null){
            	if(us.getClave().contentEquals(password)){
            		session.setAttribute("userName", usuario); 
            		out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                    out.println("<script>");
                    out.println("$(document).ready(function(){");
                    out.println("swal ('Exito','Ingreso Exitoso','success' )");
                    out.println("});");
                    out.println("</script>");
                    RequestDispatcher rd3=request.getRequestDispatcher("/mensajes.jsp");
        rd3.include(request, response);
            	 //request.getRequestDispatcher("/mensajes.jsp").forward(request, response);
            	 }else{
            		 out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                     out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                     out.println("<script>");
                     out.println("$(document).ready(function(){");
                     out.println("swal ('Error','Credenciales Incorrectas, Intenta Nuevamente','error' )");
                     out.println("});");
                     out.println("</script>");
                     RequestDispatcher rd3=request.getRequestDispatcher("/index.jsp");
         rd3.include(request, response);
            		// request.getRequestDispatcher("/index.jsp").forward(request, response); 
            	 }
            }else{
            	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                out.println("<script>");
                out.println("$(document).ready(function(){");
                out.println("swal ('Error','Credenciales Incorrectas, Intenta Nuevamente','error' )");
                out.println("});");
                out.println("</script>");
                RequestDispatcher rd3=request.getRequestDispatcher("/index.jsp");
    rd3.include(request, response);
            }
        	break;
        case "REGISTRARSE":
        	String usuario2 = request.getParameter("usuario");
            String password2 = request.getParameter("password");
            UsuarioDao uDao2 = new UsuarioDao();
            Usuario us2 = uDao2.find(usuario2);
            if(us2==null){
            	Usuario us3 = new Usuario();
            	us3.setUsuario(usuario2);
            	us3.setClave(password2);
            	uDao2.insertar(us3);
            	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                out.println("<script>");
                out.println("$(document).ready(function(){");
                out.println("swal ('OK','Registro de Usuario, Exitoso','success' )");
                out.println("});");
                out.println("</script>");
                RequestDispatcher rd3=request.getRequestDispatcher("/index.jsp");
                rd3.include(request, response);
            }else{
            	out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
                out.println("<script>");
                out.println("$(document).ready(function(){");
                out.println("swal ('Error','Este Usuario ya esta ocupado, Elija Otro','error' )");
                out.println("});");
                out.println("</script>");
                RequestDispatcher rd3=request.getRequestDispatcher("/registro.jsp");
    rd3.include(request, response);
            }
            
        	break;
        	default:
        		throw new AssertionError();
        }
	}

}
