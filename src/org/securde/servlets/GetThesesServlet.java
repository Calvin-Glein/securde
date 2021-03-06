package org.securde.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.securde.beans.Material;
import org.securde.services.MaterialServices;

/**
 * Servlet implementation class GetThesesServlet
 */
@WebServlet("/GetThesesServlet")
public class GetThesesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetThesesServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub // TODO Auto-generated method stub
		ArrayList<Material> theses = MaterialServices.getTheses();
		// give clothes.jso the date to display
		request.setAttribute("theses", theses);
		request.getRequestDispatcher("/WEB-INF/jsp/browseThesis.jsp").forward(request, response);

	}

}
