package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ChangeFilter {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String fill = null;
		fill = request.getParameter("fill");
		out.println(fill);
		
		//request.getRequestDispatcher("/admin_accepthosts.jsp?filter=fill").forward(request, response);
		response.sendRedirect("http://localhost:8081/collab_ride/admin_accepthosts.jsp?filter="+fill);
	}
	
}
