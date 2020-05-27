package mensajeJSTL.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mensajeJPA.dao.MensajeDao;
import mensajeJPA.dao.UsuarioDao;
import mensajeJPA.entities.Mensaje;
import mensajeJPA.entities.Usuario;


/**
 * Servlet implementation class MensajeController
 */
@WebServlet("/MensajeController")
public class MensajeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MensajeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");
        
        
        request.setCharacterEncoding("UTF-8");
        String accion = request.getParameter("accion");
  
            switch (accion){
                case "editar":
                Integer idTxt = Integer.parseInt(request.getParameter("id"));
                MensajeDao cDao = new MensajeDao();
                Mensaje c = cDao.find(idTxt);
                request.setAttribute("carrera", c);
                request.getRequestDispatcher("/carreraedit.jsp").forward(request, response);
                	break;
                case "eliminar":
                	Integer idTxt2 = Integer.parseInt(request.getParameter("id"));
                	MensajeDao cDao2 = new MensajeDao();
                	Mensaje c2 = cDao2.find(idTxt2);
                    cDao2.delete(c2);
                    request.getRequestDispatcher("/mensajes.jsp").forward(request, response);
                	break;
                default:
                    throw new AssertionError();
            }   
            //request.getRequestDispatcher("registrar.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");        
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession(true);
        String accion = request.getParameter("accion");
        switch (accion){
        case "Editar":
        Integer id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String website = request.getParameter("website");
        String mensaje = request.getParameter("mensaje");
MensajeDao cDao = new MensajeDao();
Mensaje c = cDao.find(id);
c.setNombre(nombre);
c.setEmail(email);
c.setWebsite(website);
c.setMensaje(mensaje);
cDao.update(c);
request.getRequestDispatcher("/mensajes.jsp").forward(request, response);
break;
        case "Cancelar":
        	request.getRequestDispatcher("/mensajes.jsp").forward(request, response);
        	break;
        case "Registrar":       	
        	String nombre2 = request.getParameter("nombre");
            String email2 = request.getParameter("email");
            String website2 = request.getParameter("website");
            String mensaje2 = request.getParameter("mensaje");
            String usuarioSession = (String) session.getAttribute("userName");
        	
        	UsuarioDao uDao = new UsuarioDao();
    		Usuario usuarioBean = uDao.find(usuarioSession);
    		Mensaje m = new Mensaje();
        	m.setUsuarioBean(usuarioBean);
            m.setNombre(nombre2);
            m.setEmail(email2);
            m.setWebsite(website2);
            m.setMensaje(mensaje2); 
            MensajeDao mDao = new MensajeDao();
            mDao.insertar(m);   
            request.setAttribute("msgResultado", "El mensaje ha sido creado correctamente");
        	request.getRequestDispatcher("/mensajes.jsp").forward(request, response);
        	break;
        	
        	default:
        		  throw new AssertionError();
        }
	}

}
