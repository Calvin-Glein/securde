package org.securde.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.securde.beans.Room;
import org.securde.services.RoomServices;
/**
 * Servlet implementation class ViewRoomsReserved
 */
@WebServlet("/ViewRoomsReserved")
public class ViewRoomsReserved extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewRoomsReserved() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<Room> reservations = RoomServices
				.BorrowedByAccount(Integer.parseInt((request.getSession(false).getAttribute("accountID").toString())));
		request.setAttribute("rooms", reservations);
		request.getRequestDispatcher("/WEB-INF/jsp/userRoomsReserved.jsp").forward(request, response);
	}

}
