package cs.good.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.good.service.BoardContentService;
import cs.good.service.BoardInsertService;
import cs.good.service.BoardListService;
import cs.good.service.BoardService;

@WebServlet("*.da")
public class Bcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".da"));
		String page = null;
		
		if(com != null && com.trim().equals("insert")) {
			BoardService service = new BoardInsertService();
			service.execute(request, response);
			
			page = "boardlist.jsp";
		}
		if(com != null && com.trim().equals("boardlist")) {
			BoardService service = new BoardListService();
			service.execute(request, response);
			page = "boardlist.jsp";
		}
		if(com != null && com.trim().equals("view")) {
			BoardService service = new BoardContentService();
			service.execute(request, response);
			page = "boardcontent.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
