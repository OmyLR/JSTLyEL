package controladores;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletInit
 */
@WebServlet("/ServletInit")
public class ServletInit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletInit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String tipo = (String) request.getParameter("tipo");
		switch(tipo) {
			case "sin":
				redirect(response, "sin");
				break;
			case "con":
				redirect(response, "con");
				break;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		Object[] objects = new Object[5];
		objects[0] = "cero";
		objects[1] = 1;
		objects[2] = 0.2;
		objects[3] = 'T';
		objects[4] = "cuatro";
		getServletContext().setAttribute("vector", objects);
		System.out.println("Iniciando Servlet");
	}
	
	private void redirect(HttpServletResponse response, String ruta) throws IOException {
		response.sendRedirect(ruta);
	}

}
