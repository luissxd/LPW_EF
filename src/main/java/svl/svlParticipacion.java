package svl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class svlParticipacion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public svlParticipacion() {
		super();
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		dao.OnpeDAO daoOnpe = new dao.OnpeDAO();

	
		
		String id = request.getParameter("id");
		
		String sDPD=null,sAmbito=null;
		Object data = null,totales=null;

		if (id != null) {			
			String aID[]= id.split(",");
			boolean bNacional=aID[0].equals("Nacional");
			
			
			if(aID.length==1) sDPD=bNacional ? "DEPARTAMENTO":"CONTINENTE";
			else if (aID.length==2) sDPD=bNacional ? "PROVINCIA":"PAIS";
			else if (aID.length==3) sDPD=bNacional ? "DISTRITO":"CIUDAD";
			
			
			
			if(aID.length==1) data = daoOnpe.getVotos(bNacional ? 1 : 26, bNacional ? 25 : 30);
			else if (aID.length==2) data = daoOnpe.getVotosDepartamento( aID[1]);
			else if (aID.length==3) data = daoOnpe.getVotosProvincia( aID[2]);
			
			sAmbito="Ambito: "+ aID[0];
			if(aID.length>1) sAmbito+="<br/>" + (bNacional?"Departamento":"Continente")+": "+aID[1];
			if(aID.length>2) sAmbito+="<br/>" + (bNacional?"Provincia":"País")+": "+aID[2];
			if(aID.length>3) sAmbito+="<br/>" + (bNacional?"Distrito":"Ciudad")+": "+aID[3];
		}

		session.setAttribute("id", id);
		session.setAttribute("DPD", sDPD);
		session.setAttribute("ambito", sAmbito);
		session.setAttribute("data", data);
		session.setAttribute("totales", totales);

		response.sendRedirect("participacion.jsp");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

}
