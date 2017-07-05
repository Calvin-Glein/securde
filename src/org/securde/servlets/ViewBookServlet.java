package org.securde.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.securde.beans.Material;
import org.securde.beans.Review;
import org.securde.services.MaterialServices;
import org.securde.services.ReviewServices;

/**
 * Servlet implementation class ViewBookServlet
 */
@WebServlet("/ViewBookServlet")
public class ViewBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewBookServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		int materialID = Integer.parseInt(request.getParameter("material_id"));

		System.out.println("Mateerialzadsdaaad: " + materialID);
		Material m = MaterialServices.getMaterialData(materialID);

		System.out.println("title: " + m.getTitle());
		System.out.println("author: " + m.getAuthor());
		System.out.println("year: " + m.getYear());
		System.out.println("tags: " + m.getTags());
		System.out.println("status: " + m.getStatus());
		
		
	
		
		ArrayList<Review> reviews = ReviewServices.getReviews(materialID);
		
		
		request.setAttribute("reviews", reviews);

		request.setAttribute("material", m);
		request.getRequestDispatcher("viewMaterial.jsp").forward(request, response);
	}

}
