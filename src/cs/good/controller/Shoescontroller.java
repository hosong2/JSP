package cs.good.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cs.good.service.SignUpCheck;
import cs.good.service.SignUpInsertService;
import cs.good.service.SignUpListService;
import cs.good.service.SignUpService;

@WebServlet("*.doShoes")
public class Shoescontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".do"));
		String page = null;
		HttpSession session = request.getSession();
		if(com != null && com.trim().equals("list")) {
			SignUpService service = new SignUpListService();
			service.execute(request, response);
			
			page = "list.jsp";
		}
		if(com != null && com.trim().equals("insert")) {
			SignUpService service = new SignUpInsertService();
			service.execute(request, response);
			page = "main.jsp";
		}
		if(com != null && com.trim().equals("insert")) {
			page = "signUp.jsp";
		}
		if(com != null && com.trim().equals("main")) {
			page = "main.jsp";
		}
		
		if(com != null && com.trim().equals("login")) {
			SignUpCheck check = new SignUpCheck();
			check.execute(request, response);
				
			if(session.getAttribute("id")!= null) {
				page="main.jsp";
			}else {
				page="login.jsp";
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
